package com.fd.weixin.controller.exome;

import java.util.Arrays;
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
import com.fd.core.entity.ScreenDetSum;
import com.fd.core.entity.SelfIll;
import com.fd.core.service.ExomeService;
import com.fd.core.service.exome.RiskConstitutionService;
import com.fd.tools.config.ConfigUtils;
import com.fd.tools.web.ServletUtils;
import com.fd.weixin.vo.HeaderVo;

@Controller
@RequestMapping(value = "exome")
public class RiskConstitutionController {

	@Autowired
	private ExomeService exomeService;

	@Autowired
	private RiskConstitutionService riskConstitutionService;

	@RequestMapping(value = "riskConstitution", method = RequestMethod.GET)
	public String riskConstitution(ModelMap model) {
		HeaderVo headerVo = new HeaderVo("title", "", "", "疾病风险", true);
		model.put("headerVo", headerVo);
		List<String> listScrIllType = Arrays
				.asList(ConfigUtils.getConfig("customer.scrIllTypes").toString().split(","));
		model.put("listScrIllType", listScrIllType);
		return "exome/riskConstitution/main";
	}

	@RequestMapping(value = "riskConstitution/list", method = RequestMethod.GET)
	public String index(Integer scrIllTypeId, ModelMap model) {
		List<String> listScrIllType = Arrays
				.asList(ConfigUtils.getConfig("customer.scrIllTypes").toString().split(","));
		HeaderVo headerVo = new HeaderVo("title", "", "", listScrIllType.get(scrIllTypeId), true);
		model.put("headerVo", headerVo);
		model.put("scrIllTypeId", scrIllTypeId);
		if (scrIllTypeId != null && scrIllTypeId < listScrIllType.size() - 1) {
			Map<String, Object> result = riskConstitutionService.weixinPageDiseaseCorporeity(scrIllTypeId,
					listScrIllType.get(scrIllTypeId));
			model.put("result", result);
		}
		return "exome/riskConstitution/list";
	}

	@RequestMapping(value = "riskConstitution/detail", method = RequestMethod.GET)
	public String detail(String screenName, String illnessImg, String scrIll, ModelMap model) {
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		HeaderVo headerVo = new HeaderVo("title", "", "", screenName, true);
		model.put("headerVo", headerVo);
		List<ScreenDetSum> screenDetSumList = exomeService.listScreenDetSum(screenName);
		List<SelfIll> selfIllList = exomeService.selectSelfIll(collInfo.getCollInfoId(), scrIll);
		model.put("screenDetSumList", screenDetSumList);
		model.put("selfIllList", selfIllList);
		model.put("illnessImg", illnessImg);
		return "exome/riskConstitution/detail";
	}

	@RequestMapping(value = "riskConstitution/riskGrade", method = RequestMethod.POST)
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

	@RequestMapping(value = "riskConstitution/allRisk", method = RequestMethod.GET)
	public String allRisk(ModelMap model, Integer scrIllTypeId, String screenName) {
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		HeaderVo headerVo = new HeaderVo("title", "", "", "疾病列表", true);
		model.put("headerVo", headerVo);
		scrIllTypeId = scrIllTypeId == null ? 0 : scrIllTypeId;
		List<String> listScrIllType = Arrays
				.asList(ConfigUtils.getConfig("customer.scrIllTypes").toString().split(","));
		model.put("listScrIllType", listScrIllType);
		model.put("scrIllTypeId", scrIllTypeId);
		model.put("screenName", screenName);
		if (scrIllTypeId < listScrIllType.size() - 1) {
			List<String> allRiskList = riskConstitutionService.listScreenNameByParam(listScrIllType.get(scrIllTypeId),
					collInfo.getSex(), screenName);
			model.put("allRiskList", allRiskList);
		}
		return "exome/riskConstitution/all_risk";
	}

}
