package com.fd.tools.datahandle;

import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringOptUtils {

	/**
	 * string转utf-8编码
	 * 
	 * @param xml
	 *            字符串
	 * @return utf-8编码
	 */
	public static String getUTF8XMLString(String xml) {
		// A StringBuffer Object
		StringBuffer sb = new StringBuffer();
		sb.append(xml);
		String xmString = "";
		String xmlUTF8 = "";
		try {
			xmString = new String(sb.toString().getBytes("UTF-8"));
			xmlUTF8 = URLEncoder.encode(xmString, "UTF-8");
			System.out.println("utf-8 编码：" + xmlUTF8);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// return to String Formed
		return xmlUTF8;
	}

	/**
	 * 获取字符串中最先看到的2位小数 0.0302774483165269 -> 3.02774483165269 -> 3.03
	 * 
	 * @param number
	 *            字符串
	 * @return 保留2位后的字符串
	 */
	public static String getLastTwoDecimal(String number) {
		number = (number != null && !"".equals(number)) ? number : "0.0";
		BigDecimal bigDec = new BigDecimal(number);
		bigDec = bigDec.multiply(new BigDecimal(100));
		String[] temp = bigDec.toString().split("\\.");
		BigDecimal temp0 = new BigDecimal(temp[0]); // 获取整数部分
		BigDecimal temp1 = new BigDecimal("0." + temp[1]); // 获取小数部分
		MathContext mc = new MathContext(2, RoundingMode.UP);
		if (temp0.compareTo(BigDecimal.ZERO) > 0) {
			return temp0.add(temp1.setScale(2, BigDecimal.ROUND_HALF_UP)).toString();
		} else {
			return temp0.add(temp1.divide(BigDecimal.ONE, mc)).toString();
		}
	}

	/**
	 * 去除字符串中所有非汉字内容
	 * 
	 * @param buff
	 *            要传入的字符串
	 * @return 返回去除非汉字内容的字符串
	 */
	public static String clearNotChinese(String buff) {
		if (buff == null || "".equals(buff)) {
			return buff;
		} else {
			String tmpString = buff.replaceAll("(?i)[^a-zA-Z0-9\u4E00-\u9FA5]", "");// 去掉所有中英文符号
			char[] carr = tmpString.toCharArray();
			for (int i = 0; i < tmpString.length(); i++) {
				if (carr[i] < 0xFF) {
					carr[i] = ' ';// 过滤掉非汉字内容
				}
			}
			return String.copyValueOf(carr).trim();
		}
	}

	/**
	 * 获取字符串之间的值并将其打包为数组
	 * 
	 * @param str
	 *            需要处理的字符串
	 * @param start
	 *            开始截取的字符串
	 * @param end
	 *            结束截取的字符串
	 * @return 返回字符串数组
	 */
	public static List<String> between2Strings(String str, String start, String end) {
		List<String> result = new ArrayList<String>();
		Matcher m2 = Pattern.compile(start + "(.*?)" + end).matcher(str);
		while (m2.find()) {
			result.add(m2.group(1));
		}
		return result;
	}

	/**
	 * 判断字符串是不是有效日期格式yyyy-MM-dd
	 * 
	 * @param str
	 *            需要判断的字符串
	 * @return 返回对错
	 */
	public static boolean isValidDate(String str) {
		boolean convertSuccess = true;
		// 指定日期格式为四位年/两位月份/两位日期，注意yyyy/MM/dd区分大小写
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		try {
			// 设置lenient为false.
			// 否则SimpleDateFormat会比较宽松地验证日期，比如2007/02/29会被接受，并转换成2007/03/01
			format.setLenient(false);
			format.parse(str);
		} catch (Exception e) {
			// 如果throw java.text.ParseException或者NullPointerException，就说明格式不对
			convertSuccess = false;
		}
		return convertSuccess;
	}

	/**
	 * 判断是不是手机号
	 * 
	 * @param mobile
	 *            手机字符串
	 * @return 返回是或者不是
	 */
	public static boolean isMobile(String mobile) {
		Pattern p = Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$");
		Matcher m = p.matcher(mobile);
		return m.matches();
	}

	/**
	 * 判断是不是电话
	 * 
	 * @param tele
	 *            电话字符串
	 * @return 是电话类型返回true
	 */
	public static boolean isTele(String tele) {
		Pattern p = Pattern.compile("^0[\\d]{2,3}-[\\d]{7,8}$");
		Matcher m = p.matcher(tele);
		return m.matches();
	}

	/**
	 * 判断是不是qq号
	 * 
	 * @param str
	 *            qq号字符串
	 * @return 返回是或者不是
	 */
	public static boolean isQQCorrect(String str) {
		Pattern p = Pattern.compile("[1-9][0-9]{4,14}");
		Matcher m = p.matcher(str);
		return m.matches();
	}

	/**
	 * 判断是不是邮箱
	 * 
	 * @param email
	 *            邮箱字符串
	 * @return 返回是或者不是
	 */
	public static boolean isEmail(String email) {
		Pattern regex = Pattern
				.compile("^([a-z0-9A-Z]+[-|_|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$");
		Matcher matcher = regex.matcher(email);
		return matcher.matches();
	}

	/**
	 * 去除字符串中最后和delStr相同的
	 * 
	 * @param string
	 *            传入的字符串
	 * @param delStr
	 *            要去除的字符串
	 * @return 返回结果
	 */
	public static String deleteLastStr(String string, String delStr) {
		Boolean lenCompare = (string.length() > delStr.length());
		return (lenCompare && string.endsWith(delStr)) ? string.substring(0, string.lastIndexOf(delStr)) : string;
	}

	/**
	 * 判断字符串数组中是否包含某个元素
	 * 
	 * @param parent
	 *            字符串数组
	 * @param son
	 *            子字符串
	 * @return 返回结果
	 */
	public static boolean hasElement(String[] parent, String son) {
		for (String string : parent) {
			if (string.equals(son)) {
				return true;
			}
		}
		return false;
	}
}
