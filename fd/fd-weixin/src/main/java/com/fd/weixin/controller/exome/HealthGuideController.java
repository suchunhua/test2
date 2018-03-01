package com.fd.weixin.controller.exome;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fd.core.entity.illness;
import com.fd.core.service.ExomeService;
import com.fd.core.service.exome.HealthGuideService;
import com.fd.weixin.vo.HeaderVo;

@Controller
@RequestMapping(value = "exome")
public class HealthGuideController {

	@Autowired
	private HealthGuideService healthGuideService;

	@Autowired
	private ExomeService exomeService;

	@RequestMapping(value = "healthGuide", method = RequestMethod.GET)
	public String healthGuide(ModelMap model) {
		// HeaderVo headerVo = new
		// HeaderVo("title","icon-fd-menu-black","headerMenuSwitch()","健康指导",false);
		HeaderVo headerVo = new HeaderVo("title", "", "", "健康指导", true);
		model.put("headerVo", headerVo);
		return "exome/healthGuide/index";
	}

	@RequestMapping(value = "healthGuide/diseaseRisk", method = RequestMethod.GET)
	public String diseaseRisk(String manage, ModelMap model) {
		// 不用带黑色菜单的HeaderVo headerVo = new
		// HeaderVo("title","icon-fd-menu-black","headerMenuSwitch()","疾病风险相关健康管理",false);
		HeaderVo headerVo = null;
		switch (manage) {
		case "diseaseRisk":
			headerVo = new HeaderVo("title", "", "", "疾病风险筛查", true);
			model.put("titleInfo", "疾病风险相关健康管理");
			model.put("listHealthGuidance", healthGuideService.healthGuidance("diseaseRisk"));
			break;
		case "corporeity":
			headerVo = new HeaderVo("title", "", "", "个体体质检测", true);
			model.put("titleInfo", "个体体质相关健康管理");
			model.put("listHealthGuidance", healthGuideService.healthGuidance("corporeity"));
			break;
		case "drugRisk":
			headerVo = new HeaderVo("title", "", "", "用药风险检测", true);
			model.put("titleInfo", "药物风险相关健康管理");
			model.put("listHealthGuidance", healthGuideService.healthGuidance("drugRisk"));
			break;
		case "nutrition":
			headerVo = new HeaderVo("title", "", "", "营养代谢检测", true);
			model.put("titleInfo", "营养代谢能力相关健康管理");
			model.put("listHealthGuidance", healthGuideService.healthGuidance("nutrition"));
			break;
		default:
			break;
		}
		model.put("headerVo", headerVo);
		return "exome/healthGuide/list";
	}

	@RequestMapping(value = "healthGuide/diseaseRisk/detail", method = RequestMethod.POST)
	public String diseaseRiskDetail(String testContent, String scrIll, ModelMap model) {
		HeaderVo headerVo = new HeaderVo("title", "", "", scrIll, true);
		model.put("headerVo", headerVo);
		// 获取疾病图片
		illness illness = exomeService.selectIllness(scrIll.trim());
		if (illness != null && illness.getPic() != null && !"".equals(illness.getPic())) {
			illness.setPic(illness.getPic().replace("<img src=\"img/", "").replace("\"/>", "")); // 将<img
																									// src="img/xxx.png"/>替换为xxx.png
		}
		testContent = (testContent.indexOf("健康指导：") != -1) ? StringUtils.substringAfter(testContent, "健康指导：")
				: testContent;
		/*
		 * List<String> titles = StringOptUtils.between2Strings(testContent, "）", "：");
		 * List<String> contents = StringOptUtils.between2Strings(testContent, "：",
		 * "；");
		 */
		model.put("testContent", testContent);
		model.put("titleInfo", scrIll);
		model.put("illness", illness);
		return "exome/healthGuide/detail";
	}
}
