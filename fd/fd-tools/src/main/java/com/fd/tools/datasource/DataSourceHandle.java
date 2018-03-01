package com.fd.tools.datasource;

/**
 * 动态数据源key，线程级别
 * 
 * @author zengxiaohui
 * @date 2017年4月14日 下午12:01:37
 * @version 1.0
 */
public class DataSourceHandle {

	/** 写数据源路由key */
	private static final String WRITE = "write";

	/** 读数据源路由key */
	private static final String READ = "read";

	/** 动态数据源key，线程级别 */
	public static final ThreadLocal<String> holder = new ThreadLocal<String>();

	public static void setWriteDataSource() {
		holder.set(WRITE);
	}

	public static void setReadDataSource() {
		holder.set(READ);
	}

	public static String getDataSource() {
		return holder.get();
	}

	public static void clearDataSource() {
		holder.remove();
	}
}
