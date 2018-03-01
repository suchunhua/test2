package com.fd.report.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fd.tools.config.ConfigUtils;

/**
 * @author zengxiaohui
 * @date 2017年2月18日
 * @version 1.0
 * @Copyright
 */
@Controller
@RequestMapping(value = "/")
public class IndexController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(ModelMap model) {
		model.put("fileType",ConfigUtils.getConfig("fileType").toString());
		return "login";
	}
}
