package com.fd.weixin.controller.exome;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fd.core.constant.Constant;
import com.fd.core.entity.CollInfo;
import com.fd.core.entity.SelfIll;
import com.fd.core.service.ExomeService;
import com.fd.tools.config.ConfigUtils;
import com.fd.tools.web.ServletUtils;
import com.fd.weixin.vo.HeaderVo;

@Controller
@RequestMapping(value = "exome")
public class ExomeController {

	@Autowired
	private ExomeService exomeService;

	@RequestMapping(value = "home")
	public String exomeIndex(ModelMap model) {
		/*
		 * 暂时不做搜索的功能HeaderVo headerVo = new
		 * HeaderVo("search","icon-fd-menu-white","headerMenuSwitch()");
		 */
		return "exome/home";
	}

	@RequestMapping(value = "diseaseRisk", method = RequestMethod.GET)
	public String diseaseRisk(ModelMap model) {
		HeaderVo headerVo = new HeaderVo("title", "icon-fd-menu-black", "headerMenuSwitch()");
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		List<SelfIll> selfIllList = exomeService.listSelfIllByConllInfoId(collInfo.getCollInfoId());
		// 从配置文件中获取客户可能存在的疾病并去除客户已存在的疾病
		String[] scrIllTypeArray = ConfigUtils.getConfig("customer.scrIllTypes").toString().split(",");
		model.put("selfIllList", selfIllList);
		model.put("scrIllTypeArray", scrIllTypeArray);
		model.put("headerVo", headerVo);
		return "exome/disease_risk";
	}

}
