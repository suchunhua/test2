package com.fd.tools.crawler;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.CookieStore;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

import net.sf.json.JSONObject;

@SuppressWarnings("deprecation")
public class CrawlerUtils {

	/**
	 * 通过url和参数以post方式获取文件并且将该文件发送给客户端
	 * 
	 * @param url
	 *            需要访问的url路径
	 * @param dataMap
	 *            需要用到的参数
	 * @param response
	 *            传递的客户端
	 * @param fileName
	 *            传递到客户端时的名字
	 * @return 返回下载结果
	 */
	public static boolean downloadFromPost(String url, Map<String, String> dataMap, HttpServletResponse response,
			String fileName) {
		@SuppressWarnings("resource")
		HttpClient httpclient = new DefaultHttpClient();
		HttpPost httpPost = new HttpPost(url);
		BufferedOutputStream bos = null;
		try {
			List<NameValuePair> params = new ArrayList<NameValuePair>();
			params.add(new BasicNameValuePair("charset", "UTF-8"));// 压缩使用UTF-8
			if (dataMap != null && !dataMap.isEmpty()) {
				for (String key : dataMap.keySet()) {
					params.add(new BasicNameValuePair(key, dataMap.get(key)));
				}
			}
			httpPost.setEntity(new UrlEncodedFormEntity(params));
			HttpResponse httpResponse = httpclient.execute(httpPost);
			response.setContentType("applicatoin/octet-stream");
			response.setCharacterEncoding("utf-8");
			response.setHeader("Content-disposition", "attachment; filename=" + encodingFileName(fileName));
			bos = new BufferedOutputStream(response.getOutputStream());
			byte[] buff = EntityUtils.toByteArray(httpResponse.getEntity());
			bos.write(buff);
			bos.flush();
		} catch (Exception e) {
			return false;
		} finally {
			if (bos != null) {
				try {
					bos.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
				bos = null;
			}
			httpPost.releaseConnection();
		}
		return true;
	}

	/**
	 * 导出文件名中含有中文处理方法
	 * 
	 * @param fileName
	 *            文件名
	 * @return 处理后的中文
	 */
	public static String encodingFileName(String fileName) {
		String returnFileName = "";
		try {
			returnFileName = URLEncoder.encode(fileName, "UTF-8");
			returnFileName = StringUtils.replace(returnFileName, "+", "%20");
			if (returnFileName.length() > 150) {
				returnFileName = new String(fileName.getBytes("GB2312"), "ISO8859-1");
				returnFileName = StringUtils.replace(returnFileName, " ", "%20");
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return returnFileName;
	}

	/**
	 * 通过post得到cookies
	 * 
	 * @param url
	 *            需要访问的url路径
	 * @param dataMap
	 *            需要用到的参数
	 * @return 返回cookies
	 */
	public static String getCookiesFromPost(String url, Map<String, String> dataMap) {
		String varcookies = "";
		DefaultHttpClient httpclient = new DefaultHttpClient();
		HttpPost httpPost = new HttpPost(url);
		try {
			List<NameValuePair> params = new ArrayList<NameValuePair>();
			params.add(new BasicNameValuePair("charset", "UTF-8"));// 压缩使用UTF-8
			if (dataMap != null && !dataMap.isEmpty()) {
				for (String key : dataMap.keySet()) {
					params.add(new BasicNameValuePair(key, dataMap.get(key)));
				}
			}
			httpPost.setEntity(new UrlEncodedFormEntity(params));
			@SuppressWarnings("unused")
			HttpResponse httpResponse = httpclient.execute(httpPost);
			CookieStore cookiestore = httpclient.getCookieStore();
			List<Cookie> cookies = cookiestore.getCookies();
			for (int i = 0; i < cookies.size(); i++) {
				varcookies += (i == cookies.size() - 1) ? cookies.get(i).getName() + "=" + cookies.get(i).getValue()
						: cookies.get(i).getName() + "=" + cookies.get(i).getValue() + ";";
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			httpPost.releaseConnection();
			httpclient.close();
		}
		return varcookies;
	}

	/**
	 * 获取访问网站的数据
	 * 
	 * @param params
	 *            参数
	 * @param cookieVal
	 *            cookie的值
	 * @param url
	 *            url路径
	 * @return response的值
	 */
	public static String getContent(String params, String cookieVal, String url) {
		StringBuffer sb = null;
		try {
			String content = params;
			URL urls = content == null ? new URL(url) : new URL(url + content);
			HttpURLConnection urlconnection = (HttpURLConnection) urls.openConnection(); // 打开连接
			urlconnection.setDoOutput(true);
			urlconnection.setDoInput(true);
			urlconnection.setRequestMethod("POST");
			urlconnection.setUseCaches(false);
			urlconnection.setInstanceFollowRedirects(true);
			urlconnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
			urlconnection.setRequestProperty("User-Agent",
					"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36"); // 有些浏览器会查看浏览器信息，防止爬取。
			urlconnection.setRequestProperty("Cookie", cookieVal);
			urlconnection.connect();
			if (params != null) {
				DataOutputStream out = new DataOutputStream(urlconnection.getOutputStream());
				out.writeBytes(content);
				out.flush();
				out.close();
			}
			InputStream ins = urlconnection.getInputStream(); // 以流的方式读出内容
			BufferedReader buff = new BufferedReader(new InputStreamReader(ins, "utf-8")); // 以字符流读入
			sb = new StringBuffer(); // 把内容提取出来
			String lines = "";
			while ((lines = buff.readLine()) != null) {
				sb.append(lines + "\n");
			}
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return sb.toString();
	}

	/**
	 * 通过get请求得到json数据
	 * 
	 * @param url
	 *            请求的url
	 * @return 返回json
	 */
	public static JSONObject doGetJson(String url) {
		JSONObject jsonObject = null;
		DefaultHttpClient client = new DefaultHttpClient();
		try {
			HttpGet httpGet = new HttpGet(url);
			HttpResponse response = client.execute(httpGet);
			HttpEntity entity = response.getEntity();
			if (entity != null) {
				String result = EntityUtils.toString(entity, "UTF-8");
				jsonObject = JSONObject.fromObject(result);
			}
			httpGet.releaseConnection();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			client.close();
		}
		return jsonObject;
	}

}
