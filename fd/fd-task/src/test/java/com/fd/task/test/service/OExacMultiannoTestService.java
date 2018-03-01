package com.fd.task.test.service;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.fd.task.common.BaseTest;
import com.fd.task.dao.OExacMultiannoMapper;
import com.fd.task.entity.OExacMultiannoWithBLOBs;
import com.fd.tools.file.FileUtils;

public class OExacMultiannoTestService extends BaseTest {

	@Autowired
	private OExacMultiannoMapper oExacMultiannoMapper;
	
	private final String fileDirPath = "C:/Users/zeng_xiaohui/Desktop/multianno";
	
	@Test
	public void importDataFromTxt(){
		List<OExacMultiannoWithBLOBs> OExacMultiannoWithBLOBsList = new ArrayList<OExacMultiannoWithBLOBs>();
		String[] fileNames = FileUtils.findFileByDir(fileDirPath).split(";");
		for (String fileName : fileNames) {
			if (fileName.contains(".txt")) {
				String filePath = fileDirPath + "/" + fileName;
				System.out.println(filePath+"开始导入");
				try {
					File file = new File(filePath);
					InputStreamReader read = new InputStreamReader(new FileInputStream(file), "utf-8");// 考虑到编码格式
					BufferedReader bufferedReader = new BufferedReader(read);
					String string = null;
					while ((string = bufferedReader.readLine()) != null) {
						if (string.contains("\t")) {
							String[] strings = string.split("\t");
							if(!strings[0].equals("#Chr")){
								OExacMultiannoWithBLOBs oExacMultiannoWithBLOBs = new OExacMultiannoWithBLOBs();
								for(int i = 12; i < strings.length;i++){
									strings[i] = (strings[i].equals(".")) ? "0" : strings[i];
								}
								strings[8] = (strings[8].equals(".")) ? null : strings[8];
								strings[9] = (strings[9].equals(".")) ? null : strings[9];
								strings[11] = (strings[11].equals(".")) ? null : strings[11];
								oExacMultiannoWithBLOBs.setChr(strings[0]);
								oExacMultiannoWithBLOBs.setStart(Integer.valueOf(strings[1]));
								oExacMultiannoWithBLOBs.setEnd(Integer.valueOf(strings[2]));
								oExacMultiannoWithBLOBs.setRef(strings[3]);
								oExacMultiannoWithBLOBs.setAlt(strings[4]);
								oExacMultiannoWithBLOBs.setFuncRefgene(strings[5]);
								oExacMultiannoWithBLOBs.setGeneRefgene(strings[6]);
								oExacMultiannoWithBLOBs.setExonicfuncRefgene(strings[8]);
								oExacMultiannoWithBLOBs.setAachangeRefgene(strings[9]);
								oExacMultiannoWithBLOBs.setCytoband(strings[10]);
								oExacMultiannoWithBLOBs.setSnp138(strings[11]);
								oExacMultiannoWithBLOBs.setExacAll(Double.parseDouble(strings[12]));
								oExacMultiannoWithBLOBs.setExacAfr(Double.parseDouble(strings[13]));
								oExacMultiannoWithBLOBs.setExacAmr(Double.parseDouble(strings[14]));
								oExacMultiannoWithBLOBs.setExacEas(Double.parseDouble(strings[15]));
								oExacMultiannoWithBLOBs.setExacFin(Double.parseDouble(strings[16]));
								oExacMultiannoWithBLOBs.setExacNfe(Double.parseDouble(strings[17]));
								oExacMultiannoWithBLOBs.setExacOth(Double.parseDouble(strings[18]));
								oExacMultiannoWithBLOBs.setExacSas(Double.parseDouble(strings[19]));
								OExacMultiannoWithBLOBsList.add(oExacMultiannoWithBLOBs);
								if(OExacMultiannoWithBLOBsList.size()>2500){
									oExacMultiannoMapper.saveListOExacMultiannoWithBLOBs(OExacMultiannoWithBLOBsList);
									OExacMultiannoWithBLOBsList.removeAll(OExacMultiannoWithBLOBsList);
								}
							}
						}
					}
					read.close();
					System.out.println(filePath+"这个文件导入结束");
				} catch (Exception e) {
					System.out.println("读取文件内容出错");
					e.printStackTrace();
				}
			}
		}
		oExacMultiannoMapper.saveListOExacMultiannoWithBLOBs(OExacMultiannoWithBLOBsList);
	}
}
