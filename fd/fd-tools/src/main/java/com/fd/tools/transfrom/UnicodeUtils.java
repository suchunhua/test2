package com.fd.tools.transfrom;

/**
 * 中文到unicode编码的转换
 */
public class UnicodeUtils {

	public static void main(String[] args) {
		String cn = "怀念外婆屋后的柚子树";
		System.out.println(cnToUnicode(cn));
		// 字符串 : \u5f00\u59cb\u4efb\u52a1 ，由于 \ 在java里是转义字符，要写出下面这种形式
		String unicode = "\\u5f00\\u59cb\\u4efb\\u52a1";
		System.out.println(unicodeToCn(unicode));
	}

	/**
	 * unicode转中文
	 * 
	 * @param unicode
	 *            unicode字符串
	 * @return 返回中文
	 */
	public static String unicodeToCn(String unicode) {
		/** 以 \ u 分割，因为java注释也能识别unicode，因此中间加了一个空格 */
		String[] strs = unicode.split("\\\\u");
		String returnStr = "";
		// 由于unicode字符串以 \ u 开头，因此分割出的第一个字符是""。
		for (int i = 1; i < strs.length; i++) {
			returnStr += (char) Integer.valueOf(strs[i], 16).intValue();
		}
		return returnStr;
	}

	/**
	 * 中文转unicode
	 * 
	 * @param cn
	 *            中文字符串
	 * @return 返回unicode字符串
	 */
	public static String cnToUnicode(String cn) {
		char[] chars = cn.toCharArray();
		String returnStr = "";
		for (int i = 0; i < chars.length; i++) {
			returnStr += "\\u" + Integer.toString(chars[i], 16);
		}
		return returnStr;
	}

}