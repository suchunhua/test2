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
			<c:when test="${headerVo.titleInfo eq '手机号'}">
				<ul class="show-target">
					<li>手机号<span>${sessionScope.collInfo.tele}</span></li>
				</ul>
				<%-- <label for="" class="subtitle">当前手机号：${sessionScope.collInfo.tele}</label> --%>
				<a href="${ctx }/customer/editCustomer?title=手机号" class="change">更换手机号码</a>
			</c:when>
			<c:when test="${headerVo.titleInfo eq 'qq号'}">
				<ul class="show-target">
					<li>QQ号<span>${sessionScope.loginCa.qq}</span></li>
				</ul>
				<%-- <label for="" class="subtitle">当前qq号：${sessionScope.loginCa.qq}</label> --%>
				<a href="${ctx }/customer/editCustomer?title=qq号" class="change">更换QQ号</a>
			</c:when>
			<c:when test="${headerVo.titleInfo eq '邮箱'}">
				<ul class="show-target">
					<li>邮箱<span>${sessionScope.collInfo.postemail}</span></li>
				</ul>
				<%-- <label for="" class="subtitle">当前邮箱：${sessionScope.collInfo.postemail}</label> --%>
				<a href="${ctx }/customer/editCustomer?title=邮箱" class="change">更换邮箱</a>
			</c:when>
			<c:otherwise>
			</c:otherwise>
		</c:choose>
		<%-- <%@ include file="../common/exome_bottom.jsp" %> --%>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/customer/showEdit.js -->
		<!-- build:js ../../static/js/exome/customer/showEdit.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>