package com.fd.weixin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fd.tools.config.ConfigUtils;

@Controller
@RequestMapping(value = "/")
public class IndexController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(ModelMap model) {
		model.put("fileType", ConfigUtils.getConfig("fileType").toString());
		return "passport/login";
	}

}
