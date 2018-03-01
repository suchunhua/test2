package com.fd.task.controller;

import java.util.HashMap;
import java.util.Map;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fd.tools.crawler.CrawlerUtils;

@Controller
@RequestMapping(value = "pharmgkb")
public class PharmgkbController {

	@RequestMapping(value = "index")
	@ResponseBody
	public Map<String,Object> pharmgkb(String gene) {
		Map<String,Object> result = new HashMap<String, Object>();
		Map<String, String> dataMap = new HashMap<String, String>();
		dataMap.put("redirect", "/");
		dataMap.put("userId", "sshhll123jj321@gmail.com");
		dataMap.put("password", "szxSZX123321");
		dataMap.put("Sign In", "Sign In");
		Document doc = Jsoup.parse(CrawlerUtils.getContent("",CrawlerUtils.getCookiesFromPost("https://www.pharmgkb.org/sign-in.do", dataMap),"https://www.pharmgkb.org/variant/"+gene)); // 获取目标HTML代码
		Elements elements = doc.select(".allelePhenoTable table tbody tr");
		for (Element element : elements) {
			result.put(element.select("th span").html(), element.select("td").html());
		}
		return result;
	}
}
