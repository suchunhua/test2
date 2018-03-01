package com.fd.tools.utils;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;

/**
 * 发送手机信息
 * 
 * @author zengxiaohui
 * @date 2017年8月21日 下午3:21:31
 * @version 1.0
 */
public class SmsUtil {

	private static String Url = "http://106.ihuyi.cn/webservice/sms.php?method=Submit";

	/** 阿里大于相关配置start */
	private static final String url = "http://gw.api.taobao.com/router/rest";
	private static final String appkey = "23577357";
	private static final String secret = "dd8338f8607b53d891ab3e37c19c5278";
	private static final String extend = "123456";
	private static final String smsType = "normal";
	private static final String smsFreeSignName = "首度基因";

	/** 阿里大于相关配置end */

	/**
	 * ihuyi发送短信给手机
	 * 
	 * @param mobile
	 *            手机号
	 * @param content
	 *            短信内容
	 * @return 发送的结果
	 */
	public static boolean send(String mobile, String content) {
		HttpClient client = new HttpClient();
		PostMethod method = new PostMethod(Url);
		client.getParams().setContentCharset("UTF-8");
		method.setRequestHeader("ContentType", "application/x-www-form-urlencoded;charset=UTF-8");
		NameValuePair[] data = { // 提交短信
				new NameValuePair("account", "C73611261"), // 查看用户名请登录用户中心->验证码、通知短信->帐户及签名设置->APIID
				new NameValuePair("password", "c504a7890d7a47bbf41a8e9c3ffeb169"), // 查看密码请登录用户中心->验证码、通知短信->帐户及签名设置->APIKEY
				// new NameValuePair("password",
				// util.StringUtil.MD5Encode("密码")),
				new NameValuePair("mobile", mobile), new NameValuePair("content", content), };
		method.setRequestBody(data);

		try {
			client.executeMethod(method);
			String SubmitResult = method.getResponseBodyAsString();
			// System.out.println(SubmitResult);
			Document doc = DocumentHelper.parseText(SubmitResult);
			Element root = doc.getRootElement();
			String code = root.elementText("code");
			String msg = root.elementText("msg");
			String smsid = root.elementText("smsid");
			System.out.println(code);
			System.out.println(msg);
			System.out.println(smsid);
			if ("2".equals(code)) {
				System.out.println("短信提交成功");
			}
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	/**
	 * 发送帐号密码给客户
	 * 
	 * @param mobile
	 *            客户手机号
	 * @param account
	 *            客户帐号
	 * @param password
	 *            客户密码
	 * @return 发送是否成功
	 */
	public static Boolean alidayuSendAccount(String mobile, String account, String password) {
		return alidayuSendSms(mobile, "{account:'" + account + "',password:'" + password + "'}", "SMS_100305014");
	}

	/**
	 * 发送短信验证码给客户
	 * 
	 * @param mobile
	 *            客户手机号
	 * @param code
	 *            验证码
	 * @return 是否发送成功
	 */
	public static Boolean alidayuSendCheckCode(String mobile, String code) {
		return alidayuSendSms(mobile, "{code:'" + code + "'}", "SMS_86710145");
	}

	/**
	 * 发送短信的方法
	 * 
	 * @param mobile
	 *            手机号
	 * @param smsParamString
	 *            短信参数
	 * @param smsTemplateCode
	 *            短信模版编号
	 * @return 是否发送成功
	 */
	private static Boolean alidayuSendSms(String mobile, String smsParamString, String smsTemplateCode) {
		try {
			TaobaoClient client = new DefaultTaobaoClient(url, appkey, secret);
			AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
			req.setExtend(extend);
			req.setSmsType(smsType);
			req.setSmsFreeSignName(smsFreeSignName);
			req.setSmsParamString(smsParamString);
			req.setRecNum(mobile);
			req.setSmsTemplateCode(smsTemplateCode);
			AlibabaAliqinFcSmsNumSendResponse rsp = client.execute(req);
			return rsp.getResult().getSuccess();
		} catch (Exception e) {
			System.out.println("阿里大于发送短信异常：" + e.getMessage());
		}
		return false;
	}

	public static void main(String[] args) {
		System.out.println("开始发帐号");
		alidayuSendAccount("13601926625", "13601926625", "435977");
		System.out.println("发帐号结束");
	}
}
