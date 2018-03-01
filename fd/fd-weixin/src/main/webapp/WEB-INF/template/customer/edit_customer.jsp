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
<title>更换${title}</title>
<link href="${ctx}/static/css/customer.css?rev=@@hash" rel="stylesheet">
</head>
<body>
	<div class="view view-gray-background">
		<%-- <header class="bar title menu">
			<h1 class="title-box text-overflow">
				更换${title}
			</h1>
		</header>
		<div class="box45px"></div> --%>
		<c:choose>
			<c:when test="${title eq '手机号'}">
				<input class="changes" placeholder="请输入新的${title}" name="phone" value="${sessionScope.collInfo.tele}"/>
			</c:when>
			<c:when test="${title eq 'qq号'}">
				<input class="changes" placeholder="请输入新的${title}" name="qq" value="${sessionScope.loginCa.qq}"/>
			</c:when>
			<c:when test="${title eq '邮箱'}">
				<input class="changes" placeholder="请输入新的${title}" name="email" value="${sessionScope.collInfo.postemail}"/>
			</c:when>
			<c:otherwise>
			</c:otherwise>
		</c:choose>
		<a href="javascript:customer.editCustomer.saveCustomer();" class="complete">完&nbsp;成</a>
		<a href="javascript:base.pageGoBack();" class="cancel">取&nbsp;消</a>
		<%-- <%@ include file="../common/exome_bottom.jsp" %> --%>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/customer/editCustomer.js -->
		<!-- build:js ../../static/js/exome/customer/editCustomer.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/customer.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>