package com.fd.weixin.controller.exome;

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
import com.fd.core.entity.DruAssGather;
import com.fd.core.service.ExomeService;
import com.fd.core.service.exome.DrugRiskService;
import com.fd.tools.web.ServletUtils;
import com.fd.weixin.vo.HeaderVo;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping(value = "exome")
public class DrugRiskController {

	@Autowired
	private ExomeService exomeService;

	@Autowired
	private DrugRiskService drugRiskService;

	/** 药物转运蛋白和药物代谢酶类基因信息汇总 */
	@RequestMapping(value = "drugRisk/infoSummary", method = RequestMethod.GET)
	public String infoSummary(ModelMap model) {
		HeaderVo headerVo = new HeaderVo("title", "", "", "用药提示", true);
		model.put("headerVo", headerVo);
		return "exome/drugRisk/list";
	}

	/** 药物转运蛋白和药物代谢酶类基因信息汇总 */
	@RequestMapping(value = "drugRisk/infoSummary", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> getInfoSummaryByPage(Integer pageNum, ModelMap model) {
		Map<String, Object> resultMap = new HashMap<>();
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		PageInfo<Map<String, Object>> pageInfo = drugRiskService.pageDruPointById(collInfo.getCollInfoId(), pageNum,
				"group");
		resultMap.put("pageInfo", pageInfo);
		return resultMap;
	}

	/** 药物转运蛋白和药物代谢酶类基因信息汇总内容详情展示 */
	@RequestMapping(value = "drugRisk/infoSummary/detail", method = RequestMethod.GET)
	public String getInfoSummaryDetail(String drug, ModelMap model) {
		HeaderVo headerVo = new HeaderVo("title", "", "", drug, true);
		model.put("headerVo", headerVo);
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		List<Map<String, Object>> listDruPoint = drugRiskService.listDruPointByDrug(collInfo.getCollInfoId(), drug, "");
		model.put("listDruPoint", listDruPoint);
		return "exome/drugRisk/detail";
	}

	/** 药物风险汇总 这个模块存在但是展示不开放路径 */
	@RequestMapping(value = "drugRisk/riskSummary", method = RequestMethod.GET)
	public String riskSummary(ModelMap model) {
		HeaderVo headerVo = new HeaderVo("title", "icon-fd-menu-black", "headerMenuSwitch()", "用药提示", false);
		model.put("dataType", "riskSummary");
		model.put("headerVo", headerVo);
		return "exome/drugRisk/index";
	}

	/** 药物风险汇总 这个模块存在但是展示不开放路径 */
	@RequestMapping(value = "drugRisk/riskSummary", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> getRiskSummaryByPage(String druType, Integer pageNum, ModelMap model) {
		Map<String, Object> resultMap = new HashMap<>();
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		PageInfo<DruAssGather> pageInfo = exomeService.pageDruAssGatherByParam(collInfo.getCollInfoId(), druType,
				pageNum);
		resultMap.put("pageInfo", pageInfo);
		return resultMap;
	}
}
