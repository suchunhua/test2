package com.fd.report.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fd.core.entity.Customer;
import com.fd.core.service.CustomerService;
import com.fd.core.utils.CoreServletUtils;

/**
 * @author zengxiaohui
 * @date 2017年2月19日
 * @version 1.0
 * @Copyright
 */
@Controller
@RequestMapping(value = "admin")
public class AdminInfoController {

	@Autowired
	private CustomerService userPojoService; // 登录用户服务

	@RequestMapping(value = "search")
	public String search(ModelMap model) {
		Customer customer = CoreServletUtils.getCustomerAccountFromSession();
		model.put("customer", customer);
		return "admin_search";
	}

	@RequestMapping(value = "update")
	public String update(String userPassword, String userPassword1, String userPassword2, ModelMap model) {
		Customer customer = CoreServletUtils.getCustomerAccountFromSession();
		if (customer.getCustomerPassword().equals(userPassword) && (userPassword1.equals(userPassword2))) {
			customer.setCustomerPassword(userPassword1);
			userPojoService.updateByPrimaryKeySelective(customer); // 用户更新--返回结果a
			model.put("msg", "修改成功");
		} else if (!customer.getCustomerPassword().equals(userPassword)) {
			model.put("msg", "原密码输入错误");
		} else if (!userPassword1.equals(userPassword2)) {
			model.put("msg", "新密码二次输入不同");
		}
		return "admin_success";
	}
}
