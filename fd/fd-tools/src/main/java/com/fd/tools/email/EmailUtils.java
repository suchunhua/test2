package com.fd.tools.email;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Date;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Flags;
import javax.mail.Folder;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Store;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;

import com.fd.tools.config.ConfigUtils;

public class EmailUtils {

	private static final String smtp = ConfigUtils.getConfig("email.smtp").toString();
	private static final String smtpHost = ConfigUtils.getConfig("email.smtpHost").toString();
	private static final String smtpSendPort = ConfigUtils.getConfig("email.smtpSendPort").toString();
	private static final String imap = ConfigUtils.getConfig("email.imap").toString();
	private static final String imapHost = ConfigUtils.getConfig("email.imapHost").toString();
	private static final String imapSendPort = ConfigUtils.getConfig("email.imapSendPort").toString();
	private static final String sendName = ConfigUtils.getConfig("email.sendName").toString();
	private static final String userName = ConfigUtils.getConfig("email.userName").toString();
	private static final String userPwd = ConfigUtils.getConfig("email.userPwd").toString();
	private static String nick = ConfigUtils.getConfig("email.nick").toString();

	/**
	 * 邮件发送的方法 to 收件人 subject 主题 content 内容 smtp 协议 host 发送服务器服务器 sendName 邮件发送人
	 * sendPort 邮件发送人端口 userName 邮件发送人名 userPwd 邮件发送人密码
	 * 
	 * @param to
	 *            收件人邮箱
	 * @param subject
	 *            邮件主题
	 * @param content
	 *            邮件内容
	 * @return 返回发送的结果true false
	 */
	public static boolean sendEmail(String to, String subject, String content) {
		if (to == null || "".equals(to)) {
			return false;
		}
		// 第一步：创建Session
		Properties props = new Properties();
		// 指定邮件的传输协议，smtp(Simple Mail Transfer Protocol 简单的邮件传输协议)
		props.put("mail.transport.protocol", smtp);
		// 指定邮件发送服务器服务器 "smtp.qq.com"
		props.put("mail.host", smtpHost);
		// 指定邮件的发送人(您用来发送邮件的服务器，比如您的163\sina等邮箱)
		props.put("mail.from", sendName);
		if (true) {
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.smtp.socketFactory.fallback", "false");
			props.put("mail.smtp.socketFactory.port", smtpSendPort);
		}
		Session session = Session.getDefaultInstance(props);

		// 开启调试模式
		session.setDebug(true);
		try {
			// 第二步：获取邮件发送对象
			Transport transport = session.getTransport();
			// 连接邮件服务器，链接您的163、sina邮箱，用户名（不带@163.com，登录邮箱的邮箱账号，不是邮箱地址）、密码
			transport.connect(userName, userPwd);
			Address toAddress = new InternetAddress(to);

			// 第三步：创建邮件消息体
			MimeMessage message = new MimeMessage(session);
			// 设置自定义发件人昵称
			nick = MimeUtility.encodeText(nick);
			message.setFrom(new InternetAddress(nick + " <" + sendName + ">"));
			// 设置发信人
			// message.setFrom(new InternetAddress(sendName));

			// 邮件的主题
			message.setSubject(subject);
			// 收件人
			message.addRecipient(Message.RecipientType.TO, toAddress);
			/*
			 * //抄送人 Address ccAddress = new InternetAddress("first.lady@whitehouse.gov");
			 * message.addRecipient(Message.RecipientType.CC, ccAddress);
			 */
			// 邮件的内容
			message.setContent(content, "text/html;charset=utf-8");
			// 邮件发送时间
			message.setSentDate(new Date());

			// 第四步：发送邮件
			// 第一个参数：邮件的消息体
			// 第二个参数：邮件的接收人，多个接收人用逗号隔开（test1@163.com,test2@sina.com）
			transport.sendMessage(message, InternetAddress.parse(to));
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	/**
	 * 删除邮件
	 */
	public static void deteteEmail() {
		// 第一步：创建Session
		Properties props = new Properties();
		// 指定邮件的传输协议，smtp(Simple Mail Transfer Protocol 简单的邮件传输协议)
		props.put("mail.transport.protocol", imap);
		// 指定邮件发送服务器服务器 "smtp.qq.com"
		props.put("mail.host", imapHost);
		// 指定邮件的发送人(您用来发送邮件的服务器，比如您的163\sina等邮箱)
		props.put("mail.from", sendName);
		if (true) {
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.smtp.socketFactory.fallback", "false");
			props.put("mail.smtp.socketFactory.port", imapSendPort);
		}
		Session session = Session.getDefaultInstance(props);
		// 开启调试模式
		session.setDebug(false);
		try {
			// create the POP3 store object and connect with the pop server
			Store store = session.getStore("imap");
			store.connect(imapHost, userName, userPwd);
			// create the folder object and open it
			Folder emailFolder = store.getFolder("INBOX");
			emailFolder.open(Folder.READ_WRITE);

			BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
			// retrieve the messages from the folder in an array and print it
			Message[] messages = emailFolder.getMessages();
			System.out.println("messages.length---" + messages.length);
			for (int i = 0; i < messages.length; i++) {
				Message message = messages[i];
				System.out.println("---------------------------------");
				System.out.println("Email Number " + (i + 1));
				System.out.println("Subject: " + message.getSubject());
				System.out.println("From: " + message.getFrom()[0]);

				String subject = message.getSubject();
				System.out.print("Do you want to delete this message [y/n] ? ");
				String ans = reader.readLine();
				if ("Y".equals(ans) || "y".equals(ans)) {
					// set the DELETE flag to true
					message.setFlag(Flags.Flag.DELETED, true);
					System.out.println("Marked DELETE for message: " + subject);
				} else if ("n".equals(ans)) {
					// break;
				}
			}
			// expunges the folder to remove messages which are marked deleted
			emailFolder.close(true);
			store.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
