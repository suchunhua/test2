package com.fd.report.controller.exome;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fd.core.constant.Constant;
import com.fd.core.entity.BloodAboIntroduction;
import com.fd.core.entity.BloodAboOut;
import com.fd.core.entity.BloodAboResult;
import com.fd.core.entity.BloodHla;
import com.fd.core.entity.CollInfo;
import com.fd.core.service.BloodTypeService;
import com.fd.tools.web.ServletUtils;

@Controller
@RequestMapping(value = "blood")
public class BloodTypeController {

	@Autowired
	private BloodTypeService bloodTypeService;

	@RequestMapping(value = "aboIndex")
	public String aboIndex(ModelMap model) {
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		BloodAboResult bloodAboResult = bloodTypeService.getBloodAboResultByCollInfoId(collInfo.getCollInfoId());
		List<BloodAboIntroduction> bloodAboIntroductionList = bloodTypeService.listBloodAboIntroduction();
		String aboBlood = "";
		if (bloodAboResult != null) {
			for (int i = 0; i < bloodAboIntroductionList.size(); i++) {
				aboBlood = (bloodAboResult.getResulttype2().contains(bloodAboIntroductionList.get(i).getBloodtype()))
						? aboBlood + "<div>" + bloodAboIntroductionList.get(i).getBloodtype() + ":"
								+ bloodAboIntroductionList.get(i).getFeature() + "</div>"
						: aboBlood;
			}
		}
		model.put("titleInfo", "ABO血型系统");
		model.put("showType", "index");
		model.put("bloodAboResult", bloodAboResult);
		model.put("aboBlood", aboBlood);
		return "blood/abo";
	}

	@RequestMapping(value = "aboList")
	public String aboList(ModelMap model) {
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		List<BloodAboOut> bloodAboOutList = bloodTypeService.listBloodAboOutByCollInfoId(collInfo.getCollInfoId());
		model.put("titleInfo", "ABO血型系统 -列表");
		model.put("showType", "list");
		model.put("bloodAboOutList", bloodAboOutList);
		return "blood/abo";
	}

	@RequestMapping(value = "aboLaw")
	public String aboLaw(ModelMap model) {
		model.put("titleInfo", "ABO血型系统 -规律及意义");
		model.put("showType", "law");
		return "blood/abo";
	}

	@RequestMapping(value = "hlaIndex")
	public String hlaIndex(ModelMap model) {
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		List<BloodHla> bloodHlaList = bloodTypeService.listBloodHlaByCollInfoid(collInfo.getCollInfoId());
		model.put("titleInfo", "hla血型系统 -结果");
		model.put("showType", "index");
		model.put("bloodHlaList", bloodHlaList);
		return "blood/hla";
	}

	@RequestMapping(value = "hlaLaw")
	public String hlaLaw(ModelMap model) {
		model.put("titleInfo", "hla血型系统 -规律及意义");
		model.put("showType", "law");
		return "blood/hla";
	}
}
