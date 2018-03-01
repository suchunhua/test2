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
<title>${headerVo.titleInfo}</title>
<link href="${ctx}/static/css/exomeBase.css?rev=@@hash" rel="stylesheet">
</head>
<body>
	<div class="view view-gray-background">
		<%-- <%@ include file="../../common/exome_top.jsp" %> --%>
		<div class="img-box">
			<h1><i>健康指导</i><i>Health Guidance</i></h1>
			<img src="${ctx}/static/img/banner/healthGuide.png" alt="">
		</div>
		<ul class="navbar">
			<li><a href="${ctx }/exome/healthGuide/diseaseRisk?manage=diseaseRisk"><img src="${ctx}/static/img/physic-ico/heart.png" alt="疾病风险管理"><span>疾病管理</span></a></li>
			<li><a href="${ctx }/exome/healthGuide/diseaseRisk?manage=corporeity"><img src="${ctx}/static/img/physic-ico/physique.png" alt="个体体质管理"><span>体质管理</span></a></li>
			<li><a href="${ctx }/exome/healthGuide/diseaseRisk?manage=drugRisk"><img src="${ctx}/static/img/physic-ico/drug.png" alt="用药风险管理"><span>用药管理</span></a></li>
			<li><a href="${ctx }/exome/healthGuide/diseaseRisk?manage=nutrition"><img src="${ctx}/static/img/physic-ico/nutrition.png" alt="营养代谢管理"><span>营养管理</span></a></li>
		</ul>
		<%@ include file="../../common/exome_bottom.jsp" %>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/healthGuide/index.js -->
		<!-- build:js ../../static/js/exome/healthGuide/index.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>