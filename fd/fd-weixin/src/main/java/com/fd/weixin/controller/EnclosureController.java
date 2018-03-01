package com.fd.weixin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fd.weixin.vo.HeaderVo;

@Controller
@RequestMapping(value = "enclosure")
public class EnclosureController {

	@RequestMapping(value = "disclaimer", method = RequestMethod.GET)
	public String disclaimer(ModelMap model) {
		HeaderVo headerVo = new HeaderVo("title", "", "", "免责声明", true);
		model.put("headerVo", headerVo);
		return "enclosure/disclaimer";
	}

	@RequestMapping(value = "aboutAs", method = RequestMethod.GET)
	public String aboutAs(ModelMap model) {
		HeaderVo headerVo = new HeaderVo("title", "", "", "关于首度", true);
		model.put("headerVo", headerVo);
		return "enclosure/about_As";
	}

	@RequestMapping(value = "appendix", method = RequestMethod.GET)
	public String appendix(ModelMap model) {
		HeaderVo headerVo = new HeaderVo("title", "", "", "附录", true);
		model.put("headerVo", headerVo);
		return "enclosure/appendix";
	}
}
