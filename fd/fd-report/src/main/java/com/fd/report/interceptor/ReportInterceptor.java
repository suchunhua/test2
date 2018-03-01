package com.fd.report.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.fd.core.constant.Constant;
import com.fd.core.entity.CollInfo;
import com.fd.core.entity.Customer;
import com.fd.core.utils.CoreServletUtils;
import com.fd.tools.web.ServletUtils;

/**
 * 报告查询拦截器,必须是本人的报告才可以查询
 * 
 * @author zengxiaohui
 * @date 2017年3月28日 下午1:13:24
 * @version 1.0
 */
public class ReportInterceptor extends HandlerInterceptorAdapter {

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		Customer customerAccount = CoreServletUtils.getCustomerAccountFromSession();
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		boolean isAuthCollInfo = (collInfo != null && customerAccount.getCustomerCardId().equals(collInfo.getCardId()));
		if (isAuthCollInfo) {
			return true;
		} else {
			request.getRequestDispatcher("/report/main2?urlType=main2").forward(request, response);
			return false;
		}
	}
}
