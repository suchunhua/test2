package com.fd.weixin.controller.customer;

import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fd.core.constant.Constant;
import com.fd.core.entity.CollInfo;
import com.fd.core.entity.Customer;
import com.fd.core.entity.CustomerReservation;
import com.fd.core.service.CollInfoService;
import com.fd.core.service.CustomerService;
import com.fd.core.utils.CoreServletUtils;
import com.fd.tools.datahandle.StringOptUtils;
import com.fd.tools.transfrom.ParseUtils;
import com.fd.tools.utils.ResultUtils;
import com.fd.tools.web.ServletUtils;
import com.fd.weixin.vo.HeaderVo;

@Controller
@RequestMapping(value = "customer")
public class CustomerController {

	@Autowired
	private CollInfoService collInfoService; // 收样信息服务

	@Autowired
	private CustomerService customerService;

	@RequestMapping(value = "myOffice", method = RequestMethod.GET)
	public String myOffice(ModelMap model) {
		HeaderVo headerVo = new HeaderVo("title header-green-background clear-border", "", "", "个人中心", true);
		headerVo.setLeftIcon("icon-fd-back-white");
		headerVo.setTitleColor("#fff");
		model.put("headerVo", headerVo);
		return "customer/my_office";
	}

	@RequestMapping(value = "security", method = RequestMethod.GET)
	public String security(ModelMap model) {
		HeaderVo headerVo = new HeaderVo("title", "", "", "帐号与安全", true);
		model.put("headerVo", headerVo);
		return "customer/security";
	}

	@RequestMapping(value = "reportProgress", method = RequestMethod.GET)
	public String reportProgress(ModelMap model) {
		HeaderVo headerVo = new HeaderVo("title", "", "", "报告进度", true);
		model.put("headerVo", headerVo);
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		String reportCheckTime = collInfo.getReportCheckTime();
		if (reportCheckTime != null && !"".equals(reportCheckTime)) {
			collInfo.getReportCheckTime();
			Calendar c = Calendar.getInstance();// 获得一个日历的实例
			c.setTime(ParseUtils.strToDate(collInfo.getReportCheckTime()));// 设置日历时间
			c.add(Calendar.MONTH, 6);// 在日历的月份上增加6个月
			model.put("nextUpdateTime", c.getTime());
		}
		// 查询这个报告是否预约
		CustomerReservation customerReservation = new CustomerReservation();
		customerReservation.setCollinfoId((long) collInfo.getCollInfoId());
		model.put("customerReservation", customerService.getCustomerReservation(customerReservation));
		return "customer/progress";
	}

	@RequestMapping(value = "baseInfo", method = RequestMethod.GET)
	public String baseInfo(ModelMap model) {
		HeaderVo headerVo = new HeaderVo("title", "", "", "基本信息", true);
		model.put("headerVo", headerVo);
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		// 口腔上皮细胞/血细胞归属于gDNA，血液上清液归属于cfDNA，FFPE就是FFPE
		String sampKind1 = "其它";
		if (StringUtils.contains(collInfo.getSampType(), "外周血")) {
			sampKind1 = "外周血";
		}
		if (StringUtils.contains(collInfo.getSampType(), "口腔上皮")) {
			sampKind1 = "口腔上皮";
		}
		// 判断采样日期是不是日期形式
		if (StringOptUtils.isValidDate(collInfo.getSampCollTime())) {
			model.put("isValidDate", true);
		}
		model.put("sampKind1", sampKind1);
		model.put("comSize", collInfoService.selectComSizeByCollInfoId(collInfo.getCollInfoId()));
		return "customer/base_info";
	}

	@RequestMapping(value = "editBaseInfo", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> editBaseInfo(CollInfo collInfo) {
		CollInfo collInfoFormSession = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		collInfo.setCollInfoId(collInfoFormSession.getCollInfoId());
		if (collInfoService.updateCollInfoByCollInfoId(collInfo) > 0) {
			ServletUtils.setSessionAttribute(Constant.COLLINFO, collInfoService
					.getCollInfoByParams(CoreServletUtils.getCustomerAccountFromSession().getCustomerCardId(), null));
			return ResultUtils.buildFlagAndMsgMap(true, "");
		} else {
			return ResultUtils.buildFlagAndMsgMap(false, "修改失败");
		}
	}

	@RequestMapping(value = "syntrophusList", method = RequestMethod.GET)
	public String syntrophusList(ModelMap model) {
		HeaderVo headerVo = new HeaderVo("title", "", "", "遗传病列表", true);
		model.put("headerVo", headerVo);
		return "customer/syntrophus_list";
	}

	@RequestMapping(value = "showEditCustomer", method = RequestMethod.GET)
	public String showEditCustomer(String showChange, ModelMap model) {
		HeaderVo headerVo = null;
		switch (showChange) {
		case "phone":
			headerVo = new HeaderVo("title", "", "", "手机号", true);
			break;
		case "qq":
			headerVo = new HeaderVo("title", "", "", "qq号", true);
			break;
		case "email":
			headerVo = new HeaderVo("title", "", "", "邮箱", true);
			break;
		default:
			break;
		}
		model.put("headerVo", headerVo);
		return "customer/show_edit";
	}

	@RequestMapping(value = "editCustomer", method = RequestMethod.GET)
	public String editCustomer(String title, ModelMap model) {
		model.put("title", title);
		return "customer/edit_customer";
	}

	@RequestMapping(value = "saveCustomer", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> saveCustomer(String phone, String qq, String email) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		Customer customer = CoreServletUtils.getCustomerAccountFromSession();
		if (phone != null && !"".equals(phone)) {
			if (StringOptUtils.isMobile(phone)) {
				collInfo.setTele(phone);
				customer.setCustomerTele(phone);
			} else {
				resultMap.put("flag", false);
				resultMap.put("error", "手机号格式不对");
				return resultMap;
			}
		}
		if (qq != null && !"".equals(qq)) {
			if (StringOptUtils.isQQCorrect(qq)) {
				customer.setQq(qq);
			} else {
				resultMap.put("flag", false);
				resultMap.put("error", "不是有效qq号");
				return resultMap;
			}
		}
		if (email != null && !"".equals(email)) {
			if (StringOptUtils.isEmail(email)) {
				collInfo.setPostemail(email);
			} else {
				resultMap.put("flag", false);
				resultMap.put("error", "邮箱格式不对");
				return resultMap;
			}

		}
		if (collInfoService.updateCollInfoByCollInfoId(collInfo) > 0
				&& customerService.updateByPrimaryKeySelective(customer) > 0) {
			ServletUtils.setSessionAttribute(Constant.LOGIN_CA, customer);
			ServletUtils.setSessionAttribute(Constant.COLLINFO, collInfo);
			resultMap.put("flag", true);
		} else {
			resultMap.put("flag", false);
			resultMap.put("error", "修改失败");
		}
		return resultMap;
	}

}
