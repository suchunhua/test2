package com.fd.tools.web;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

/**
 * Spring ApplicationContext工具类 获取web应用的applicationContext及其管理的bean
 * 
 * @author zengxiaohui
 * @date 2017年6月23日 上午11:21:28
 * @version 1.0
 */
@Component
public class ApplicationContextUtil implements ApplicationContextAware {

	private static ApplicationContext applicationContext = null;

	/**
	 * @see org.springframework.context.ApplicationContextAware#setApplicationContext(org.springframework.context.ApplicationContext)
	 */
	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		if (ApplicationContextUtil.applicationContext == null) {
			ApplicationContextUtil.applicationContext = applicationContext;
		}

	}

	/**
	 * 获取applicationContext
	 * 
	 * @return applicationContext
	 */
	public static ApplicationContext getApplicationContext() {
		return applicationContext;
	}

	/**
	 * 获取applicationContext中的bean
	 * 
	 * @param <T>
	 *            类的泛型
	 * @param name
	 *            得到的名字
	 * @param requiredType
	 *            bean的类类型
	 * @return 返回bean
	 */
	public static <T> T getBean(String name, Class<T> requiredType) {
		return getApplicationContext().getBean(name, requiredType);
	}
}
