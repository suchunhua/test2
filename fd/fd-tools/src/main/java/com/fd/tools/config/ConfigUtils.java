package com.fd.tools.config;

import java.util.ResourceBundle;

/**
 * @author zengxiaohui
 * @date 2017年3月9日 下午3:55:48
 * @version 1.0
 */
public class ConfigUtils {

	private static final ResourceBundle configResource = ResourceBundle.getBundle("config");

	/**
	 * 获取配置文件内容(config.properties)
	 * 
	 * @param <T>
	 *            类的泛型
	 * @param key
	 *            参数key
	 * @return 返回key的value
	 */
	@SuppressWarnings("unchecked")
	public static <T> T getConfig(String key) {
		return (T) configResource.getString(key);
	}

	/**
	 * 根据传入的fileName(不含文件后缀)，key取配置的值
	 * 
	 * @param <T>
	 *            类的泛型
	 * @param fileName
	 *            文件名字
	 * @param key
	 *            文件中key
	 * @return 对于key的值
	 */
	@SuppressWarnings("unchecked")
	public static <T> T getResource(String fileName, String key) {
		ResourceBundle resource = ResourceBundle.getBundle(fileName);
		return (T) resource.getString(key);
	}

}
