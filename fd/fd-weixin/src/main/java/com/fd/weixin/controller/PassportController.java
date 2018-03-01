package com.fd.weixin.controller;

import java.net.URLEncoder;
import java.util.Map;
import java.util.regex.Pattern;

import org.apache.commons.lang3.RandomStringUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fd.core.constant.Constant;
import com.fd.core.entity.CollInfo;
import com.fd.core.entity.Customer;
import com.fd.core.entity.CustomerWeixin;
import com.fd.core.service.CollInfoService;
import com.fd.core.service.CustomerService;
import com.fd.tools.config.ConfigUtils;
import com.fd.tools.crawler.CrawlerUtils;
import com.fd.tools.email.EmailUtils;
import com.fd.tools.utils.ResultUtils;
import com.fd.tools.utils.SmsUtil;
import com.fd.tools.web.ServletUtils;
import com.fd.weixin.vo.HeaderVo;

import net.sf.json.JSONObject;

@Controller
@RequestMapping(value = "/")
public class PassportController {

	@Autowired
	private CustomerService customerService;

	@Autowired
	private CollInfoService collInfoService;

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String loginGet() {
		return "passport/login";
	}

	@SuppressWarnings("deprecation")
	@RequestMapping(value = "wxLogin", method = RequestMethod.GET)
	public String wxLogin() {
		// 回调地址
		String backUrl = ServletUtils.getDomainAndProjectPath() + "/wxAuthCallBack";
		String url = "https://open.weixin.qq.com/connect/oauth2/authorize?appid="
				+ ConfigUtils.getConfig("weixin.APPID").toString() + "&redirect_uri=" + URLEncoder.encode(backUrl)
				+ "&response_type=code" + "&scope=snsapi_userinfo" + "&state=STATE#wechat_redirect";
		return "redirect:" + url;
	}

	@RequestMapping(value = "wxAuthCallBack", method = RequestMethod.GET)
	public String wxAuthCallBack(String code) {
		String url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid="
				+ ConfigUtils.getConfig("weixin.APPID").toString() + "&secret="
				+ ConfigUtils.getConfig("weixin.APPSECRET").toString() + "&code=" + code
				+ "&grant_type=authorization_code";
		JSONObject jsonObject = CrawlerUtils.doGetJson(url);
		String openid = jsonObject.getString("openid");
		String token = jsonObject.getString("access_token");
		String infoUrl = "https://api.weixin.qq.com/sns/userinfo?access_token=" + token + "&openid=" + openid
				+ "&lang=zh_CN";
		JSONObject userInfo = CrawlerUtils.doGetJson(infoUrl);

		/*
		 * 这段代码是微信授权后获得的内容 String jsonString =
		 * "{\"openid\":\"o1UKsuPFEGJFwxNeNaGpbaDPKSyM\", \"nickname\":\"旧事『』\", \"sex\":2, \"language\":\"zh_CN\", \"city\":\"南昌\", \"province\":\"江西\", \"country\":\"中国\", \"headimgurl\":\"http://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eomia5tEXMOJpn19V6LTPQRzp3PzLpRQppbK9OnVBNw3ykfDVHEoZEWJKSib9c2DrMKjEicxkH2PS92w/0\", \"privilege\":[] }"
		 * ; JSONObject userInfo = JSONObject.fromObject(jsonString);
		 */

		Map<String, Object> resultMap = customerService.weixinBind(userInfo);
		if (ResultUtils.getFlag(resultMap)) {
			return customerLogin((Customer) ResultUtils.getData(resultMap));
		} else {
			ServletUtils.setSessionAttribute(Constant.CUSTOMER_WEIXIN_INFO,
					(CustomerWeixin) ResultUtils.getData(resultMap));
			return "passport/login";
		}
	}

	// 退出
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout() {
		ServletUtils.removeSessionAttribute(Constant.LOGIN_CA);
		ServletUtils.removeSessionAttribute(Constant.COLLINFO);
		ServletUtils.getSession().invalidate();
		if (ConfigUtils.getConfig("cas.server.logout") != null
				&& !"".equals(ConfigUtils.getConfig("cas.server.logout"))) {
			String redirectUrl = "redirect:" + ConfigUtils.getConfig("cas.server.logout") + "?service="
					+ ServletUtils.getDomainAndProjectPath();
			return redirectUrl;
		} else {
			return "passport/login";
		}
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(String username, String password, ModelMap model) {
		if (StringUtils.isBlank(username)) {
			model.put("msg", "用户名不能为空");
			return "passport/login";
		}
		if (StringUtils.isEmpty(password)) {
			model.put("msg", "密码不能为空");
			return "passport/login";
		}
		Customer customer = customerService.getCustomerByAccountAndPassword(username, password);
		if (customer != null) {
			Map<String, Object> resultMap = customerService.accountBindWeixin(customer);
			if (ResultUtils.getFlag(resultMap)) {
				return customerLogin(customer);
			} else {
				model.put("msg", ResultUtils.getMsg(resultMap));
				return "passport/login";
			}
		} else {
			model.put("msg", "登录失败,请检查用户名或密码");
			return "passport/login";
		}
	}

	// 已知客户帐号和密码时登录功能
	public String customerLogin(Customer customer) {
		ServletUtils.setSessionAttribute(Constant.LOGIN_CA, customer);
		CollInfo collInfo = collInfoService.getCollInfoByParams(customer.getCustomerCardId(), null);
		ServletUtils.setSessionAttribute(Constant.COLLINFO, collInfo);
		customerService.addLoginLog((long) customer.getCustomerId(), ServletUtils.getRemoteAddr(),
				ServletUtils.getUserAgent());
		if (ConfigUtils.getConfig("cas.server.login") != null
				&& !"".equals(ConfigUtils.getConfig("cas.server.login"))) {
			String redirectUrl = "redirect:" + ConfigUtils.getConfig("cas.server.login") + "?username="
					+ customer.getCustomerAccount() + "&password=" + customer.getCustomerPassword()
					+ "&rememberMe=true&auto=true&service=" + ServletUtils.getDomainAndProjectPath()
					+ "exome/home?urlactive=home";
			return redirectUrl;
		} else {
			return "redirect:exome/home?urlactive=home";
		}
	}

	@RequestMapping(value = "findPassword", method = RequestMethod.GET)
	public String findPassword(ModelMap model) {
		HeaderVo headerVo = new HeaderVo("title", "", "", "找回密码", true);
		model.put("headerVo", headerVo);
		return "passport/find_password";
	}

	@RequestMapping(value = "sendCode", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> sendCode(String useVerifyNumber) {
		if (StringUtils.isBlank(useVerifyNumber)) {
			return ResultUtils.buildFlagAndMsgMap(false, "请输入身份证号或手机号或邮箱");
		}
		Customer customer = customerService.getCustomerByAccountAndPassword(useVerifyNumber, null);
		if (customer != null) {
			String code = RandomStringUtils.randomNumeric(6);
			CollInfo collInfo = collInfoService.getCollInfoByParams(customer.getCustomerCardId(), null);
			if (!StringUtils.isBlank(collInfo.getPostemail())) {
				EmailUtils.sendEmail(collInfo.getPostemail(), "找回密码", "尊敬的客户，您好，您的验证码是：" + code);
			}
			if (!StringUtils.isBlank(customer.getCustomerTele())) {
				SmsUtil.alidayuSendCheckCode(customer.getCustomerTele(), code);
			}
			ServletUtils.getSession().setAttribute("code", code);
			return ResultUtils.buildFlagAndMsgMap(true, "");
		} else {
			return ResultUtils.buildFlagAndMsgMap(false, "不是有效帐号，请重新输入");
		}
	}

	@RequestMapping(value = "findPasswordTwo", method = RequestMethod.POST)
	public String findPasswordTwo(String useVerifyNumber, String code, ModelMap model) {
		HeaderVo headerVo = new HeaderVo("title", "", "", "找回密码", true);
		model.put("headerVo", headerVo);
		if (StringUtils.isBlank(useVerifyNumber)) {
			model.put("msg", "请输入身份证号或手机号或邮箱");
			return "passport/find_password";
		}
		if (StringUtils.isBlank(useVerifyNumber)) {
			model.put("msg", "请输入验证码");
			return "passport/find_password";
		}
		Object codeFromSession = ServletUtils.getSessionAttribute("code");
		if (codeFromSession != null) {
			if (code.equals(codeFromSession.toString())) {
				ServletUtils.getSession().setAttribute("useVerifyNumber", useVerifyNumber);
				return "passport/find_password_two";
			} else {
				model.put("msg", "验证码错误");
				return "passport/find_password";
			}
		} else {
			model.put("msg", "验证码已过期请重新获取");
			return "passport/find_password";
		}
	}

	@RequestMapping(value = "updatePassword", method = RequestMethod.POST)
	public String updatePassword(String password, ModelMap model) {
		HeaderVo headerVo = new HeaderVo("title", "", "", "找回密码", true);
		model.put("headerVo", headerVo);
		String useVerifyNumber = (String) ServletUtils.getSessionAttribute("useVerifyNumber");
		if (StringUtils.isBlank(password) || !Pattern.compile("^\\w{6,20}$").matcher(password).find()) {
			model.put("msg", "密码为空或者格式不对，请重新输入");
			return "passport/find_password_two";
		}
		if (!StringUtils.isBlank(useVerifyNumber)) {
			Customer customer = customerService.getCustomerByAccountAndPassword(useVerifyNumber, null);
			customer.setCustomerPassword(password);
			customerService.updateByPrimaryKeySelective(customer);
			ServletUtils.removeSessionAttribute("code");
			return "passport/login";
		} else {
			model.put("msg", "帐号认证失效，请重新认证");
			return "passport/find_password";
		}
	}

}
