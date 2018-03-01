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
	<div class="view">
		<%-- <%@ include file="../../common/exome_top.jsp" %> --%>
		<img src="${ctx}/static/img/physic-ico/nutritional-metabolism.jpg" alt="" class="like-banner">
		<h1 class="center">${category }${comprehensive }</h1>
		<c:choose>
			<c:when test="${comprehensive eq '较高'}"><img src="${ctx}/static/img/physic-ico/grade-high.png" alt="" class="center"></c:when>
			<c:when test="${comprehensive eq '正常'}"><img src="${ctx}/static/img/physic-ico/grade-in.png" alt="" class="center"></c:when>
			<c:otherwise><img src="${ctx}/static/img/physic-ico/grade-low.png" alt="" class="center"></c:otherwise>
		</c:choose>
		<c:if test="${not empty alcoholResult}">
			<div id="main" style="width: 100%;height:400px;"></div>
			<p style="text-align: center;margin-top: -50px;padding: 3%;">您的酒精代谢能力为<span id="gatherLevel"></span>，击败了<span id="beatRatio"></span>%的人，并与<span id="quiteRatio"></span>%的人旗鼓相当。</p>
		</c:if>
		<table class="simple-table table3col">
			<thead><tr><th>检测基因</th><th>检测位点</th><th>基因型</th><th>代谢能力</th></tr></thead>
			<tbody>
				<c:forEach items="${nutrientDetList }" var="temp">
		        	<tr>
		        		<td><a href="http://www.genecards.org/cgi-bin/carddisp.pl?gene=${temp.gene}" target="_blank" onclick="return (function(){var truthBeTold = window.confirm('你正链接到genecards...');  if(truthBeTold==false){return false;}})()">${temp.gene}</a></td>
		        		<td>${temp.rs }</td><td>${temp.gene1}</td><td>${temp.ability}</td>
		        	</tr>
		        </c:forEach>
			</tbody>
		</table>
		<%-- <ul class="table-header">
			<c:forEach items="${nutrientDetList }" var="temp">
	        	<li><h2>检测基因：<a href="http://www.genecards.org/cgi-bin/carddisp.pl?gene=${temp.gene}" target="_blank" onclick="return (function(){var truthBeTold = window.confirm('你正链接到genecards...');  if(truthBeTold==false){return false;}})()">${temp.gene}</a></h2>
	        	<span class="weidian">检测位点：${temp.rs}</span><span>基因型：${temp.gene1}</span><span class="nl">代谢能力：${temp.ability}</span><span>结果提示：${temp.reminder}</span></li>
	        </c:forEach>
		</ul> --%>
		<%@ include file="../../common/exome_bottom.jsp" %>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/nutritional/detail.js -->
		<!-- build:js ../../static/js/exome/nutritional/detail.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/powerful/autoMergeCells.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/nutritional.js"></script>
	    <script replace="gulp" src="${ctx}/static/plugin/echarts/echarts.simple.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/chart.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
	<script>
	$(function(){
		nutritional.init({
			module:nutritional.detail.init()
		});

		chart.baiduCharts('${alcoholResult}',$('#main'));
	});
	</script>
</body>
</html>