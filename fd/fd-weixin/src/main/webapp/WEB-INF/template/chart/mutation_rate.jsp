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
<title>突变率</title>
<link href="${ctx}/static/css/chart.css?rev=@@hash" rel="stylesheet">
</head>
<body>
	<div class="view">
		<%-- <%@ include file="../common/exome_top.jsp" %> --%>
		<div class="histogram">
			<div id="container"></div>
		</div>
		<%@ include file="../common/exome_bottom.jsp" %>
	</div>
	<!--# mergeTo:${ctx}/static/js/chart/mutationRate.js -->
		<!-- build:js ../../static/js/chart/mutationRate.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/plugin/highcharts/highcharts.src.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/chart.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
	<script>
	$(function(){
		chart.histogram('${exac.data}');
	});
	</script>
</body>
</html>