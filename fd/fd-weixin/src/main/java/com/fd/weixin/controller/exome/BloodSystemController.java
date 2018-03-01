package com.fd.weixin.controller.exome;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fd.core.constant.Constant;
import com.fd.core.entity.BloodAboIntroduction;
import com.fd.core.entity.BloodAboResult;
import com.fd.core.entity.BloodHla;
import com.fd.core.entity.CollInfo;
import com.fd.core.service.BloodTypeService;
import com.fd.tools.web.ServletUtils;
import com.fd.weixin.vo.HeaderVo;

@Controller
@RequestMapping(value = "exome")
public class BloodSystemController {

	@Autowired
	private BloodTypeService bloodTypeService;

	@RequestMapping(value = "bloodSystem", method = RequestMethod.GET)
	public String bloodSystem(ModelMap model) {
		// HeaderVo headerVo = new
		// HeaderVo("title","icon-fd-menu-black","headerMenuSwitch()","血型系统",false);
		HeaderVo headerVo = new HeaderVo("title", "", "", "血型系统", true);
		model.put("headerVo", headerVo);
		// abo
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
		model.put("bloodAboResult", bloodAboResult);
		model.put("aboBlood", aboBlood);
		// hla
		List<BloodHla> bloodHlaList = bloodTypeService.listBloodHlaByCollInfoid(collInfo.getCollInfoId());
		model.put("bloodHlaList", bloodHlaList);
		return "exome/bloodSystem/index";
	}

	@RequestMapping(value = "bloodSystem/abo", method = RequestMethod.GET)
	public String abo(ModelMap model) {
		HeaderVo headerVo = new HeaderVo("title", "icon-fd-menu-black", "headerMenuSwitch()", "ABO血型系统", false);
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
		model.put("bloodAboResult", bloodAboResult);
		model.put("aboBlood", aboBlood);
		model.put("headerVo", headerVo);
		return "exome/bloodSystem/abo";
	}

	@RequestMapping(value = "bloodSystem/hla", method = RequestMethod.GET)
	public String hla(ModelMap model) {
		HeaderVo headerVo = new HeaderVo("title", "icon-fd-menu-black", "headerMenuSwitch()", "HLA血型系统", false);
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		List<BloodHla> bloodHlaList = bloodTypeService.listBloodHlaByCollInfoid(collInfo.getCollInfoId());
		model.put("bloodHlaList", bloodHlaList);
		model.put("headerVo", headerVo);
		return "exome/bloodSystem/hla";
	}
}
