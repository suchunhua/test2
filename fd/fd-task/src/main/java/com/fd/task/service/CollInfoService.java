package com.fd.task.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fd.task.dao.CollInfoMapper;
import com.fd.task.dao.CustomerMapper;
import com.fd.task.entity.CollInfoWithBLOBs;
import com.fd.task.entity.Customer;
import com.fd.tools.config.ConfigUtils;
import com.fd.tools.datahandle.StringOptUtils;
import com.fd.tools.datasource.DataSourceHandle;
import com.fd.tools.email.EmailUtils;
import com.fd.tools.file.ClassLoaderFile;
import com.fd.tools.jedis.JedisUtils;
import com.fd.tools.transfrom.ParseUtils;
import com.fd.tools.transfrom.TransfromUtils;
import com.fd.tools.utils.SmsUtil;

@Service
public class CollInfoService {

	@Autowired
	private CollInfoMapper collInfoMapper;
	
	@Autowired
	private CustomerMapper customerMapper;
	
	//代理商名字
	private final List<String> agentName = Arrays.asList(ConfigUtils.getConfig("agent.name").toString().split(","));
	//代理商唯一标识
	private final List<String> agentCardid = Arrays.asList(ConfigUtils.getConfig("agent.cardid").toString().split(","));
	//代理商邮箱
	private final List<String> agentEmail = Arrays.asList(ConfigUtils.getConfig("agent.email").toString().split(","));
	//要新加到客户表的cardid
	private Set<String> customerCardIds = new HashSet<>();
	

	/*
	暂时还不开启此功能
	@Scheduled(cron = "0 0/30 * * * ?")
	public void autoSyncCollInfoFromSQL() {
		syncCollInfoFromSQL();
	}*/

	public void syncCollInfoFromSQL() {
		// 所有从sql数据库中查出的数据
		List<CollInfoWithBLOBs> collInfoWithBLOBsSQLAllList = new ArrayList<CollInfoWithBLOBs>();
		// 需要更新的数据
		List<CollInfoWithBLOBs> updateCollInfoWithBLOBsList = new ArrayList<CollInfoWithBLOBs>();
		// 需要插入的数据
		List<CollInfoWithBLOBs> insertCollInfoWithBLOBsList = new ArrayList<CollInfoWithBLOBs>();
		// 查看已经在mysql中的数据
		DataSourceHandle.setWriteDataSource();
		List<CollInfoWithBLOBs> collInfoWithBLOBsList = collInfoMapper.listCollInfoWithBLOBs();
		//获取所有mysql数据库中的客户帐号
		List<Customer> customerList = customerMapper.listCustomer();
		
		if(JedisUtils.exists("COM_TASK_customerCardIds")){
			JedisUtils.getSet("COM_TASK_customerCardIds");
		}else{
			for (Customer customer : customerList) {
				customerCardIds.add(customer.getCustomercardid());
			}
			//保存到redis 1天
			JedisUtils.setSet("COM_TASK_customerCardIds", customerCardIds, 1 * 24 * 60 * 60);
		}
		// 查询sql server数据库中的数据
		DataSourceHandle.setReadDataSource();
		List<Map<String, Object>> collInfoWithBLOBsSQLList = collInfoMapper.listCollInfoWithBLOBsBySQLServer();
		// 将从sql数据库查出的数据进行转换
		for (Map<String, Object> map : collInfoWithBLOBsSQLList) {
			CollInfoWithBLOBs collInfoWithBLOBs = new CollInfoWithBLOBs();
			map.put("sampcolltime", StringUtils.substring(ParseUtils.objToString(map.get("sampcolltime")), 0, 10));
			map.put("sampnum", ParseUtils.objToString(map.get("sampnum")));
			TransfromUtils.map2Bean2(map, collInfoWithBLOBs);
			// 改变性别长度
			collInfoWithBLOBs.setSex("Female".equals(collInfoWithBLOBs.getSex()) ? "女" : "男");
			collInfoWithBLOBs.setDelflag("0");// 标记为未删除
			collInfoWithBLOBs.setTestill(StringOptUtils.clearNotChinese(collInfoWithBLOBs.getTestill()));// 去除英文
			collInfoWithBLOBs.setTestproinfotestskill("目标区域捕获结合二代高通量测序");
			// 没有的数据用字符串"NA"代替
			collInfoWithBLOBs.setSendcom(null2NA(collInfoWithBLOBs.getSendcom()));
			collInfoWithBLOBs.setAge(null2NA(collInfoWithBLOBs.getAge()));
			collInfoWithBLOBs.setOtherill(null2NA(collInfoWithBLOBs.getOtherill()));
			collInfoWithBLOBs.setTestill(null2NA(collInfoWithBLOBs.getTestill()));
			collInfoWithBLOBs.setStage(null2NA(collInfoWithBLOBs.getStage()));
			collInfoWithBLOBs.setOrig(null2NA(collInfoWithBLOBs.getOrig()));
			collInfoWithBLOBs.setFamily(null2NA(collInfoWithBLOBs.getFamily()));
			collInfoWithBLOBs.setJudge(null2NA(collInfoWithBLOBs.getJudge()));
			collInfoWithBLOBs.setOtherexp(null2NA(collInfoWithBLOBs.getOtherexp()));
			collInfoWithBLOBs.setCollman(null2NA(collInfoWithBLOBs.getCollman()));
			collInfoWithBLOBs.setSampcolltime(null2NA(collInfoWithBLOBs.getSampcolltime()));
			if(agentName.contains(collInfoWithBLOBs.getSendcom())){
				collInfoWithBLOBs.setCardid(agentCardid.get(agentName.indexOf(collInfoWithBLOBs.getSendcom())));
				collInfoWithBLOBs.setPostemail(agentEmail.get(agentName.indexOf(collInfoWithBLOBs.getSendcom())));
			}
			//转换身份证数据
			for (CollInfoWithBLOBs collInfo : collInfoWithBLOBsList) {
				if (collInfoWithBLOBs.getWarehousingmanagekeyid().equals(collInfo.getWarehousingmanagekeyid()) && !collInfoWithBLOBs.getCardid().equals(collInfo.getCardid())) {
					collInfoWithBLOBs.setCardid(collInfo.getCardid());
					break;
				}
			}
			collInfoWithBLOBsSQLAllList.add(collInfoWithBLOBs);
		}
		
		if (collInfoWithBLOBsList == null || collInfoWithBLOBsList.size() == 0) {
			insertCollInfoWithBLOBsList.addAll(collInfoWithBLOBsSQLAllList);
		} else {
			for (CollInfoWithBLOBs collInfoWithBLOBs : collInfoWithBLOBsSQLAllList) {
				for (int i = 0; i < collInfoWithBLOBsList.size(); i++) {
					if (collInfoWithBLOBsList.get(i).getWarehousingmanagekeyid()
							.equals(collInfoWithBLOBs.getWarehousingmanagekeyid())) {
						updateCollInfoWithBLOBsList.add(collInfoWithBLOBs);
						break;
					} else if (i == collInfoWithBLOBsList.size() - 1) {
						insertCollInfoWithBLOBsList.add(collInfoWithBLOBs);
						break;
					}
				}
			}
		}
		// 查找删除的数据
		for (int i = 0; i < collInfoWithBLOBsList.size(); i++) {
			for (int j = 0; j < updateCollInfoWithBLOBsList.size(); j++) {
				if (collInfoWithBLOBsList.get(i).getWarehousingmanagekeyid()
						.equals(updateCollInfoWithBLOBsList.get(j).getWarehousingmanagekeyid())) {
					break;
				} else if (j == updateCollInfoWithBLOBsList.size() - 1) {
					collInfoWithBLOBsList.get(i).setDelflag("1");
					updateCollInfoWithBLOBsList.add(collInfoWithBLOBsList.get(i));
					break;
				}
			}
		}
		// 切换回写数据库
		DataSourceHandle.setWriteDataSource();
		int customerLastIndex = customerList.get(customerList.size()-1).getCustomerid();
		for (CollInfoWithBLOBs collInfoWithBLOBs : collInfoWithBLOBsSQLAllList) {
			collInfoWithBLOBs = sendAccountToCustomer(collInfoWithBLOBs,customerList,customerLastIndex);
			customerLastIndex++;
		}
		// 执行更新操作和删除操作
		if (updateCollInfoWithBLOBsList != null && updateCollInfoWithBLOBsList.size() != 0) {
			collInfoMapper.updateCollInfoBatch(updateCollInfoWithBLOBsList);
		}
		// 执行插入操作
		if (insertCollInfoWithBLOBsList != null && insertCollInfoWithBLOBsList.size() != 0) {
			collInfoMapper.insertCollInfoBatch(insertCollInfoWithBLOBsList);
		}
	}
	
	public CollInfoWithBLOBs sendAccountToCustomer(CollInfoWithBLOBs collInfoWithBLOBs,List<Customer> customerList,int customerLastIndex) {
		// 发送帐号密码给客户
		if (collInfoWithBLOBs.getCardid() == null || collInfoWithBLOBs.getCardid().equals("")) {
			String cardId = String.valueOf(System.currentTimeMillis()) + customerLastIndex;
			collInfoWithBLOBs.setCardid(cardId);
			sendAccountsToCustomer(collInfoWithBLOBs, collInfoWithBLOBs.getCardid());
		} else {
			for (Customer customer : customerList) {
				if(customer.getCustomercardid().equals(collInfoWithBLOBs.getCardid())){
					break;
				}else if(customerList.get(customerList.size()-1).equals(customer)){
					sendAccountsToCustomer(collInfoWithBLOBs, collInfoWithBLOBs.getCardid());
				}
			}
		}
		return collInfoWithBLOBs;
	}
	
	public void sendAccountsToCustomer(CollInfoWithBLOBs collInfoWithBLOBs, String cardId) {
		if(!customerCardIds.contains(cardId)){
			String customerUsername = String.valueOf((int) ((Math.random() * 9 + 1) * 100000));
			if (collInfoWithBLOBs.getTele() != null && !collInfoWithBLOBs.getTele().equals("")) {
				customerUsername = collInfoWithBLOBs.getTele();
			}else if(collInfoWithBLOBs.getPostemail()!= null && !collInfoWithBLOBs.getPostemail().equals("")){
				customerUsername = collInfoWithBLOBs.getPostemail();
			}else if (collInfoWithBLOBs.getBookcode()!= null && !collInfoWithBLOBs.getBookcode().equals("")) {
				customerUsername = collInfoWithBLOBs.getBookcode();
			}
			int customerPassword = (int) ((Math.random() * 9 + 1) * 100000);
			String customerName = (agentName.contains(collInfoWithBLOBs.getSendcom()))?collInfoWithBLOBs.getSendcom():collInfoWithBLOBs.getPatient();//客户姓名
			String emailContent = ClassLoaderFile.getAccountEmailContent(customerName, customerUsername, String.valueOf(customerPassword));//邮件内容
			Customer customerPojoUpdate = new Customer();
			customerPojoUpdate.setCustomercardid(cardId);
			customerPojoUpdate.setCustomername(customerName);
			customerPojoUpdate.setCustomeraccount(customerUsername);
			customerPojoUpdate.setCustomerpassword(String.valueOf(customerPassword));
			customerPojoUpdate.setCustomertele(collInfoWithBLOBs.getTele());
			if (customerMapper.insertSelective(customerPojoUpdate) > 0) {
				customerCardIds.add(cardId);
				JedisUtils.setSetAdd("COM_TASK_customerCardIds", cardId);
				if (collInfoWithBLOBs.getTele() != null && !collInfoWithBLOBs.getTele().equals("")) {
					if (SmsUtil.alidayuSendAccount(collInfoWithBLOBs.getTele(), customerUsername,
							String.valueOf(customerPassword))) {
						System.out.println("发送短信成功");
					} else {
						System.out.println("发送短信失败");
					}
				}
				if (collInfoWithBLOBs.getPostemail() != null && !collInfoWithBLOBs.getPostemail().equals("")) {
					if (EmailUtils.sendEmail(collInfoWithBLOBs.getPostemail(), "用户名和密码", emailContent)) {
						System.out.println("发送成功");
					} else {
						System.out.println("发送失败");
					}
				}
			}
		}
	}

	public String null2NA(String str) {
		return (str == null || "".equals(str)) ? "NA" : str;
	}
}
