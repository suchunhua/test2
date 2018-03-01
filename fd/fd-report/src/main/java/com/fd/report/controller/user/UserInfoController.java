package com.fd.report.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fd.core.constant.Constant;
import com.fd.core.entity.Customer;
import com.fd.core.service.CustomerService;
import com.fd.tools.config.ConfigUtils;
import com.fd.tools.web.ServletUtils;

/**
 * @author zengxiaohui
 * @date 2017年2月18日
 * @version 1.0
 * @Copyright
 */
@Controller
@RequestMapping(value = "user")
public class UserInfoController {

	@Autowired
	private CustomerService customerService;

	// 注销退出
	@RequestMapping(value = "logOff", method = RequestMethod.GET)
	public String logOff() {
		ServletUtils.removeSessionAttribute(Constant.LOGIN_CA);
		ServletUtils.removeSessionAttribute("collInfo");
		ServletUtils.getSession().invalidate();
		if(ConfigUtils.getConfig("cas.server.logout") != null && !"".equals(ConfigUtils.getConfig("cas.server.logout"))){
			String redirectUrl = "redirect:"+ConfigUtils.getConfig("cas.server.logout")+"?service="+ServletUtils.getDomainAndProjectPath();
			return redirectUrl;
		}else{
			return "login";
		}
	}

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String loginGet() {
		ServletUtils.removeSessionAttribute("collInfo"); // 退出报告，清除报告内容
		return "main";
	}

	@RequestMapping(value = "main",method=RequestMethod.GET)
	public String main(){
		return "main";
	}
		
	/**
	 * 登录
	 * 
	 * @param userAccount
	 * @param userPassword
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(String userAccount, String userPassword, ModelMap model) {
		if ("".equals(userAccount) || userAccount == "") { // 判断用户名是否为空
			model.put("msg", "用户名不能为空");
			return "login";
		} else {
			if ("".equals(userPassword) || userPassword == "") { // 判断密码是否为空
				model.put("msg", "密码不能为空");
				return "login";
			} else {
				Customer customer = customerService.getCustomerByAccountAndPassword(userAccount, userPassword);
				if (customer != null) {
					ServletUtils.setSessionAttribute(Constant.LOGIN_CA, customer);
					customerService.addLoginLog((long) customer.getCustomerId(), ServletUtils.getRemoteAddr(),
							ServletUtils.getUserAgent());
					if(ConfigUtils.getConfig("cas.server.login") != null && !"".equals(ConfigUtils.getConfig("cas.server.login"))){
						String redirectUrl = "redirect:"+ConfigUtils.getConfig("cas.server.login")+"?username="
								+ customer.getCustomerAccount() + "&password=" + customer.getCustomerPassword()
								+ "&rememberMe=true&auto=true&service=" + ServletUtils.getDomainAndProjectPath()
								+ "user/main";
						return redirectUrl;
					}else{
						return "main";
					}
					
				} else {
					model.put("msg", "登录失败,请检查用户名或密码");
					return "login";
				}

			}
		}
	}

}
