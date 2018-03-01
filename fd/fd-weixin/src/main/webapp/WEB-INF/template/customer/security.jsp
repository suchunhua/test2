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
		<ul class="show-target">
			<li>报告编号<span>${sessionScope.collInfo.bookCode }</span></li>
		</ul>
		<ul class="go-target editCustomer">
			<li><a href="${ctx }/customer/showEditCustomer?showChange=phone">手机号<i class="go"></i></a></li>
			<li><a href="${ctx }/customer/showEditCustomer?showChange=qq">QQ号<i class="go"></i></a></li>
			<li><a href="${ctx }/customer/showEditCustomer?showChange=email">邮箱地址<i class="go"></i></a></li>
		</ul>
		<%-- <%@ include file="../common/exome_bottom.jsp" %> --%>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/customer/security.js -->
		<!-- build:js ../../static/js/exome/customer/security.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/services/list.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>