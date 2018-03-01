package com.fd.report.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jasig.cas.client.util.AssertionHolder;
import org.jasig.cas.client.validation.Assertion;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.fd.core.constant.Constant;
import com.fd.core.entity.Customer;
import com.fd.core.utils.CoreServletUtils;
import com.fd.tools.transfrom.TransfromUtils;
import com.fd.tools.web.ServletUtils;

/**
 * 登录拦截器，必须登录后才能访问
 * 
 * @author zengxiaohui
 * @date 2017年3月2日 下午4:53:02
 * @version 1.0
 */
public class SessionInterceptor extends HandlerInterceptorAdapter {

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String domainAndProjectPath = ServletUtils.getDomainAndProjectPath();
		Customer customerAccount = null;
		
		Assertion assertion = AssertionHolder.getAssertion();  
        if(assertion!=null){
        	customerAccount = new Customer();
        	TransfromUtils.map2Bean(assertion.getPrincipal().getAttributes(), customerAccount);
        	ServletUtils.setSessionAttribute(Constant.LOGIN_CA, customerAccount);
        }else{
        	customerAccount = CoreServletUtils.getCustomerAccountFromSession();
        }
		
		if (customerAccount == null) {
			// 如果是ajax请求响应头会有，x-requested-with
			if (request.getHeader("x-requested-with") != null
					&& request.getHeader("x-requested-with").equalsIgnoreCase("XMLHttpRequest")) {
				response.setHeader("sessionStatus", "timeout");// 在响应头设置session状态
			} else {
				response.sendRedirect(domainAndProjectPath);
			}
			return false;
		} else {
			return true;
		}
	}
}
