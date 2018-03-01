package com.fd.weixin.intercepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jasig.cas.client.util.AssertionHolder;
import org.jasig.cas.client.validation.Assertion;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.fd.core.constant.Constant;
import com.fd.core.entity.CollInfo;
import com.fd.core.entity.Customer;
import com.fd.core.service.CollInfoService;
import com.fd.core.utils.CoreServletUtils;
import com.fd.tools.transfrom.TransfromUtils;
import com.fd.tools.web.ServletUtils;

/**
 * 登录拦截器，必须登录后才能访问
 * 
 * @author zengxiaohui
 * @date 2017年6月1日 下午3:40:02
 * @version 1.0
 */
public class SessionInterceptor extends HandlerInterceptorAdapter {

	@Autowired
	private CollInfoService collInfoService;

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String domainAndProjectPath = ServletUtils.getDomainAndProjectPath();
		Customer customerAccount = null;
		CollInfo collInfo = null;

		Assertion assertion = AssertionHolder.getAssertion();
		if (assertion != null) {
			customerAccount = new Customer();
			TransfromUtils.map2Bean(assertion.getPrincipal().getAttributes(), customerAccount);
			collInfo = collInfoService.getCollInfoByParams(customerAccount.getCustomerCardId(), null);
			ServletUtils.setSessionAttribute(Constant.LOGIN_CA, customerAccount);
			ServletUtils.setSessionAttribute(Constant.COLLINFO, collInfo);
		} else {
			customerAccount = CoreServletUtils.getCustomerAccountFromSession();
			collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		}

		if (customerAccount != null && collInfo != null) {
			return true;
		} else {
			// 如果是ajax请求响应头会有，x-requested-with
			if (request.getHeader("x-requested-with") != null
					&& request.getHeader("x-requested-with").equalsIgnoreCase("XMLHttpRequest")) {
				response.setHeader("sessionStatus", "timeout");// 在响应头设置session状态
			} else {
				response.sendRedirect(domainAndProjectPath);
			}
			return false;
		}
	}
}
