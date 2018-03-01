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
import com.fd.core.entity.SelfTest;
import com.fd.core.service.exome.PhysiqueService;
import com.fd.tools.web.ServletUtils;
import com.fd.weixin.vo.HeaderVo;

@Controller
@RequestMapping(value = "exome")
public class PhysiqueController {

	@Autowired
	private PhysiqueService physiqueService;

	@RequestMapping(value = "physique", method = RequestMethod.GET)
	public String physique(ModelMap model) {
		HeaderVo headerVo = new HeaderVo("title", "", "", "个体体质", true);
		model.put("headerVo", headerVo);
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		Map<String, List<SelfTest>> selfTestMapList = physiqueService.selectSelfTestById(collInfo.getCollInfoId());
		model.put("otherEpitome", physiqueService.otherEpitome(collInfo.getCollInfoId(), collInfo.getSex()));
		model.put("selfTestMapList", selfTestMapList);
		return "exome/physique/list";
	}

	@RequestMapping(value = "physique/detail", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> physiqueDetail(String screenName, String result) {
		Map<String, Object> resultMap = new HashMap<>();
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		List<Map<String, Object>> otherPhysique = physiqueService.otherPhysique(screenName, collInfo.getCollInfoId(),
				collInfo.getSex());
		resultMap.put("otherPhysique", otherPhysique);
		resultMap.put("result", result);
		return resultMap;
	}

}
