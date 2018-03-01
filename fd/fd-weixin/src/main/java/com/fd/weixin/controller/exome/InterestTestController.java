package com.fd.weixin.controller.exome;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fd.core.service.ExomeService;
import com.fd.weixin.vo.HeaderVo;

@Controller
@RequestMapping(value = "exome")
public class InterestTestController {

	@Autowired
	private ExomeService exomeService;

	@RequestMapping(value = "interestTest", method = RequestMethod.GET)
	public String interestTest(ModelMap model) {
		// HeaderVo headerVo = new
		// HeaderVo("title","icon-fd-menu-black","headerMenuSwitch()","趣味检测",false);
		HeaderVo headerVo = new HeaderVo("title", "", "", "趣味检测", true);
		model.put("sensoryList", exomeService.getInterestTestList("sensory"));
		model.put("intelligenceList", exomeService.getInterestTestList("intelligence"));
		model.put("individualList", exomeService.getInterestTestList("individual"));
		model.put("headerVo", headerVo);
		return "exome/interestTest/list";
	}

	@RequestMapping(value = "interestTest/detail", method = RequestMethod.GET)
	public String detail(String category, String dataType, ModelMap model) {
		// HeaderVo headerVo = new
		// HeaderVo("title","icon-fd-menu-black","headerMenuSwitch()",category,false);
		HeaderVo headerVo = new HeaderVo("title", "", "", category, true);
		model.put("interestTestDetail", exomeService.getInterestTestDetail(category, dataType));
		model.put("headerVo", headerVo);
		return "exome/interestTest/detail";
	}

}
