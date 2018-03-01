package com.fd.weixin.controller.exome;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fd.core.constant.Constant;
import com.fd.core.entity.CollInfo;
import com.fd.core.entity.Nutrient;
import com.fd.core.entity.NutrientDet;
import com.fd.core.entity.Nutrition;
import com.fd.core.service.ExomeService;
import com.fd.tools.transfrom.TransfromUtils;
import com.fd.tools.web.ServletUtils;
import com.fd.weixin.vo.HeaderVo;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping(value = "exome")
public class NutritionalController {

	@Autowired
	private ExomeService exomeService;

	@RequestMapping(value = "nutritional", method = RequestMethod.GET)
	public String nutritional(ModelMap model) {
		// HeaderVo headerVo = new
		// HeaderVo("title","icon-fd-menu-black","headerMenuSwitch()","营养代谢能力",false);
		HeaderVo headerVo = new HeaderVo("title", "", "", "营养代谢能力", true);
		model.put("headerVo", headerVo);
		return "exome/nutritional/list";
	}

	@RequestMapping(value = "nutritional", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> pageNutritional(Integer pageNum, ModelMap model) {
		Map<String, Object> resultMap = new HashMap<>();
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		PageInfo<Nutrient> pageInfo = exomeService.queryListByPage(pageNum, collInfo.getCollInfoId());
		resultMap.put("pageInfo", pageInfo);
		return resultMap;
	}

	@RequestMapping(value = "nutritional/detail", method = RequestMethod.GET)
	public String detail(String category, String comprehensive, ModelMap model) {
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		HeaderVo headerVo = new HeaderVo("title", "", "", category, true);
		Nutrition nutrition = exomeService.selectNutrition(category);
		List<NutrientDet> nutrientDetList = exomeService.selectNutrientDetByType(collInfo.getCollInfoId(), category);
		if ("酒精代谢".equals(category)) {
			model.put("alcoholResult", TransfromUtils.map2json(exomeService.listAlcohol(collInfo.getCollInfoId())));
		}
		model.put("headerVo", headerVo);
		model.put("category", category);
		if (StringUtils.contains(comprehensive, "较高")) {
			comprehensive = "较高";
		}
		if (StringUtils.contains(comprehensive, "正常")) {
			comprehensive = "正常";
		}
		if (StringUtils.contains(comprehensive, "较低")) {
			comprehensive = "较低";
		}
		model.put("comprehensive", comprehensive);
		model.put("nutrition", nutrition);
		model.put("nutrientDetList", nutrientDetList);
		return "exome/nutritional/detail";
	}

}
