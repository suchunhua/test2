package com.fd.report.controller.exome;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fd.core.service.exome.HealthGuideService;

@Controller
@RequestMapping(value = "health")
public class HealthController {

	@Autowired
	private HealthGuideService healthGuideService;

	@RequestMapping(value = "diseaseRisk")
	public String diseaseRisk(ModelMap model) {
		model.put("listHealthGuidance", healthGuideService.healthGuidance("diseaseRisk"));
		model.put("titleInfo", "疾病风险相关健康管理");
		model.put("bigTitle", "疾病风险相关健康管理");
		return "exome/health";
	}

	@RequestMapping(value = "corporeity")
	public String corporeity(ModelMap model) {
		model.put("listHealthGuidance", healthGuideService.healthGuidance("corporeity"));
		model.put("titleInfo", "个体体质相关健康管理");
		model.put("bigTitle", "个体体质相关健康管理");
		return "exome/health";
	}

	@RequestMapping(value = "drugRisk")
	public String drugRisk(ModelMap model) {
		model.put("listHealthGuidance", healthGuideService.healthGuidance("drugRisk"));
		model.put("titleInfo", "药物风险相关健康管理");
		model.put("bigTitle", "药物风险相关健康管理");
		return "exome/health";
	}

	@RequestMapping(value = "nutrition")
	public String nutrition(ModelMap model) {
		model.put("listHealthGuidance", healthGuideService.healthGuidance("nutrition"));
		model.put("titleInfo", "营养代谢能力相关健康管理");
		model.put("bigTitle", "营养代谢能力相关健康管理");
		return "exome/health";
	}

}
