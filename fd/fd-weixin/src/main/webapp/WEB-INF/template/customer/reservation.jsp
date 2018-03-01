<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1, maximum-scale=1">
<meta name="renderer" content="webkit">
<title>${headerVo.titleInfo}</title>
<link href="${ctx}/static/css/customer.css?rev=@@hash" rel="stylesheet">
</head>
<body>
	<div class="view">
		<%-- <%@ include file="../common/exome_top.jsp" %>
		<div class="box20px"></div> --%>
		<form action="${ctx }/reservation/save" method="post" class="form" id="reservationForm">
			<div class="form-row">
				<label for="username"><span class="required">*</span>报告编号：</label>
				<c:choose>
					<c:when test="${not empty param.bookCode}">
						<input type="text" placeholder="请输入样本编号" name="bookcode" class="input" disabled value="${param.bookCode}"/>
					</c:when>
					<c:otherwise>
						<input type="text" placeholder="请输入样本编号" name="bookcode" class="input" disabled value="${sessionScope.collInfo.bookCode}"/>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="form-row">
				<label for="username"><span class="required">*</span>联系人：</label>
				<input type="text" placeholder="请输入姓名" name="name" class="input" value="${customerReservation.name }"/>
			</div>
			<div class="form-row">
				<label for="tel"><span class="required">*</span>联系电话：</label>
				<input type="text" placeholder="请输入电话" name="tele" class="input" value="${customerReservation.tele }"/>
			</div>
			<div class="form-row">
				<label for="reservaDate"><span class="required">*</span>预约日期：</label>
				<input id="date" type="text" readonly="" placeholder="请选择预约日期" name="date" class="input" value="<fmt:formatDate value="${customerReservation.date }" pattern="yyyy-MM-dd"/>"/>
			</div>
			<div class="form-row"> 
				<label for="time" ><span class="required">*</span>预约时间：</label>
				<select name="reservaTime" >
					<option value="" disabled selected>请选择预约时间</option>
					<c:forEach items="${timeEnumValues }" var="time">
						<option value="${time.getCode() }" <c:if test="${time.getCode() eq customerReservation.time }">selected</c:if>>${time.getDescription() }</option>
					</c:forEach>
				</select>
			</div>
			<div class="form-row">
				<label for="mode" ><span class="required">*</span>解读方式：</label>
				<select name="mode" class="unscrambleMode">
					<option value="" disabled selected>请选择解读方式</option>
					<c:forEach items="${unscrambleModes }" var="unscrambleMode">
						<option value="${unscrambleMode.getCode() }" <c:if test="${unscrambleMode.getCode() eq customerReservation.mode }">selected</c:if>>${unscrambleMode.getDescription() }</option>
					</c:forEach>
				</select>
			</div>
			<div class="form-row unscrambleqq" style="display:none;">
				<label for="qq">联系qq：</label>
				<input type="text" placeholder="请输入qq号" name="qq" class="input" value="${customerReservation.qq }"/>
			</div>
			<div class="form-row">
				<label for="number">解读人数：</label>
				<input type="text" placeholder="输入解读人数（适用于多人同时解读）" name="number" class="input unscrambleNumber" value="${customerReservation.number }"/>
			</div>
			<div class="form-row unscrambleRelationship" style="display:none;">
				<label for="relationship">解读人关系：</label>
				<input type="text" placeholder="例如：家人，朋友，恋人等" name="relationship" class="input" value="${customerReservation.relationship }"/>
			</div>
			<div class="form-remarks form-row">
				<label for="reservaRemarks">备注：</label>
				<textarea name="reservaRemarks" cols="60" rows="10" placeholder="如果申请同时解读，请备注对应人的姓名">${customerReservation.remark }</textarea>
			</div>
			<p class="error-msg">您输入的姓名有误，请重新输入姓名！</p>
			<a href="javascript:customer.reservation.submitReservation();" class="btn btn-info btn-cont-white">确认</a>
		</form>
		<%-- <%@ include file="../common/exome_bottom.jsp" %> --%>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/customer/reservation.js -->
		<!-- build:js ../../static/js/exome/customer/reservation.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/powerful/datePicker.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/customer.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
	<script>
		$(function(){
			customer.reservation.init();
		});
	</script>
</body>
</html>