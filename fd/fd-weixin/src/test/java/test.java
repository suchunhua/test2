import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;

import com.fd.tools.crawler.CrawlerUtils;

import net.sf.json.JSONObject;

public class test {

	@Test
	public void test() {
		//String scrRisk = selfIllList.get(zdycsize).getScrRisk();
		
		String scrRisk = "FD-H-3";
		if(scrRisk!=null&& ! (scrRisk.contains("1")||scrRisk.contains("2")||scrRisk.contains("3"))){
			System.out.println("sd");
		}
	}
	
	@Test
	public void qew(){
		Date date = new Date();
		 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
		 System.out.println("InjectorJob: starting at " + sdf.format(date));  
	}
	
	@Test
	public void stringToJson(){
		String jsonString = "{\"openid\":\"o1UKsuNEyve2PFnevvmqANDJVKPo\", \"nickname\":\"开心\", \"sex\":1, \"language\":\"zh_CN\", \"city\":\"南昌\", \"province\":\"江西\", \"country\":\"中国\", \"headimgurl\":\"http://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eomia5tEXMOJpn19V6LTPQRzp3PzLpRQppbK9OnVBNw3ykfDVHEoZEWJKSib9c2DrMKjEicxkH2PS92w/0\", \"privilege\":[] }";
		JSONObject userInfo = JSONObject.fromObject(jsonString);
		System.out.println(userInfo);
	}

}
