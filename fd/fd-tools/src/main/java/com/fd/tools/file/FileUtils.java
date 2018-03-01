package com.fd.tools.file;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

/**
 * 文件处理工具类
 * 
 * @author zengxiaohui
 * @date 2017年8月23日 下午3:49:46
 * @version 1.0
 */
public class FileUtils {

	/**
	 * 读取目录中的所有文件名包括后缀
	 * 
	 * @param dir
	 *            目录
	 * @return 返回文件名
	 */
	public static String findFileByDir(String dir) {
		String fileNameStr = "";
		File file = new File(dir);
		if ("".equals(dir) || dir == null) {
			return "";
		} else {
			String[] fileName = file.list();
			for (int i = 0; i < fileName.length; i++) {
				if (new File(fileName[i]).isDirectory()) {
					// 如果发现文件夹 递归进行列出文件
					findFileByDir(fileName[i]);
				} else {
					// 如果为文件打印出文件
					fileNameStr += fileName[i] + ";";
				}
			}
			return fileNameStr;
		}
	}

	/**
	 * 读取txt中的文件内容
	 * 
	 * @param filePath
	 *            文件路径
	 * @return 文件内容
	 */
	public static StringBuffer readTxtFile(String filePath) {
		StringBuffer sb = new StringBuffer();
		try {
			String encoding = "utf-8";
			File file = new File(filePath);
			if (file.isFile() && file.exists()) { // 判断文件是否存在
				InputStreamReader read = new InputStreamReader(new FileInputStream(file), encoding);// 考虑到编码格式
				BufferedReader bufferedReader = new BufferedReader(read);
				String lineTxt = null;
				while ((lineTxt = bufferedReader.readLine()) != null) {
					sb.append(lineTxt + "\n");
				}
				read.close();
			} else {
				System.out.println("找不到指定的文件");
			}
		} catch (Exception e) {
			System.out.println("读取文件内容出错");
			e.printStackTrace();
		}
		return sb;
	}

	/**
	 * 将文件中的所有txt文件的内容读取出来
	 * 
	 * @param fileDirPath
	 *            文件目录
	 * @return txt文件的内容
	 */
	public static List<String[]> readTxtFileContentFromDir(String fileDirPath) {
		List<String[]> fileContentList = new ArrayList<String[]>();
		String[] fileNames = FileUtils.findFileByDir(fileDirPath).split(";");
		for (String fileName : fileNames) {
			if (fileName.contains(".txt")) {
				String filePath = fileDirPath + "/" + fileName;
				String[] fileContent = FileUtils.readTxtFile(filePath).toString().split("\n");
				for (String string : fileContent) {
					if (string.contains("\t")) {
						String[] result = string.split("\t");
						fileContentList.add(result);
					}
				}
			}
		}
		return fileContentList;
	}
}
