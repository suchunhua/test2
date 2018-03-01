package com.fd.site.dao;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.fd.site.common.BaseTest;
import com.fd.site.entity.News;

public class NewsMapperTest extends BaseTest{

	@Autowired
	private NewsMapper newsMapper;
	
	@Test
	public void test() {
		Byte type = 0;
		List<News> newsList = newsMapper.listByNews(type);
		for (News news : newsList) {
			/*Matcher m2=Pattern.compile("<p class=\"MsoNormal\">(.*?)</p>").matcher(news.getContent());
		    while(m2.find())
		      System.out.println(m2.group(1));*/
		    
		    String content = news.getContent();
		    System.out.println(removeTag(content).replaceAll("Normal 0 10 磅 0 2 false false false EN-US ZH-CN X-NONE", "").replaceAll("&nbsp;", "").substring(0, 100));
		   /* content = content.replace(/<\/?[^>]*>/g,''); //去除HTML tag
*/		   /* content = content.replace(/[ | ]*\n/g,'\n'); //去除行尾空白
            //str = str.replace(/\n[\s| | ]*\r/g,'\n'); //去除多余空行
		    content=content.replace(/&nbsp;/ig,'');//去掉&nbsp;*/
		    /*content = content.replaceAll("</?[^>]*>", "");
		    content = content.replaceAll("[ | ]*\n/g", "\n");
		    content = content.replaceAll("&nbsp;/ig", "");
		    content = content.substring(0, 100);
		    System.out.println(content);*/
		}
	}
	
	  public static String fiterHtmlTag(String str, String tag) {   
	        String regxp = "<?[^>]*>";   
	        Pattern pattern = Pattern.compile(regxp);   
	        Matcher matcher = pattern.matcher(str);   
	        StringBuffer sb = new StringBuffer();   
	        boolean result1 = matcher.find();   
	        while (result1) {   
	            matcher.appendReplacement(sb, "");   
	            result1 = matcher.find();   
	        }   
	        matcher.appendTail(sb);   
	        return sb.toString();   
	    }   
	
	public static String removeTag(String htmlStr) {
		String regEx_script = "<script[^>]*?>[\\s\\S]*?<\\/script>"; // script
		String regEx_style = "<style[^>]*?>[\\s\\S]*?<\\/style>"; // style
		String regEx_html = "<[^>]+>"; // HTML tag
		String regEx_space = "\\s+|\t|\r|\n";// other characters

		Pattern p_script = Pattern.compile(regEx_script,
			Pattern.CASE_INSENSITIVE);
		Matcher m_script = p_script.matcher(htmlStr);
		htmlStr = m_script.replaceAll("");
		Pattern p_style = Pattern
			.compile(regEx_style, Pattern.CASE_INSENSITIVE);
		Matcher m_style = p_style.matcher(htmlStr);
		htmlStr = m_style.replaceAll("");
		Pattern p_html = Pattern.compile(regEx_html, Pattern.CASE_INSENSITIVE);
		Matcher m_html = p_html.matcher(htmlStr);
		htmlStr = m_html.replaceAll("");
		Pattern p_space = Pattern
			.compile(regEx_space, Pattern.CASE_INSENSITIVE);
		Matcher m_space = p_space.matcher(htmlStr);
		htmlStr = m_space.replaceAll(" ");
		return htmlStr;
	    }

}
