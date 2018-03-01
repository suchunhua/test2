package com.fd.weixin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fd.core.service.exome.RiskConstitutionService;
import com.fd.weixin.vo.HeaderVo;

@Controller
@RequestMapping(value = "chart")
public class ChartController {

	@Autowired
	private RiskConstitutionService riskConstitutionService;

	@RequestMapping(value = "exac", method = RequestMethod.GET)
	public String exac(String scrChange, String scrGene, int selfTestDetId, ModelMap model) {
		HeaderVo headerVo = new HeaderVo("title", "", "", "突变率", true);
		model.put("headerVo", headerVo);
		model.put("exac", riskConstitutionService.getExacBySnp(scrChange, scrGene, selfTestDetId));
		return "chart/mutation_rate";
	}
}
