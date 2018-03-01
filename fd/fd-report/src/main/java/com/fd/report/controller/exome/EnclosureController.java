package com.fd.report.controller.exome;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "enclosure")
public class EnclosureController {

	@RequestMapping("riskRating")
	public String riskRating() {
		return "exome/diseaseRiskRating";
	}
}
