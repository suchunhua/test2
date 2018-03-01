package com.fd.task.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fd.task.service.CollInfoService;

@Controller
@RequestMapping(value = "collInfo")
public class CollInfoController {

	@Autowired
	private CollInfoService collInfoService;

	@RequestMapping(value = "index")
	public String syncCollInfo(String username, String password, ModelMap model) {
		if ("admin".equals(username) && "first@2017".equals(password)) {
			//collInfoService.syncCollInfoFromSQL();
			model.put("result", "数据同步完成");
		} else {
			model.put("result", "需要帐号密码");
		}
		return "collInfo";
	}
}
