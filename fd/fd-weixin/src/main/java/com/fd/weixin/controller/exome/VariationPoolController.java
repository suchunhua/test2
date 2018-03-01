package com.fd.weixin.controller.exome;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fd.core.constant.Constant;
import com.fd.core.entity.CollInfo;
import com.fd.core.entity.Inactivating;
import com.fd.core.entity.UncertainWhite;
import com.fd.core.service.ExomeService;
import com.fd.tools.web.ServletUtils;
import com.fd.weixin.vo.HeaderVo;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping(value = "exome")
public class VariationPoolController {

	@Autowired
	private ExomeService exomeService;

	@RequestMapping(value = "variationPool/whetherPathogenic", method = RequestMethod.GET)
	public String whetherPathogenic(ModelMap model) {
		HeaderVo headerVo = new HeaderVo("title", "icon-fd-black-search",
				"searchPath('exome/variationPool/whetherPathogenic/search')", "变异汇总", true);
		model.put("headerVo", headerVo);
		return "exome/variationPool/whether_pathogenic";
	}

	@RequestMapping(value = "variationPool/whetherPathogenic/search", method = RequestMethod.GET)
	public String search(ModelMap model) {
		HeaderVo headerVo = new HeaderVo("title", "", "", "变异汇总", true);
		model.put("headerVo", headerVo);
		model.put("searchBox", "search");
		return "exome/variationPool/whether_pathogenic";
	}

	@RequestMapping(value = "variationPool/whetherPathogenic/search", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> getWhetherPathogenicByPage(String uncergene, Integer pageNum, ModelMap model) {
		Map<String, Object> resultMap = new HashMap<>();
		uncergene = uncergene != null ? uncergene : "";
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		PageInfo<UncertainWhite> pageInfo = exomeService.listByUncertainWhite(collInfo.getCollInfoId(), uncergene,
				pageNum);
		resultMap.put("pageInfo", pageInfo);
		return resultMap;
	}

	@RequestMapping(value = "variationPool/defectiveGene", method = RequestMethod.GET)
	public String defectiveGene(ModelMap model) {
		HeaderVo headerVo = new HeaderVo("title", "", "", "变异汇总", true);
		model.put("headerVo", headerVo);
		return "exome/variationPool/defective_gene";
	}

	/**
	 * ajax 得到缺陷基因的数据
	 * 
	 * @param pageNum
	 * @return
	 */
	@RequestMapping(value = "variationPool/defectiveGene", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> getDefectiveGeneByPage(Integer pageNum) {
		Map<String, Object> resultMap = new HashMap<>();
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		PageInfo<Inactivating> pageInfo = exomeService.listInactivatingByParam(collInfo.getCollInfoId(), "", "",
				pageNum);
		resultMap.put("pageInfo", pageInfo);
		return resultMap;
	}
}
