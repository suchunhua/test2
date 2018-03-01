package com.fd.weixin.test.dao;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.fd.core.dao.ScreenSumMapper;
import com.fd.weixin.common.BaseTest;

public class ScreenSumMapperTest extends BaseTest {

	@Autowired
	private ScreenSumMapper screenSumMapper;
	
	@Test
	public void ii(){
		List<Map<String, Object>> aa = screenSumMapper.pageScreenSumByParams(0, "单基因遗传病", null, "男");
		for (Map<String, Object> map : aa) {
			System.out.println(map.toString());
		}
	}
}
