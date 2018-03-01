package com.fd.report.controller.report;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.jsoup.nodes.Document;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fd.core.entity.CfdaComment1;
import com.fd.core.entity.CfdaComment2;
import com.fd.core.entity.CfdaComment3;
import com.fd.core.entity.CfdaComment4;
import com.fd.core.entity.CheDrugGene;
import com.fd.core.entity.CheDrugTip;
import com.fd.core.entity.Cnv;
import com.fd.core.entity.CollInfo;
import com.fd.core.entity.ComSize;
import com.fd.core.entity.CommentSum;
import com.fd.core.entity.Customer;
import com.fd.core.entity.Dna;
import com.fd.core.entity.DrugAssTip;
import com.fd.core.entity.DrugUse;
import com.fd.core.entity.GaSumVarImp;
import com.fd.core.entity.GenSusGeneParse;
import com.fd.core.entity.HighFreGeneTest;
import com.fd.core.entity.Pathway;
import com.fd.core.entity.Remark;
import com.fd.core.entity.SpecGene;
import com.fd.core.entity.SumVarImp;
import com.fd.core.entity.TestIll;
import com.fd.core.entity.TestResultSum;
import com.fd.core.entity.VarAna;
import com.fd.core.entity.VarAnaDet;
import com.fd.core.entity.VarDrugResult;
import com.fd.core.service.CollInfoService;
import com.fd.core.service.exome.CertificateService;
import com.fd.core.utils.CoreServletUtils;
import com.fd.tools.config.ConfigUtils;
import com.fd.tools.crawler.CrawlerUtils;
import com.fd.tools.web.ServletUtils;

/**
 * @author zengxiaohui
 * @date 2017年2月18日
 * @version 1.0
 * @Copyright
 */
@Controller
@RequestMapping(value = "report")
public class ReportFdController {

	@Autowired
	private CollInfoService collInfoService; // 收样信息服务
	
	@Autowired
	private CertificateService certificateService;

	// 客户登陆查看自己的报告
	@RequestMapping(value = "main1")
	public String main1(ModelMap model) {
		Customer customer = CoreServletUtils.getCustomerAccountFromSession();
		String card = customer.getCustomerCardId();
		model.put("collInfoList", collInfoService.selectByCardId(card));
		return "report_sel";
	}

	@RequestMapping(value = "main2")
	public String main2(ModelMap model) {
		Customer customer = CoreServletUtils.getCustomerAccountFromSession();
		model.put("collInfoList", collInfoService.selectByCardId1(customer.getCustomerCardId()));
		return "report_det";
	}
	
	@RequestMapping(value = "certificate")
	public String certificate(ModelMap model,String collInfoid,String FDautoUrl) {
		String url = ConfigUtils.getConfig("pdfDownloadUrl").toString()+FDautoUrl+".action?collInfoId="+collInfoid;
		Document document = certificateService.getDocument(url);
		String resultDocument = document.toString().replaceAll("fd_cone/", ServletUtils.getDomainAndProjectPath()+"static/FDauto/");
		model.put("document", resultDocument);
		return "FDauto/certificate";
	}
	
	@RequestMapping(value = "downloadPdf")
	@ResponseBody
	public String downloadPdf(HttpServletResponse response, String collInfoid,String FDautoUrl,String FDautoMethod,String outputFileName) {
		String pdfDownloadUrl = ConfigUtils.getConfig("pdfDownloadUrl").toString() + FDautoUrl + ".action";
		return crawlerFileFromFDauto(response,pdfDownloadUrl,collInfoid,outputFileName,"method:"+FDautoMethod);
	}
	
	private String crawlerFileFromFDauto(HttpServletResponse response, String pdfDownloadUrl,String collInfoid,String fileSuffix,String method){
		CollInfo collinfo = collInfoService.selByCollInfoId1(Integer.parseInt(collInfoid));
		if (collinfo != null
				&& collinfo.getCardId().equals(CoreServletUtils.getCustomerAccountFromSession().getCustomerCardId())) {
			String fileName = collinfo.getBookCode() + fileSuffix +".pdf";
			Map<String, String> dataMap = new HashMap<String, String>();
			dataMap.put("grbh", collInfoid);
			dataMap.put(method, "导出");
			if(CrawlerUtils.downloadFromPost(pdfDownloadUrl, dataMap, response, fileName)){
				return "导出成功，可以关闭此窗口了";
			}else{
				return "导出失败，关闭窗口重试";
			}
		}
		return "导出失败，关闭窗口重试";
	}

	@RequestMapping(value = "showFD")
	public String showFD(int collInfoid, ModelMap model) {
		List<DrugAssTip> drugAssTipList1 = new ArrayList<DrugAssTip>();
		String jxwkl = null;
		List<Pathway> pathwayList2 = new ArrayList<Pathway>();
		List<Pathway> pathwayList3 = new ArrayList<Pathway>();
		List<Pathway> pathwayList4 = new ArrayList<Pathway>();
		List<Pathway> pathwayList5 = new ArrayList<Pathway>();
		List<Pathway> pathwayList6 = new ArrayList<Pathway>();
		List<Pathway> pathwayList7 = new ArrayList<Pathway>();
		List<Pathway> pathwayList8 = new ArrayList<Pathway>();
		List<Pathway> pathwayList9 = new ArrayList<Pathway>();
		List<Pathway> pathwayList10 = new ArrayList<Pathway>();
		List<Pathway> pathwayList11 = new ArrayList<Pathway>();
		List<Pathway> pathwayList12 = new ArrayList<Pathway>();
		List<Pathway> pathwayList13 = new ArrayList<Pathway>();
		List<Pathway> pathwayList14 = new ArrayList<Pathway>();
		List<Pathway> pathwayList15 = new ArrayList<Pathway>();
		List<Pathway> pathwayList16 = new ArrayList<Pathway>();
		List<Pathway> pathwayList17 = new ArrayList<Pathway>();
		List<Pathway> pathwayList18 = new ArrayList<Pathway>();
		List<Pathway> pathwayList19 = new ArrayList<Pathway>();
		List<Pathway> pathwayList20 = new ArrayList<Pathway>();
		List<Pathway> pathwayListtemp = new ArrayList<Pathway>();
		List<Pathway> pathwayList = new ArrayList<Pathway>();
		CollInfo collInfo = collInfoService.selByCollInfoId1(collInfoid);
		int collInfoId = collInfo.getCollInfoId();
		model.put("collInfo", collInfo);
		String illname = collInfo.getTestIll();
		String reg = "[^\u4e00-\u9fa5]";
		if (illname.equals("Pa-paget病")) {
			illname = "paget病";
		} else {
			illname = illname.replaceAll(reg, "");
		}
		String testIll1 = illname;
		model.put("testIll1", testIll1);
		if (collInfo.getIll() == null || collInfo.getIll().length() == 0) {
			collInfo.setIll(illname);
			collInfo.setCollInfoId(collInfoId);
			collInfoService.updateCollInfoByCollInfoId(collInfo);
		}
		TestResultSum testResultSum = collInfoService.selectTRSByCollInfoId(collInfo.getCollInfoId());
		Remark remark = collInfoService.selectRemarkByCollInfoId(collInfo.getCollInfoId());
		model.put("remark", remark);
		// size
		ComSize comSize = collInfoService.selectComSizeByCollInfoId(collInfo.getCollInfoId());
		// 靶向用药提示
		List<DrugUse> drugUseList = collInfoService.selectDrugUseByCollInfoId(collInfo.getCollInfoId());
		// 注释用药
		List<CommentSum> commentSumList = collInfoService.selectComment();
		// cfda
		List<CfdaComment1> cfdaCommentList1 = collInfoService.selectCfdaComment1ByCollInfoId(collInfo.getCollInfoId());
		List<CfdaComment2> cfdaCommentList2 = collInfoService.selectCfdaComment2ByCollInfoId(collInfo.getCollInfoId());
		List<CfdaComment3> cfdaCommentList3 = collInfoService.selectCfdaComment3ByCollInfoId(collInfo.getCollInfoId());
		List<CfdaComment4> cfdaCommentList4 = collInfoService.selectCfdaComment4ByCollInfoId(collInfo.getCollInfoId());
		// 化疗药物提示
		List<CheDrugTip> cheDrugTipList = collInfoService.selectCheDrugTipListCollInfoId(collInfo.getCollInfoId());
		List<DrugAssTip> drugAssTipList = collInfoService.selectDrugAssTipByIll(collInfo.getCollInfoId());
		TestIll illkind = collInfoService.selectIll(collInfo.getTestIll());
		if (illkind.getTestIllShort().equals("小细胞肺癌")) {
			for (int i = 0; i < drugAssTipList.size(); i++) {
				if (drugAssTipList.get(i).getIllName().equals("小细胞肺癌")) {
					DrugAssTip drugAssTip = new DrugAssTip();
					drugAssTip.setRecom(drugAssTipList.get(i).getRecom());
					drugAssTip.setDrug(drugAssTipList.get(i).getDrug());
					drugAssTip.setSensitivity(drugAssTipList.get(i).getSensitivity());
					drugAssTip.setVirulence(drugAssTipList.get(i).getVirulence());
					drugAssTipList1.add(drugAssTip);
				}
			}
		} else if (illkind.getTestIllShort().equals("非小细胞肺癌") || illkind.getTestIllShort().equals("肺癌")) {
			for (int i = 0; i < drugAssTipList.size(); i++) {
				if (drugAssTipList.get(i).getIllName().equals("非小细胞肺癌")) {
					DrugAssTip drugAssTip = new DrugAssTip();
					drugAssTip.setRecom(drugAssTipList.get(i).getRecom());
					drugAssTip.setDrug(drugAssTipList.get(i).getDrug());
					drugAssTip.setSensitivity(drugAssTipList.get(i).getSensitivity());
					drugAssTip.setVirulence(drugAssTipList.get(i).getVirulence());
					drugAssTipList1.add(drugAssTip);
				}
			}
		} else {
			for (int i = 0; i < drugAssTipList.size(); i++) {
				if (drugAssTipList.get(i).getIllName().contains(collInfo.getIll())) {
					DrugAssTip drugAssTip = new DrugAssTip();
					drugAssTip.setRecom(drugAssTipList.get(i).getRecom());
					drugAssTip.setDrug(drugAssTipList.get(i).getDrug());
					drugAssTip.setSensitivity(drugAssTipList.get(i).getSensitivity());
					drugAssTip.setVirulence(drugAssTipList.get(i).getVirulence());
					drugAssTipList1.add(drugAssTip);
				}
			}
		}
		// 重要致癌基因
		List<SumVarImp> sumVarImpList = collInfoService.selectSipByCollInfoId(collInfo.getCollInfoId());
		// 遗传易感基因
		List<GaSumVarImp> gaSumVarImpList = collInfoService.selectGsipByCollInfoId(collInfo.getCollInfoId());
		// cnv dna
		List<Cnv> cnvList = collInfoService.selectCnvByCollInfoId(collInfoId);
		List<Dna> dnaList = collInfoService.selectDnaByCollInfoId(collInfoId);
		// 化疗药物相关基因
		List<CheDrugGene> cheDrugGeneList = collInfoService.selectCheDrugGeneByCollInfoId(collInfo.getCollInfoId());
		// 重要变异/用药结果解析
		VarDrugResult varDrugResult = collInfoService.selectVdrByCollInfoId(collInfo.getCollInfoId());
		// 癌高频突变基因检测
		HighFreGeneTest highFreGeneTest = collInfoService.selectHFGTByCollInfoId(collInfo.getCollInfoId());
		// 遗传易感基因解析
		GenSusGeneParse genSusGeneParse = collInfoService.selectGSGPByCollInfoId(collInfo.getCollInfoId());
		// varAna
		VarAnaDet varAnaDet = collInfoService.selectVarAnaDetByCollInfoId(collInfo.getCollInfoId());
		if (varAnaDet.getAnaDet().trim().length() == 0) {
			jxwkl = "0";
		} else {
			jxwkl = "1";
		}
		List<VarAna> varAnaList = collInfoService.selectVarAnaByCollInfoId(collInfo.getCollInfoId());
		// 特异性基因变异
		List<SpecGene> specGeneList = collInfoService.selectSpecGeneByCollInfoId(collInfo.getCollInfoId());
		// 信号通路
		List<Pathway> pathwayList1 = collInfoService.selectPathByCollInfoId(collInfoId, "细胞表面激酶受体");
		if (pathwayList1.size() != 0) {
			pathwayList2 = collInfoService.selectPathByCollInfoId(collInfoId, "MAP信号通路");
			pathwayList3 = collInfoService.selectPathByCollInfoId(collInfoId, "PI3K信号通路");
			pathwayList4 = collInfoService.selectPathByCollInfoId(collInfoId, "JAK/STAT信号通路");
			pathwayList5 = collInfoService.selectPathByCollInfoId(collInfoId, "DNA修复通路");
			pathwayList6 = collInfoService.selectPathByCollInfoId(collInfoId, "细胞周期");
			pathwayList7 = collInfoService.selectPathByCollInfoId(collInfoId, "融合激酶");
			pathwayList8 = collInfoService.selectPathByCollInfoId(collInfoId, "Hedgehog通路");
			pathwayList9 = collInfoService.selectPathByCollInfoId(collInfoId, "染色质重构");
			pathwayList10 = collInfoService.selectPathByCollInfoId(collInfoId, "激素及受体");
			pathwayList11 = collInfoService.selectPathByCollInfoId(collInfoId, "免疫检查点");
			pathwayList12 = collInfoService.selectPathByCollInfoId(collInfoId, "WNT信号通路");
			pathwayList13 = collInfoService.selectPathByCollInfoId(collInfoId, "G蛋白");
			pathwayList14 = collInfoService.selectPathByCollInfoId(collInfoId, "细胞能量代谢");
			pathwayList15 = collInfoService.selectPathByCollInfoId(collInfoId, "TGF通路");
			pathwayList16 = collInfoService.selectPathByCollInfoId(collInfoId, "凋亡");
			pathwayList17 = collInfoService.selectPathByCollInfoId(collInfoId, "转录调节因子");
			pathwayList18 = collInfoService.selectPathByCollInfoId(collInfoId, "黏附素");
			pathwayList19 = collInfoService.selectPathByCollInfoId(collInfoId, "非受体蛋白酪氨酸激酶(SRC家族)");
			pathwayList20 = collInfoService.selectPathByCollInfoId(collInfoId, "其它");
			Pathway pathway1 = new Pathway();
			pathwayListtemp = collInfoService.selectPath1ByCollInfoId(collInfoId, "细胞表面激酶受体");
			pathway1.setPathClass("细胞表面激酶受体");
			pathway1.setPathGene(pathwayListtemp.get(0).getPathGene());
			pathway1.setPathChange(pathwayListtemp.get(0).getPathChange());
			if (pathwayListtemp.get(0).getPathRatio().equals("0.00%")) {
				pathway1.setPathRatio("0");
			} else {
				pathway1.setPathRatio(pathwayListtemp.get(0).getPathRatio());
			}
			pathwayList.add(pathway1);
			Pathway pathway2 = new Pathway();
			pathwayListtemp = collInfoService.selectPath1ByCollInfoId(collInfoId, "MAP信号通路");
			pathway2.setPathClass("MAP 信号通路");
			pathway2.setPathGene(pathwayListtemp.get(0).getPathGene());
			pathway2.setPathChange(pathwayListtemp.get(0).getPathChange());
			if (pathwayListtemp.get(0).getPathRatio().equals("0.00%")) {
				pathway2.setPathRatio("0");
			} else {
				pathway2.setPathRatio(pathwayListtemp.get(0).getPathRatio());
			}
			pathwayList.add(pathway2);
			Pathway pathway3 = new Pathway();
			pathwayListtemp = collInfoService.selectPath1ByCollInfoId(collInfoId, "PI3K信号通路");
			pathway3.setPathClass("PI3K 信号通路");
			pathway3.setPathGene(pathwayListtemp.get(0).getPathGene());
			pathway3.setPathChange(pathwayListtemp.get(0).getPathChange());
			if (pathwayListtemp.get(0).getPathRatio().equals("0.00%")) {
				pathway3.setPathRatio("0");
			} else {
				pathway3.setPathRatio(pathwayListtemp.get(0).getPathRatio());
			}
			pathwayList.add(pathway3);
			Pathway pathway4 = new Pathway();
			pathwayListtemp = collInfoService.selectPath1ByCollInfoId(collInfoId, "JAK/STAT信号通路");
			pathway4.setPathClass("JAK/STAT 信号通路");
			pathway4.setPathGene(pathwayListtemp.get(0).getPathGene());
			pathway4.setPathChange(pathwayListtemp.get(0).getPathChange());
			if (pathwayListtemp.get(0).getPathRatio().equals("0.00%")) {
				pathway4.setPathRatio("0");
			} else {
				pathway4.setPathRatio(pathwayListtemp.get(0).getPathRatio());
			}
			pathwayList.add(pathway4);
			Pathway pathway5 = new Pathway();
			pathwayListtemp = collInfoService.selectPath1ByCollInfoId(collInfoId, "DNA修复通路");
			pathway5.setPathClass("DNA 修复通路");
			pathway5.setPathGene(pathwayListtemp.get(0).getPathGene());
			pathway5.setPathChange(pathwayListtemp.get(0).getPathChange());
			if (pathwayListtemp.get(0).getPathRatio().equals("0.00%")) {
				pathway5.setPathRatio("0");
			} else {
				pathway5.setPathRatio(pathwayListtemp.get(0).getPathRatio());
			}
			pathwayList.add(pathway5);
			Pathway pathway6 = new Pathway();
			pathwayListtemp = collInfoService.selectPath1ByCollInfoId(collInfoId, "细胞周期");
			pathway6.setPathClass("细胞周期");
			pathway6.setPathGene(pathwayListtemp.get(0).getPathGene());
			pathway6.setPathChange(pathwayListtemp.get(0).getPathChange());
			if (pathwayListtemp.get(0).getPathRatio().equals("0.00%")) {
				pathway6.setPathRatio("0");
			} else {
				pathway6.setPathRatio(pathwayListtemp.get(0).getPathRatio());
			}
			pathwayList.add(pathway6);
			Pathway pathway7 = new Pathway();
			pathwayListtemp = collInfoService.selectPath1ByCollInfoId(collInfoId, "融合激酶");
			pathway7.setPathClass("融合激酶");
			pathway7.setPathGene(pathwayListtemp.get(0).getPathGene());
			pathway7.setPathChange(pathwayListtemp.get(0).getPathChange());
			if (pathwayListtemp.get(0).getPathRatio().equals("0.00%")) {
				pathway7.setPathRatio("0");
			} else {
				pathway7.setPathRatio(pathwayListtemp.get(0).getPathRatio());
			}
			pathwayList.add(pathway7);
			Pathway pathway8 = new Pathway();
			pathwayListtemp = collInfoService.selectPath1ByCollInfoId(collInfoId, "Hedgehog通路");
			pathway8.setPathClass("Hedgehog 通路");
			pathway8.setPathGene(pathwayListtemp.get(0).getPathGene());
			pathway8.setPathChange(pathwayListtemp.get(0).getPathChange());
			if (pathwayListtemp.get(0).getPathRatio().equals("0.00%")) {
				pathway8.setPathRatio("0");
			} else {
				pathway8.setPathRatio(pathwayListtemp.get(0).getPathRatio());
			}
			pathwayList.add(pathway8);
			Pathway pathway9 = new Pathway();
			pathwayListtemp = collInfoService.selectPath1ByCollInfoId(collInfoId, "染色质重构");
			pathway9.setPathClass("染色质重构");
			pathway9.setPathGene(pathwayListtemp.get(0).getPathGene());
			pathway9.setPathChange(pathwayListtemp.get(0).getPathChange());
			if (pathwayListtemp.get(0).getPathRatio().equals("0.00%")) {
				pathway9.setPathRatio("0");
			} else {
				pathway9.setPathRatio(pathwayListtemp.get(0).getPathRatio());
			}
			pathwayList.add(pathway9);
			Pathway pathway10 = new Pathway();
			pathwayListtemp = collInfoService.selectPath1ByCollInfoId(collInfoId, "激素及受体");
			pathway10.setPathClass("激素及受体");
			pathway10.setPathGene(pathwayListtemp.get(0).getPathGene());
			pathway10.setPathChange(pathwayListtemp.get(0).getPathChange());
			if (pathwayListtemp.get(0).getPathRatio().equals("0.00%")) {
				pathway10.setPathRatio("0");
			} else {
				pathway10.setPathRatio(pathwayListtemp.get(0).getPathRatio());
			}
			pathwayList.add(pathway10);
			Pathway pathway11 = new Pathway();
			pathwayListtemp = collInfoService.selectPath1ByCollInfoId(collInfoId, "免疫检查点");
			pathway11.setPathClass("免疫检查点");
			pathway11.setPathGene(pathwayListtemp.get(0).getPathGene());
			pathway11.setPathChange(pathwayListtemp.get(0).getPathChange());
			if (pathwayListtemp.get(0).getPathRatio().equals("0.00%")) {
				pathway11.setPathRatio("0");
			} else {
				pathway11.setPathRatio(pathwayListtemp.get(0).getPathRatio());
			}
			pathwayList.add(pathway11);
			Pathway pathway12 = new Pathway();
			pathwayListtemp = collInfoService.selectPath1ByCollInfoId(collInfoId, "WNT信号通路");
			pathway12.setPathClass("WNT 信号通路");
			pathway12.setPathGene(pathwayListtemp.get(0).getPathGene());
			pathway12.setPathChange(pathwayListtemp.get(0).getPathChange());
			if (pathwayListtemp.get(0).getPathRatio().equals("0.00%")) {
				pathway12.setPathRatio("0");
			} else {
				pathway12.setPathRatio(pathwayListtemp.get(0).getPathRatio());
			}
			pathwayList.add(pathway12);
			Pathway pathway13 = new Pathway();
			pathwayListtemp = collInfoService.selectPath1ByCollInfoId(collInfoId, "G蛋白");
			pathway13.setPathClass("G 蛋白偶联受体介导的信号通路");
			pathway13.setPathGene(pathwayListtemp.get(0).getPathGene());
			pathway13.setPathChange(pathwayListtemp.get(0).getPathChange());
			if (pathwayListtemp.get(0).getPathRatio().equals("0.00%")) {
				pathway13.setPathRatio("0");
			} else {
				pathway13.setPathRatio(pathwayListtemp.get(0).getPathRatio());
			}
			pathwayList.add(pathway13);
			Pathway pathway14 = new Pathway();
			pathwayListtemp = collInfoService.selectPath1ByCollInfoId(collInfoId, "细胞能量代谢");
			pathway14.setPathClass("细胞能量代谢");
			pathway14.setPathGene(pathwayListtemp.get(0).getPathGene());
			pathway14.setPathChange(pathwayListtemp.get(0).getPathChange());
			if (pathwayListtemp.get(0).getPathRatio().equals("0.00%")) {
				pathway14.setPathRatio("0");
			} else {
				pathway14.setPathRatio(pathwayListtemp.get(0).getPathRatio());
			}
			pathwayList.add(pathway14);
			Pathway pathway15 = new Pathway();
			pathwayListtemp = collInfoService.selectPath1ByCollInfoId(collInfoId, "TGF通路");
			pathway15.setPathClass("TGF-β通路");
			pathway15.setPathGene(pathwayListtemp.get(0).getPathGene());
			pathway15.setPathChange(pathwayListtemp.get(0).getPathChange());
			if (pathwayListtemp.get(0).getPathRatio().equals("0.00%")) {
				pathway15.setPathRatio("0");
			} else {
				pathway15.setPathRatio(pathwayListtemp.get(0).getPathRatio());
			}
			pathwayList.add(pathway15);
			Pathway pathway16 = new Pathway();
			pathwayListtemp = collInfoService.selectPath1ByCollInfoId(collInfoId, "凋亡");
			pathway16.setPathClass("凋亡");
			pathway16.setPathGene(pathwayListtemp.get(0).getPathGene());
			pathway16.setPathChange(pathwayListtemp.get(0).getPathChange());
			if (pathwayListtemp.get(0).getPathRatio().equals("0.00%")) {
				pathway16.setPathRatio("0");
			} else {
				pathway16.setPathRatio(pathwayListtemp.get(0).getPathRatio());
			}
			pathwayList.add(pathway16);
			Pathway pathway17 = new Pathway();
			pathwayListtemp = collInfoService.selectPath1ByCollInfoId(collInfoId, "转录调节因子");
			pathway17.setPathClass("转录调节因子");
			pathway17.setPathGene(pathwayListtemp.get(0).getPathGene());
			pathway17.setPathChange(pathwayListtemp.get(0).getPathChange());
			if (pathwayListtemp.get(0).getPathRatio().equals("0.00%")) {
				pathway17.setPathRatio("0");
			} else {
				pathway17.setPathRatio(pathwayListtemp.get(0).getPathRatio());
			}
			pathwayList.add(pathway17);
			Pathway pathway18 = new Pathway();
			pathwayListtemp = collInfoService.selectPath1ByCollInfoId(collInfoId, "黏附素");
			pathway18.setPathClass("黏附素");
			pathway18.setPathGene(pathwayListtemp.get(0).getPathGene());
			pathway18.setPathChange(pathwayListtemp.get(0).getPathChange());
			if (pathwayListtemp.get(0).getPathRatio().equals("0.00%")) {
				pathway18.setPathRatio("0");
			} else {
				pathway18.setPathRatio(pathwayListtemp.get(0).getPathRatio());
			}
			pathwayList.add(pathway18);
			Pathway pathway19 = new Pathway();
			pathwayListtemp = collInfoService.selectPath1ByCollInfoId(collInfoId, "非受体蛋白酪氨酸激酶(SRC家族)");
			pathway19.setPathClass("非受体蛋白酪氨酸激酶");
			pathway19.setPathGene(pathwayListtemp.get(0).getPathGene());
			pathway19.setPathChange(pathwayListtemp.get(0).getPathChange());
			if (pathwayListtemp.get(0).getPathRatio().equals("0.00%")) {
				pathway19.setPathRatio("0");
			} else {
				pathway19.setPathRatio(pathwayListtemp.get(0).getPathRatio());
			}
			pathwayList.add(pathway19);
			Pathway pathway20 = new Pathway();
			pathwayListtemp = collInfoService.selectPath1ByCollInfoId(collInfoId, "其它");
			pathway20.setPathClass("其它");
			pathway20.setPathGene(pathwayListtemp.get(0).getPathGene());
			pathway20.setPathChange(pathwayListtemp.get(0).getPathChange());
			if (pathwayListtemp.get(0).getPathRatio().equals("0.00%")) {
				pathway20.setPathRatio("0");
			} else {
				pathway20.setPathRatio(pathwayListtemp.get(0).getPathRatio());
			}
			pathwayList.add(pathway20);
		}
		model.put("commentSumList", commentSumList);
		model.put("cfdaCommentList1", cfdaCommentList1);
		model.put("cfdaCommentList2", cfdaCommentList2);
		model.put("cfdaCommentList3", cfdaCommentList3);
		model.put("cfdaCommentList4", cfdaCommentList4);
		model.put("drugAssTipList1", drugAssTipList1);
		model.put("cheDrugTipList", cheDrugTipList);
		model.put("sumVarImpList", sumVarImpList);
		model.put("cnvList", cnvList);
		model.put("dnaList", dnaList);
		model.put("gaSumVarImpList", gaSumVarImpList);
		model.put("varAnaList", varAnaList);
		model.put("specGeneList", specGeneList);
		model.put("cheDrugGeneList", cheDrugGeneList);
		model.put("pathwayList", pathwayList);
		model.put("pathwayList1", pathwayList1);
		model.put("pathwayList2", pathwayList2);
		model.put("pathwayList3", pathwayList3);
		model.put("pathwayList4", pathwayList4);
		model.put("pathwayList5", pathwayList5);
		model.put("pathwayList6", pathwayList6);
		model.put("pathwayList7", pathwayList7);
		model.put("pathwayList8", pathwayList8);
		model.put("pathwayList9", pathwayList9);
		model.put("pathwayList10", pathwayList10);
		model.put("pathwayList11", pathwayList11);
		model.put("pathwayList12", pathwayList12);
		model.put("pathwayList13", pathwayList13);
		model.put("pathwayList14", pathwayList14);
		model.put("pathwayList15", pathwayList15);
		model.put("pathwayList16", pathwayList16);
		model.put("pathwayList17", pathwayList17);
		model.put("pathwayList18", pathwayList18);
		model.put("pathwayList19", pathwayList19);
		model.put("pathwayList20", pathwayList20);
		return "exome/FD_print";
	}
}
