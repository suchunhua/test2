package com.fd.weixin.controller.exome;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fd.core.constant.Constant;
import com.fd.core.entity.CollInfo;
import com.fd.core.service.exome.OriginService;
import com.fd.tools.web.ServletUtils;
import com.fd.weixin.vo.HeaderVo;

@Controller
@RequestMapping(value = "exome")
public class OriginController {

	@Autowired
	private OriginService originService;

	@RequestMapping(value = "origin", method = RequestMethod.GET)
	public String origin(ModelMap model) {
		// HeaderVo headerVo = new HeaderVo("title", "icon-fd-menu-black",
		// "headerMenuSwitch()", "祖源分析", false);
		HeaderVo headerVo = new HeaderVo("title", "", "", "祖源分析", true);
		model.put("headerVo", headerVo);
		return "exome/origin/origin_home";
	}

	@RequestMapping(value = "origin/move", method = RequestMethod.GET)
	public String originMove(String data, ModelMap model) {
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		String titleInfo = ("mother".equals(data)) ? "母系祖源分析" : "父系祖源分析";
		// HeaderVo headerVo = new
		// HeaderVo("title","icon-fd-menu-black","headerMenuSwitch()",titleInfo,false);
		HeaderVo headerVo = new HeaderVo("title", "", "", titleInfo, true);
		String dataType = ("mother".equals(data)) ? "mother" : "father";
		String[] showArea = ("mother".equals(data))
				? originService.getTOriginMoveMaternalShowArea((long) collInfo.getCollInfoId())
				: null;
		String[] paths = ("mother".equals(data)) ? null : originService.getTOriginMove((long) collInfo.getCollInfoId());
		model.put("originMove", originService.getOriginMove((long) collInfo.getCollInfoId(), dataType));
		model.put("paths", paths);
		model.put("dataType", dataType);
		model.put("showArea", showArea);
		model.put("headerVo", headerVo);
		return "exome/origin/origin_move";
	}

	@RequestMapping(value = "origin/analysis", method = RequestMethod.GET)
	public String originAnalysis(ModelMap model) {
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		HeaderVo headerVo = new HeaderVo("title", "", "", "常染色体祖源分析", true);
		model.put("continentMap", originService.getContinentByCollInfoId(collInfo.getCollInfoId()));
		model.put("east_AsiaMap", originService.getEast_AsiaByCollInfoId(collInfo.getCollInfoId()));
		model.put("headerVo", headerVo);
		return "exome/origin/origin_analysis";
	}
}
