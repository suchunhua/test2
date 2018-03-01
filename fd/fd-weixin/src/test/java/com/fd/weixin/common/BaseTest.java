package com.fd.weixin.common;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * 单元测试基类. 
 * 单元测试只需继承此类并可获得spring的应用上下文.
 * @author zengxiaohui
 * @date 2017年9月8日 上午10:43:51
 * @version 1.0
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath*:spring-config-weixin.xml"})
public class BaseTest {

}
