package com.fd.tools.transfrom;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSON;

public class ParseUtils {

	/**
	 * object转long
	 * 
	 * @param obj
	 *            要转换的object
	 * @return long类型的值
	 */
	public static Long objToLong(Object obj) {
		if (obj != null)
			return Long.parseLong(obj.toString());
		else
			return null;
	}

	/**
	 * object转Integer
	 * 
	 * @param obj
	 *            需要转换的object的对象
	 * @return 返回Integer的值
	 */
	public static Integer objToInteger(Object obj) {
		if (obj != null)
			return Integer.parseInt(obj.toString());
		else
			return null;
	}

	/**
	 * object转BigDecimal
	 * 
	 * @param obj
	 *            需要转换的Object对象
	 * @return 返回BigDecimal值
	 */
	public static BigDecimal objToBigDecimal(Object obj) {
		if (obj != null && !"".equals(obj))
			return new BigDecimal(obj.toString());
		else
			return null;
	}

	/**
	 * object转String
	 * 
	 * @param obj
	 *            需要转换的object
	 * @return 返回String值
	 */
	public static String objToString(Object obj) {
		if (obj != null)
			return obj.toString();
		else
			return null;
	}

	/**
	 * String转Date
	 * 
	 * @param dateString
	 *            需要转换的字符串
	 * @return 返回日期
	 */
	public static Date strToDate(String dateString) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;
		try {
			date = sdf.parse(dateString);
			return date;
		} catch (ParseException e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * Object转Boolean
	 * 
	 * @param obj
	 *            需要转换的object
	 * @return 返回Boolean
	 */
	public static Boolean objToBoolean(Object obj) {
		return (Boolean) obj;
	}

	/**
	 * json转List
	 * 
	 * @param arr
	 *            需要转换的json字符串
	 * @return 返回list
	 */
	public static List<Map<String, Object>> jsonToList(String arr) {
		List<Map<String, Object>> returnList = new ArrayList<Map<String, Object>>();
		com.alibaba.fastjson.JSONArray mainArray = JSON.parseArray(arr);
		for (int i = 0; i < mainArray.size(); i++) {
			com.alibaba.fastjson.JSONArray paramObject = (com.alibaba.fastjson.JSONArray) mainArray.get(i);
			Map<String, Object> map = new HashMap<String, Object>();
			for (int j = 0; j < paramObject.size(); j++) {
				map.put("" + j, paramObject.get(j));
			}
			returnList.add(map);
		}
		return returnList;
	}

	/**
	 * Date转String
	 * 
	 * @param date
	 *            日期
	 * @return 返回的结果string yyyy-MM-dd
	 */
	public static String dateToString(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		if (date == null) {
			return sdf.format(new Date());
		} else {
			return sdf.format(date);
		}
	}
}
