package com.fd.site.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fd.site.dao.NewsMapper;
import com.fd.site.entity.News;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class NewsService {

	@Autowired
	private NewsMapper newsMapper;
	
	public News getById(Integer id){
		return newsMapper.getById(id);
	}

	public PageInfo<News> pageByNews(Byte type, Integer pageNum) {
		pageNum = pageNum != null ? pageNum : 1;
		PageHelper.startPage(pageNum, 6, true);
		List<News> newsList = newsMapper.listByNews(type);
		for (News news : newsList) {
				String newsContent = removeTag(news.getContent()).replaceAll("Normal(.*?)X-NONE", "").replaceAll("&nbsp;", "");
				if(newsContent.length()>200){
					news.setContent(newsContent.substring(0, 200) + "...");
				}else{
					news.setContent(newsContent.substring(0, 100) + "...");
				}
		}
		return new PageInfo<News>(newsList);
	}

	public String removeTag(String htmlStr) {
		htmlStr = Pattern.compile("<script[^>]*?>[\\s\\S]*?<\\/script>", Pattern.CASE_INSENSITIVE).matcher(htmlStr)
				.replaceAll("");
		htmlStr = Pattern.compile("<style[^>]*?>[\\s\\S]*?<\\/style>", Pattern.CASE_INSENSITIVE).matcher(htmlStr)
				.replaceAll("");
		htmlStr = Pattern.compile("<[^>]+>", Pattern.CASE_INSENSITIVE).matcher(htmlStr).replaceAll("");
		return Pattern.compile("\\s+|\t|\r|\n", Pattern.CASE_INSENSITIVE).matcher(htmlStr).replaceAll(" ");
	}
	
	public Map<String,Object> list3News(){
		Map<String,Object> result = new HashMap<String, Object>();
		result.put("news", newsMapper.list3News((byte) 0));
		result.put("status", newsMapper.list3News((byte) 1));
		return result;
	}
}
