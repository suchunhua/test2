package com.fd.report.controller.exome;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fd.core.constant.Constant;
import com.fd.core.entity.CollInfo;
import com.fd.core.service.CollInfoService;
import com.fd.core.service.exome.OriginService;
import com.fd.tools.web.ServletUtils;

@Controller
@RequestMapping(value = "origin")
public class OriginController {

	@Autowired
	private CollInfoService collInfoService; // 收样信息服务

	@Autowired
	private OriginService originService;

	@RequestMapping(value = "analysis")
	public String analysis(ModelMap model) {
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		model.put("collInfo", collInfoService.selByCollInfoId1(collInfo.getCollInfoId()));
		model.put("continentMap", originService.getContinentByCollInfoId(collInfo.getCollInfoId()));
		model.put("east_AsiaMap", originService.getEast_AsiaByCollInfoId(collInfo.getCollInfoId()));
		return "origin/originAnalysis";
	}

	@RequestMapping(value = "move", method = RequestMethod.GET)
	public String move(ModelMap model, String data) {
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		String dataType = ("mother".equals(data)) ? "mother" : "father";
		String[] showArea = ("mother".equals(data))
				? originService.getTOriginMoveMaternalShowArea((long) collInfo.getCollInfoId()) : null;
		String[] paths = ("mother".equals(data)) ? null : originService.getTOriginMove((long) collInfo.getCollInfoId());
		model.put("originMove", originService.getOriginMove((long) collInfo.getCollInfoId(), dataType));
		model.put("paths", paths);
		model.put("dataType", dataType);
		model.put("showArea", showArea);
		return "origin/originMove";
	}

}
