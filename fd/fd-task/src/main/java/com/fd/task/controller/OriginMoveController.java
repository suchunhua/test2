package com.fd.task.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fd.task.service.TaskOriginMoveService;

@Controller
@RequestMapping(value = "origin")
public class OriginMoveController {

	@Autowired
	private TaskOriginMoveService taskOriginMoveService;

	@RequestMapping(value = "move")
	public String syncOrigin(String username, String password, ModelMap model) {
		if ("admin".equals(username) && "first@2017".equals(password)) {
			taskOriginMoveService.syncOriginMoveFromMySQL();
			model.put("result", "祖源迁途数据生成完毕");
		} else {
			model.put("result", "需要帐号密码");
		}
		return "collInfo";
	}
}
