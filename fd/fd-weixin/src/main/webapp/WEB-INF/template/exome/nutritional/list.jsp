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
<link href="${ctx}/static/css/exomeNutritional.css?rev=@@hash" rel="stylesheet">
</head>
<body>
	<div class="view view-gray-background">
		<%-- <%@ include file="../../common/exome_top.jsp" %> --%>
		<div class="img-box">
			<h1><i>营养代谢</i><i>Nutrition Metabolism</i></h1>
			<img src="${ctx}/static/img/banner/nutritionMetabolism.png" alt="">
		</div>
		<div class="nutritionBox">
			<h1 class="left-dot-title"><i></i>营养代谢检测结果汇总</h1>
			<input type="hidden" id="pageNum"/>
			<input type="hidden" id="totalPage"/>
			<ul class="notebook-row notebook-table"></ul>
		</div>
		<%@ include file="../../common/exome_bottom.jsp" %>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/nutritional/list.js -->
		<!-- build:js ../../static/js/exome/nutritional/list.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/services/list.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/services/page.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/nutritional.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
	<script>
	$(function(){
		nutritional.init({
			module:nutritional.list.init()
		});
	});
	</script>
</body>
</html>