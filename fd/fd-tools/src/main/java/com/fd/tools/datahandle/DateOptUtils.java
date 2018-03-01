package com.fd.tools.datahandle;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateOptUtils {

	/**
	 * 两个时间判断日期大小，如果date2为空那么则是和当前日期比较
	 * 
	 * @param date1
	 *            时间1
	 * @param date2
	 *            时间2
	 * @return 返回int 0：同一天，1：date1这天在date2之后 ，-1：date1这天在date2之前
	 */
	public static int dateCompare(Date date1, Date date2) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String strDate1 = sdf.format(date1).toString();
		String strDate2 = (date2 == null) ? sdf.format(new Date()).toString() : sdf.format(date2).toString();
		if (strDate1.equals(strDate2)) {
			return 0;
		}
		return strDate1.compareTo(strDate2);
	}

}
