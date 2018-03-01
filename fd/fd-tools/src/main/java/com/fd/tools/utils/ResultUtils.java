package com.fd.tools.utils;

import java.util.HashMap;
import java.util.Map;

public class ResultUtils {

	/** 内部使用的返回标识，flag=true、false */
	public static final String FLAG = "flag";

	/** 内部使用的返回提示信息 */
	public static final String MSG = "msg";

	/** 内部使用的返回内容 */
	public static final String DATA = "data";

	/**
	 * 构造返回结果，flag，msg
	 * 
	 * @param flag
	 *            标识
	 * @param msg
	 *            信息提示
	 * @return 返回resultMap
	 */
	public static Map<String, Object> buildFlagAndMsgMap(boolean flag, String msg) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put(FLAG, flag);
		resultMap.put(MSG, msg);
		return resultMap;
	}

	/**
	 * 构造返回结果，flag，data
	 * 
	 * @param flag
	 *            标识
	 * @param data
	 *            信息
	 * @return 返回resultMap
	 */
	public static Map<String, Object> buildFlagAndDataMap(boolean flag, Object data) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put(FLAG, flag);
		resultMap.put(DATA, data);
		return resultMap;
	}

	/**
	 * 获取flag标识
	 * 
	 * @param resultMap
	 *            参数为resultMap
	 * @return flag为boolean
	 */
	public static Boolean getFlag(Map<String, Object> resultMap) {
		Object flagObj = resultMap.get(FLAG);
		if (flagObj != null && flagObj instanceof Boolean) {
			return (Boolean) flagObj;
		} else {
			return false;
		}
	}

	/**
	 * 获取msg
	 *
	 * @param resultMap
	 *            参数为resultMap
	 * @return 返回信息msg
	 */
	public static String getMsg(Map<String, Object> resultMap) {
		Object msgObj = resultMap.get(MSG);
		if (msgObj != null && msgObj instanceof String) {
			return (String) msgObj;
		} else {
			return "";
		}
	}

	/**
	 * 获取data
	 *
	 * @param resultMap
	 *            参数为resultMap
	 * @return 返回数据data
	 */
	public static Object getData(Map<String, Object> resultMap) {
		Object msgObj = resultMap.get(DATA);
		if (msgObj != null) {
			return msgObj;
		} else {
			return null;
		}
	}

}
