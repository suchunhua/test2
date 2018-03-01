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
<link href="${ctx}/static/css/exomeDrug.css?rev=@@hash" rel="stylesheet">
</head>
<body>
	<div class="view view-gray-background">
		<%-- <%@ include file="../../common/exome_top.jsp" %> --%>
		<ul class="sidebar">
			<li>药物转运蛋白和药物代谢酶类基因信息汇总</li>
		</ul>
		<ul class="words"></ul>
		<input type="hidden" id="pageNum"/>
		<input type="hidden" id="totalPage"/>
		<%@ include file="../../common/exome_bottom.jsp" %>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/drugRisk/list.js -->
		<!-- build:js ../../static/js/exome/drugRisk/list.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/services/page.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/drugRisk.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
	<script>
		$(function(){
			$("#pageNum").val("");
			$("#totalPage").val("");
			drugRisk.init({
				scrollObject:".words",
				checkScrollSide:'.words',
				pagePath:'/exome/drugRisk/infoSummary',
				packageData:drugRisk.infoSummary.packageData
			});
		});
	</script>
</body>
</html>