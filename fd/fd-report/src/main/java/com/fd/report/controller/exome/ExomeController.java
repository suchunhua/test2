package com.fd.report.controller.exome;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fd.core.constant.Constant;
import com.fd.core.entity.CollInfo;
import com.fd.core.entity.Customer;
import com.fd.core.entity.DruAssGather;
import com.fd.core.entity.Inactivating;
import com.fd.core.entity.Nutrient;
import com.fd.core.entity.NutrientDet;
import com.fd.core.entity.Nutrition;
import com.fd.core.entity.SelfIll;
import com.fd.core.entity.SelfTest;
import com.fd.core.entity.UncertainWhite;
import com.fd.core.entity.VarDrugResult;
import com.fd.core.entity.illness;
import com.fd.core.service.CollInfoService;
import com.fd.core.service.ExomeService;
import com.fd.core.service.FirstService;
import com.fd.core.service.exome.DrugRiskService;
import com.fd.core.service.exome.RiskConstitutionService;
import com.fd.core.utils.CoreServletUtils;
import com.fd.tools.config.ConfigUtils;
import com.fd.tools.datahandle.StringOptUtils;
import com.fd.tools.transfrom.TransfromUtils;
import com.fd.tools.web.ServletUtils;
import com.github.pagehelper.PageInfo;

/**
 * @author zengxiaohui
 * @date 2017年2月18日
 * @version 1.0
 * @Copyright
 */
@Controller
@RequestMapping(value = "exome")
public class ExomeController {

	@Autowired
	private CollInfoService collInfoService; // 收样信息服务

	@Autowired
	private ExomeService exomeService;
	
	@Autowired
	private DrugRiskService drugRiskService;

	@Autowired
	private RiskConstitutionService riskConstitutionService;
	
	@Autowired
	private FirstService firstService;

	// 全外检测的所有基因
	@RequestMapping(value = "all")
	public String all() {
		return "exome/all";
	}

	// 个人详情
	@RequestMapping(value = "person")
	public String person(ModelMap model) {
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		String sampKind1 = collInfoService.selectSampKind(collInfo.getSampType()).getSampKind().equals("组织") ? "FFPE"
				: "cfDNA";
		model.put("sampKind1", sampKind1);
		model.put("comSize", collInfoService.selectComSizeByCollInfoId(collInfo.getCollInfoId()));
		return "exome/society";
	}

	@RequestMapping(value = "ggph")
	public String ggph(ModelMap model) {
		model.put("interestTestList", exomeService.getInterestTestList("sensory"));
		return "exome/sense";
	}

	@RequestMapping(value = "ggphDet")
	public String ggphDet(String testContent, ModelMap model) {
		testContent = testContent.replaceAll("%Null%", " ");
		model.put("interestTestDetail", exomeService.getInterestTestDetail(testContent, "sensory"));
		return "exome/sense1";
	}

	@RequestMapping(value = "zlsc")
	public String zlsc(ModelMap model) {
		model.put("interestTestList", exomeService.getInterestTestList("intelligence"));
		return "exome/intelligence";
	}

	@RequestMapping(value = "zlscDet")
	public String zlscDet(String testContent, ModelMap model) {
		testContent = testContent.replaceAll("%Null%", " ");
		model.put("interestTestDetail", exomeService.getInterestTestDetail(testContent, "intelligence"));
		return "exome/intelligence1";
	}

	@RequestMapping(value = "ydtf")
	public String ydtf(ModelMap model) {
		model.put("interestTestList", exomeService.getInterestTestList("individual"));
		return "exome/sports";
	}

	@RequestMapping(value = "ydtfDet")
	public String ydtfDet(String testContent, ModelMap model) {
		testContent = testContent.replaceAll("%Null%", " ");
		model.put("interestTestDetail", exomeService.getInterestTestDetail(testContent, "individual"));
		return "exome/sports1";
	}

	@RequestMapping(value = "showFirst")
	public String showFirst(int collInfoid, ModelMap model) {
		Customer customerAccount = CoreServletUtils.getCustomerAccountFromSession();
		CollInfo collInfo = collInfoService.selByCollInfoId1(collInfoid);
		if (collInfo != null && customerAccount.getCustomerCardId().equals(collInfo.getCardId())) {
			ServletUtils.setSessionAttribute(Constant.COLLINFO, collInfo);
			ServletUtils.setSessionAttribute(Constant.SCRILL_TYPE_ARRAY, ConfigUtils.getConfig("customer.scrIllTypes").toString().split(","));
			//如果查询出"药物风险汇总"有信息那么显示链接
			if(exomeService.pageDruAssGatherByParam(collInfo.getCollInfoId(),null,null).getList().size() > 0){
				ServletUtils.setSessionAttribute(Constant.DRUG_RISK, true);
			}
			List<SelfIll> selfIllList = exomeService.listSelfIllByConllInfoId(collInfo.getCollInfoId());
			// 从配置文件中获取客户可能存在的疾病并去除客户已存在的疾病
			String[] scrIllTypeArray = ConfigUtils.getConfig("customer.scrIllTypes").toString().split(",");
			for (SelfIll selfIll : selfIllList) {
				for (int i = 0; i < scrIllTypeArray.length; i++) {
					if (scrIllTypeArray[i].equals(selfIll.getScrIllType()))
						scrIllTypeArray[i] = "null";
				}
			}
			model.put("collInfo", collInfo);
			model.put("selfIllList", selfIllList);
			model.put("scrIllTypeArray", scrIllTypeArray);
			//判断是不是first的报告
			if("FD-FIRST".equals(collInfo.getTestType())){
				model.put("FDfirstResult", firstService.listMapFirstGeneChangeByCollInfoId(collInfo.getCollInfoId()));
				return "first/report";
			}
			return "exome/Exome_view";
		} else {
			return "forward:/report/main2?urlType=main2"; // 对于不是从报告查询页面点进去的进行转发到报告查询页面
		}
	}
	
	@RequestMapping(value = "riskGrade", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> riskGrade(String grade) {
		Map<String, Object> resultMap = new HashMap<>();
		if (grade != null && !"".equals(grade)) {
			resultMap.put("flag", true);
			resultMap.put("illnessRiskGrade", riskConstitutionService.getIllnessRiskGradeByGrade(grade));
		} else {
			resultMap.put("flag", false);
			resultMap.put("error", "请传入参数");
		}
		return resultMap;
	}

	// 疾病筛查具体
	@RequestMapping(value = "jbscDet1")
	public String jbscDet1(String testContent, ModelMap model) {
		testContent = testContent.replaceAll("%Null%", " ");
		illness illness = exomeService.selectIllness(testContent);
		if (illness != null && illness.getPic() != null && !"".equals(illness.getPic())) {
			illness.setPic(illness.getPic().replace("<img src=\"img/", "").replace("\"/>", "")); // 将<img src="img/xxx.png"/>替换为xxx.png
		}
		model.put("screenDetSumList", exomeService.listScreenDetSumMap(testContent));
		model.put("illness", illness);
		return "exome/illness_gather1";
	}

	// 药物代谢检测结果1
	@RequestMapping(value = "dxjgDet1")
	public String dxjgDet1(String testContent1, String data1, Integer pageNum, ModelMap model) {
		testContent1 = testContent1.replaceAll("%Null%", " ");
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		model.put("data1", data1);
		model.put("pageNum", pageNum);
		model.put("cheDrugGeneList", collInfoService.selectCheDrugGeneByType(collInfo.getCollInfoId(), testContent1));
		model.put("drugName", testContent1);
		return "exome/drug1";
	}

	// 药物代谢检测结果2
	@RequestMapping(value = "dxjgDet2")
	public String dxjgDet2(String testContent1, String testContent2, String data1, Integer pageNum, ModelMap model) {
		model.put("data1", data1);
		model.put("pageNum", pageNum);
		testContent1 = testContent1.replaceAll("%Null%", " ");
		testContent2 = testContent2.replaceAll("%Null%", " ");
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		model.put("cheDrugGeneList",
				collInfoService.selectCheDrugGeneByMed(collInfo.getCollInfoId(), testContent1, testContent2));
		model.put("drugName", testContent2);
		return "exome/drug2";
	}

	// 附件二疑似致病突变
	@RequestMapping(value = "yszbtb")
	public String yszbtb(String yszbtbgene, Integer pageNum, ModelMap model) {
		String uncergene = yszbtbgene != null ? yszbtbgene : "";
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		Customer customer = CoreServletUtils.getCustomerAccountFromSession();
		PageInfo<UncertainWhite> pageInfo = exomeService.listByUncertainWhite(collInfo.getCollInfoId(), uncergene,
				pageNum);
		model.put("pageInfo", pageInfo);
		model.put("customer", customer);
		return "exome/suspected";
	}

	// 重要疾病具体
	@RequestMapping(value = "impjbscDet")
	public String impjbscDet(String testContent, ModelMap model) {
		testContent = testContent.replaceAll("%Null%", " ");
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		// 重要疾病汇总
		List<SelfIll> selfIllList = exomeService.selectSelfIll(collInfo.getCollInfoId(), testContent);
		VarDrugResult varDrugResult = collInfoService.selectVdrByCollInfoId(collInfo.getCollInfoId());
		String varName = varDrugResult.getVarname() + varDrugResult.getVarname1() + varDrugResult.getVarnamedjy()
				+ varDrugResult.getVarnamezd() + varDrugResult.getVarnamezl();
		for (int ill = 0; ill < selfIllList.size(); ill++) {
			String a = "";
			if (varDrugResult != null && varName.contains("</p>")) {
				String[] var = varName.replaceAll("</p>", "\\{").split("\\{");
				String varx = "";
				for (int varsize = 0; varsize < var.length; varsize++) {
					String scrchange = selfIllList.get(ill).getScrChange().trim().replaceAll(">", "&gt;")
							.replaceAll("<", "&lt;");
					if (var[varsize].contains(selfIllList.get(ill).getScrGene().trim())
							|| var[varsize].contains(scrchange)) {
						varx = varx + varsize + ",";
					}
				}
				if (varx.equals("") == false) {
					String[] varlocate = varx.split(",");
					int first = Integer.parseInt(varlocate[0]);
					int last = Integer.parseInt(varlocate[(varlocate.length) - 1]);
					for (int aaa = first; aaa <= last; aaa++) {
						a = a + var[aaa] + "</p>";
					}
				}
			} else {
				String[] var = varName
						.replaceAll("<div class=\"qwjx_wrap\"><img src=\"pic/gene_before.png\"><span class=\"qwjxjy\">",
								"\\{")
						.split("\\{");
				for (int varsize = 0; varsize < var.length; varsize++) {
					String scrchange = selfIllList.get(ill).getScrChange().trim().replaceAll(">", "&gt;")
							.replaceAll("<", "&lt;");
					if (var[varsize].contains(selfIllList.get(ill).getScrGene().trim())
							|| var[varsize].contains(scrchange)) {
						a = a + "<div class=\"qwjx_wrap\"><span class=\"qwjxjy\">" + var[varsize];
					}
				}
			}
			selfIllList.get(ill).setScrExp(a);
		}
		model.put("drugName", testContent);
		model.put("selfIllList", selfIllList);
		return "exome/impjbscDet";
	}

	// 健康相关个体体质具体
	@RequestMapping(value = "jktzDet")
	public String jktzDet(String testContent, ModelMap model) {
		testContent = testContent.replaceAll("%Null%", " ");
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		model.put("selfTestIntroduce", exomeService.selectSelfTestIntroduce(testContent));
		model.put("drugName", testContent);
		model.put("selfTestDetList", exomeService.listSelfTestDet(collInfo.getCollInfoId(), testContent));
		return "exome/jktzDet";
	}

	// 缺陷基因汇总
	@RequestMapping(value = "qxjy")
	public String qxjy(String Mix, String type, Integer pageNum, ModelMap model) {
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		List<Map<String, Object>> typeCountListMap = exomeService
				.countInactivatingTypeByCollInfoId(collInfo.getCollInfoId());
		Integer allCount = 0;
		for (Map<String, Object> map : typeCountListMap)
			allCount += Integer.parseInt(map.get("count").toString());
		PageInfo<Inactivating> pageInfo = exomeService.listInactivatingByParam(collInfo.getCollInfoId(), Mix, type,
				pageNum);
		model.put("resultMap", TransfromUtils.map2json(exomeService.listInactivatingSectionRatio()));
		model.put("typeCountMap", typeCountListMap);
		model.put("collInfo", collInfo);
		model.put("allCount", allCount);
		model.put("pageInfo", pageInfo);
		return "exome/imperfection";
	}

	@RequestMapping(value = "jbscback")
	public String diseaseCorporeity(String scrIllType, Integer pageNum, ModelMap model) {
		String[] scrIllTypes = (String[]) ServletUtils.getSessionAttribute(Constant.SCRILL_TYPE_ARRAY);
		if(StringOptUtils.hasElement(scrIllTypes, scrIllType)){
			Map<String, Object> result = riskConstitutionService.allDiseasePage(scrIllType, pageNum);
			model.put("result", result);
			model.put("pageInfo", result.get("pageInfo"));
		}else{
			CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
			PageInfo<SelfTest> pageInfo = exomeService.selectSelfTestById(collInfo.getCollInfoId(), pageNum);
			model.put("pageInfo", pageInfo);
		}
		model.put("scrIllType", scrIllType);
		return "exome/illness_gatherback";
	}

	// 药物代谢检测汇总
	@RequestMapping(value = "dxjg")
	public String dxjg(Integer pageNum, String druType, ModelMap model) {
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		PageInfo<DruAssGather> pageInfo = exomeService.pageDruAssGatherByParam(collInfo.getCollInfoId(), druType,
				pageNum);
		model.put("pageInfo", pageInfo);
		return "exome/drug";
	}

	// 药物转运蛋白和药物代谢酶类基因信息汇总
	@RequestMapping(value = "zydb")
	public String zydb(Integer pageNum, ModelMap model) {
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		PageInfo<Map<String,Object>> pageInfo = drugRiskService.pageDruPointById(collInfo.getCollInfoId(), pageNum,"");
		model.put("pageInfo", pageInfo);
		return "exome/zydb";
	}

	// 营养代谢检测结果汇总\感官偏好筛查结果汇总\智力筛查结果汇总\运动天赋筛查结果汇总
	@RequestMapping(value = "yydx")
	public String yydx(ModelMap model, Integer pageNum) {
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		PageInfo<Nutrient> pageInfo = exomeService.queryListByPage(pageNum, collInfo.getCollInfoId());
		model.put("pageInfo", pageInfo);
		return "exome/nutrition";
	}

	// 营养代谢检测具体\感官偏好筛查具体\智力筛查具体\运动天赋具体
	@RequestMapping(value = "yydxDet")
	public String yydxDet(String data3, String data4, String testContent, ModelMap model) {
		testContent = testContent.replaceAll("%Null%", " ");
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		Nutrition nutrition = exomeService.selectNutrition(testContent);
		List<NutrientDet> nutrientDetList = exomeService.selectNutrientDetByType(collInfo.getCollInfoId(), testContent);
		if("酒精代谢".equals(testContent)){
			model.put("alcoholResult", TransfromUtils.map2json(exomeService.listAlcohol(collInfo.getCollInfoId())));
		}
		model.put("data3", data3);
		model.put("data4", data4);
		model.put("nutrition", nutrition);
		model.put("nutrientDetList", nutrientDetList);
		return "exome/nutrition1";
	}

}
