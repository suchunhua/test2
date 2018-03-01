<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1, maximum-scale=1">
<meta name="renderer" content="webkit">
<title>${titleInfo}</title>
<link href="${ctx}/static/css/exomeHealthGuide.css?rev=@@hash" rel="stylesheet">
</head>
<body>
	<div class="view">
		<%-- <%@ include file="../../common/exome_top.jsp" %> --%>
        <c:choose>
        	<c:when test="${!empty illness.pic}">
        	<img src="http://images.firstdimension.cn/image/illness/${illness.pic }" alt="疾病图片" class="like-banner">
        	</c:when>
        	<c:otherwise><img src="${ctx}/static/img/physic-ico/doctor.png" alt="疾病图片" class="like-banner"></c:otherwise>
        </c:choose>
		<h1 class="top-title">健康指导：</h1>
		<p class="show-content">${testContent }</p>
		<%@ include file="../../common/exome_bottom.jsp" %>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/healthGuide/detail.js -->
		<!-- build:js ../../static/js/exome/healthGuide/detail.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>

