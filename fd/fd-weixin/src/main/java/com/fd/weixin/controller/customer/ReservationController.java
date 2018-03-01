package com.fd.weixin.controller.customer;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fd.core.constant.Constant;
import com.fd.core.entity.CollInfo;
import com.fd.core.entity.CustomerReservation;
import com.fd.core.enumeration.CustomerReservationTimeEnum;
import com.fd.core.enumeration.UnscrambleModeEnum;
import com.fd.core.service.CollInfoService;
import com.fd.core.service.CustomerService;
import com.fd.tools.datahandle.DateOptUtils;
import com.fd.tools.transfrom.ParseUtils;
import com.fd.tools.utils.ResultUtils;
import com.fd.tools.web.ServletUtils;
import com.fd.weixin.vo.HeaderVo;

@Controller
@RequestMapping(value = "reservation")
public class ReservationController {

	@Autowired
	private CollInfoService collInfoService; // 收样信息服务

	@Autowired
	private CustomerService customerService;

	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String reservation(ModelMap model) {
		HeaderVo headerVo = new HeaderVo("title", "", "", "在线预约", true);
		model.put("headerVo", headerVo);
		model.put("timeEnumValues", CustomerReservationTimeEnum.values());
		model.put("unscrambleModes", UnscrambleModeEnum.values());

		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		CustomerReservation t = new CustomerReservation();
		if (collInfo != null) {
			t.setCollinfoId((long) collInfo.getCollInfoId());
			CustomerReservation t2 = customerService.getCustomerReservation(t);
			if (t2 == null) {
				t.setTele(collInfo.getTele());
				t.setName(collInfo.getPatient());
			} else {
				t = t2;
			}
		}
		model.put("customerReservation", t);
		return "customer/reservation";
	}

	@RequestMapping(value = "delete", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> reservationDelete() {
		CollInfo collInfo = (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO);
		if (collInfo != null) {
			CustomerReservation t = new CustomerReservation();
			t.setCollinfoId((long) collInfo.getCollInfoId());
			t = customerService.getCustomerReservation(t);
			if (t == null) {
				return ResultUtils.buildFlagAndMsgMap(false, "尊敬的客户您还没有预约");
			} else {
				t.setStatus(2);
				return customerService.updateCustomerReservation(t, 2);
			}
		} else {
			return ResultUtils.buildFlagAndMsgMap(false, "请登录后再删除预约");
		}
	}

	@RequestMapping(value = "save", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> reservationSave(CustomerReservation customerReservation, String dateTime,
			String bookcode) {
		if (DateOptUtils.dateCompare(ParseUtils.strToDate(dateTime), null) == -1) {
			return ResultUtils.buildFlagAndMsgMap(false, "请预约在今天之后的时间");
		}
		if (!StringUtils.isBlank(dateTime)) {
			customerReservation.setDate(ParseUtils.strToDate(dateTime));
		} else {
			return ResultUtils.buildFlagAndMsgMap(false, "预约日期格式不对");
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar c = Calendar.getInstance();// 获得一个日历的实例
		c.setTime(customerReservation.getDate());
		/* 12月11号到15号18号上午解读人员去培训了 */
		int month = c.get(Calendar.MONTH) + 1;
		int day = c.get(Calendar.DAY_OF_MONTH);
		if (month == 12 && (day == 11 || day == 12 || day == 13 || day == 14 || day == 15 || day == 18)) {
			if (day == 18) {
				if (customerReservation.getTime() == 1 || customerReservation.getTime() == 2) {
					return ResultUtils.buildFlagAndMsgMap(false, "非常抱歉，该时段预约已满");
				}
			} else {
				return ResultUtils.buildFlagAndMsgMap(false, "非常抱歉，该时段预约已满");
			}
		}
		/* 排除周末 */
		int week = c.get(Calendar.DAY_OF_WEEK) - 1;
		if (week == 0 || week == 6) {
			return ResultUtils.buildFlagAndMsgMap(false, "请预约周一到周五的时间");
		}
		/* 只能预约后一天的 */
		if (DateOptUtils.dateCompare(ParseUtils.strToDate(dateTime), null) == 0) {
			c.setTime(new Date());// 设置日历时间
			c.add(Calendar.DATE, 1);// 在日历的日期上加1天
			return ResultUtils.buildFlagAndMsgMap(false, "只能预约" + sdf.format(c.getTime()) + "号之后的时间");
		}
		CollInfo collInfo = ((CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO) != null)
				? (CollInfo) ServletUtils.getSessionAttribute(Constant.COLLINFO)
				: collInfoService.getCollInfoByParams(null, bookcode);
		if (collInfo != null) {
			// 同一个时间段不能同时预约2个人
			CustomerReservation t = new CustomerReservation();
			t.setDate(customerReservation.getDate());
			t.setTime(customerReservation.getTime());
			t = customerService.getCustomerReservation(t);
			if (t != null) {
				return ResultUtils.buildFlagAndMsgMap(false, "这个时间段已经有人预约了，请换一个时间段");
			}
			// 判断该客户是否已经预约了
			customerReservation.setCollinfoId((long) collInfo.getCollInfoId());
			t = new CustomerReservation();
			t.setCollinfoId(customerReservation.getCollinfoId());
			t = customerService.getCustomerReservation(t);
			if (t == null) {
				return customerService.saveCustomerReservation(customerReservation, collInfo);
			} else if (ServletUtils.getSessionAttribute(Constant.COLLINFO) != null) {
				customerReservation.setId(t.getId());
				return customerService.updateCustomerReservation(customerReservation, 1);
			} else {
				return ResultUtils.buildFlagAndMsgMap(false, "您已经预约了请耐心等待工作人员为您解读");
			}
		} else {
			return ResultUtils.buildFlagAndMsgMap(false, "请登录后再预约");
		}
	}
}
