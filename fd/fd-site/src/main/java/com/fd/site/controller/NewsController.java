package com.fd.site.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fd.site.entity.News;
import com.fd.site.service.NewsService;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping(value = "news")
public class NewsController {

	@Autowired
	private NewsService newsService;
	
	@RequestMapping(value = "index")
	public String news(Byte type,Integer pageNum,ModelMap model){
		PageInfo<News> pageInfo = newsService.pageByNews(type,pageNum);
		model.put("pageInfo", pageInfo);
		return "news";
	}
	
	@RequestMapping(value = "detail")
	public String detail(ModelMap model,Integer id){
		model.put("news", newsService.getById(id));	
		return "newsDetail";
	}
}
