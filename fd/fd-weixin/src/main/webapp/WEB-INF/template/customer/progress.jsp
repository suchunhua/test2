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
	<div class="view view-gray-background">
		<%-- <%@ include file="../common/exome_top.jsp" %> --%>
		 <c:choose>
			<c:when test="${empty sessionScope.collInfo.collTime }"><img alt="进度" src="${ctx }/static/img/progressLoop/1.png" class="progress-loop"></c:when>
			<c:when test="${not empty sessionScope.collInfo.collTime and empty sessionScope.collInfo.buildTime }"><img alt="进度" src="${ctx }/static/img/progressLoop/2.png" class="progress-loop"></c:when>
			<c:when test="${not empty sessionScope.collInfo.buildTime and empty sessionScope.collInfo.downTime }"><img alt="进度" src="${ctx }/static/img/progressLoop/3.png" class="progress-loop"></c:when>
			<c:when test="${not empty sessionScope.collInfo.downTime and empty sessionScope.collInfo.reportCheckTime }"><img alt="进度" src="${ctx }/static/img/progressLoop/4.png" class="progress-loop"></c:when>
			<c:when test="${not empty sessionScope.collInfo.reportTime and empty sessionScope.collInfo.reportCheckTime}"><img alt="进度" src="${ctx }/static/img/progressLoop/5.png" class="progress-loop"></c:when>
			<c:when test="${not empty customerReservation}"> 
				<div class="progress-loop-box">
					<img alt="进度" src="${ctx }/static/img/progressLoop/7.png" class="progress-loop">
				</div>
				<div class="opt">
					<a href="javascript:customer.reservation.deleteReservation();" class="delete">删除预约</a>
					<a href="${ctx }/reservation/home?urlactive=myOffice" class="edit">修改预约</a>
				</div>
			</c:when> 
			<c:otherwise>
				<div class="progress-loop-box">
					<img alt="进度" src="${ctx }/static/img/progressLoop/6.png" class="progress-loop">
					<span>下次更新时间：<fmt:formatDate value="${nextUpdateTime }" pattern="yyyy年MM月dd日"/></span>
				</div>
				<div class="opt">
					<a href="${ctx }/reservation/home?urlactive=myOffice" class="order">点击预约</a>
				</div>
			</c:otherwise> 
		</c:choose> 
		<%-- <%@ include file="../common/exome_bottom.jsp" %> --%>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/customer/progress.js -->
		<!-- build:js ../../static/js/exome/customer/progress.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/customer.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>