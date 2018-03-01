package com.fd.tools.datasource;

import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

/**
 * 动态数据源路由
 * 
 * @author zengxiaohui
 * @date 2017年4月14日 下午12:01:53
 * @version 1.0
 */
public class DynamicDataSource extends AbstractRoutingDataSource {

	@Override
	protected Object determineCurrentLookupKey() {
		return DataSourceHandle.getDataSource();
	}

}
