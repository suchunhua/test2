package com.fd.site.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fd.site.service.NewsService;

@Controller
@RequestMapping(value = "/")
public class IndexController {
	
	@Autowired
	private NewsService newsService;
	
	@RequestMapping(value = "/")
	public String index(ModelMap model){
		model.put("newsCenter", newsService.list3News());
		return "index";
	}
	
	@RequestMapping(value = "about")
	public String about(){
		return "about";
	}
	
	@RequestMapping(value = "exome")
	public String exome(){
		return "exome";
	}
	
	@RequestMapping(value = "production")
	public String production(){
		return "production";
	}
	
	@RequestMapping(value = "fd600")
	public String fd600(){
		return "fd600";
	}
	
	@RequestMapping(value = "fd180")
	public String fd180(){
		return "fd180";
	}
	
	@RequestMapping(value = "contact")
	public String contact(){
		return "contact";
	}
	
	@RequestMapping(value = "join")
	public String join(){
		return "join";
	}
	
	@RequestMapping(value = "agent")
	public String agent(){
		return "agent";
	}
	
}
