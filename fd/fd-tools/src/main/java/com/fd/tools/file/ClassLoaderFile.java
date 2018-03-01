package com.fd.tools.file;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;

public class ClassLoaderFile {

	private final static String className = "com.fd.tools.file.ClassLoaderFile";

	private final static String emailFileName = "email.html";

	/**
	 * 将文件内容返回为字符串
	 * 
	 * @param className
	 *            调用这个方法的类的全面eg:com.fd.tools.file.ClassLoaderFile
	 * @param rsc
	 *            文件名
	 * @return 返回文件字符串
	 */
	public static String getResource(String className, String rsc) {
		String val = "";
		try {
			@SuppressWarnings("rawtypes")
			Class cls = Class.forName(className);
			// returns the ClassLoader object associated with this Class
			ClassLoader cLoader = cls.getClassLoader();
			// input stream
			@SuppressWarnings("static-access")
			InputStream i = cLoader.getSystemResourceAsStream(rsc);
			// InputStream i = ClassLoader.getSystemResourceAsStream(rsc);
			BufferedReader r = new BufferedReader(new InputStreamReader(i));
			// reads each line
			String l;
			while ((l = r.readLine()) != null) {
				val = val + l;
			}
			i.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return val;
	}

	/**
	 * 获得发送给客户帐号和密码的邮件内容
	 * 
	 * @param customerName
	 *            客户姓名
	 * @param customerAccount
	 *            客户帐号
	 * @param customerPassword
	 *            客户密码
	 * @return 邮件内容
	 */
	public static String getAccountEmailContent(String customerName, String customerAccount, String customerPassword) {
		StringBuffer sb = new StringBuffer();
		try {
			@SuppressWarnings("rawtypes")
			Class cls = Class.forName(className);
			ClassLoader cLoader = cls.getClassLoader();
			URL url = cLoader.getResource(emailFileName);
			String encoding = "utf-8";
			File file = new File(url.getPath());
			if (file.isFile() && file.exists()) { // 判断文件是否存在
				InputStreamReader read = new InputStreamReader(new FileInputStream(file), encoding);// 考虑到编码格式
				BufferedReader bufferedReader = new BufferedReader(read);
				String lineTxt = null;
				while ((lineTxt = bufferedReader.readLine()) != null) {
					lineTxt = lineTxt.replaceAll("%", "%%");
					lineTxt = lineTxt.replaceAll("%%s", "%s");
					sb.append(lineTxt);
				}
				read.close();
			} else {
				System.out.println("找不到指定的文件");
			}
		} catch (Exception e) {
			System.out.println("读取文件内容出错");
			e.printStackTrace();
		}
		return String.format(sb.toString(), customerName, customerAccount, customerPassword);
	}

}
