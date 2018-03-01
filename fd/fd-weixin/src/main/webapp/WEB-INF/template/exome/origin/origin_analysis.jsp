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
<link href="${ctx}/static/css/exomeOrigin.css?rev=@@hash" rel="stylesheet">
</head>
<body>
	<div class="view view-gray-background">
		<%-- <%@ include file="../../common/exome_top.jsp" %> --%>
		<ul class="tab border-red-tab">
			<li onclick="tab.tabContent(this);" class="active"><a href="javascript:void(0);">大陆</a></li>
			<li onclick="tab.tabContent(this);"><a href="javascript:void(0);">东亚</a></li>
		</ul>
		<div class="tab-content-bb tab-content">
			<!-- 大陆 -->
			<div class="section in">
				<div class="pie-chart" id="region"></div>
				<div class="hidden">
					<h1 class="left-line-title">大陆板块成分分析</h1>
			        <ul class="dot-list green" id="regionUl">
			         	<li><p>东亚<span class="percentage" <c:if test="${continentMap.continentPojo.east_Asia eq continentMap.maxContient }">style="color:#c8a916;"</c:if>>${continentMap.continentPojo.east_Asia }%</span></p></li>
			         	<li><p>美洲<span class="percentage" <c:if test="${continentMap.continentPojo.america eq continentMap.maxContient }">style="color:#c8a916;"</c:if>>${continentMap.continentPojo.america }%</span></p></li>
			         	<li><p>中南亚<span class="percentage" <c:if test="${continentMap.continentPojo.central_South_Asia eq continentMap.maxContient }">style="color:#c8a916;"</c:if>>${continentMap.continentPojo.central_South_Asia }%</span></p></li>
			         	<li><p>北非<span class="percentage" <c:if test="${continentMap.continentPojo.north_Africa eq continentMap.maxContient }">style="color:#c8a916;"</c:if>>${continentMap.continentPojo.north_Africa }%</span></p></li>
			         	<li><p>南非<span class="percentage" <c:if test="${continentMap.continentPojo.south_Africa eq continentMap.maxContient }">style="color:#c8a916;"</c:if>>${continentMap.continentPojo.south_Africa }%</span></p> </li>
			         	<li><p>欧洲<span class="percentage" <c:if test="${continentMap.continentPojo.europe eq continentMap.maxContient }">style="color:#c8a916;"</c:if>>${continentMap.continentPojo.europe }%</span></p> </li>
			         	<li><p>大洋州<span class="percentage" <c:if test="${continentMap.continentPojo.oceania eq continentMap.maxContient }">style="color:#c8a916;"</c:if>>${continentMap.continentPojo.oceania }%</span></p> </li>
			   		</ul>
		   		</div>
			</div>
			<!-- 东亚 -->
			<div class="section">
				<div class="pie-chart" id="nation"></div>
				<div class="hidden">
					<h1 class="left-line-title">东亚区域成分分析</h1>
			        <ul class="dot-list green" id="nationUl">
			         	<li><p>汉族<span class="percentage" <c:if test="${east_AsiaMap.east_AsiaPojo.han eq east_AsiaMap.maxEastAsia }">style="color:#c8a916;"</c:if>>${east_AsiaMap.east_AsiaPojo.han }%</span></p> </li>
				   		<li><p>鄂伦春<span class="percentage" <c:if test="${east_AsiaMap.east_AsiaPojo.oroqen eq east_AsiaMap.maxEastAsia }">style="color:#c8a916;"</c:if>>${east_AsiaMap.east_AsiaPojo.oroqen }%</span></p> </li>
				   		<li><p>傣族<span class="percentage" <c:if test="${east_AsiaMap.east_AsiaPojo.dai eq east_AsiaMap.maxEastAsia }">style="color:#c8a916;"</c:if>>${east_AsiaMap.east_AsiaPojo.dai }%</span></p> </li>
				   		<li><p>苗族<span class="percentage" <c:if test="${east_AsiaMap.east_AsiaPojo.miao eq east_AsiaMap.maxEastAsia }">style="color:#c8a916;"</c:if>>${east_AsiaMap.east_AsiaPojo.miao }%</span></p> </li>
				   		<li><p>彝族/纳西族<span class="percentage" <c:if test="${east_AsiaMap.east_AsiaPojo.yiNaxi eq east_AsiaMap.maxEastAsia }">style="color:#c8a916;"</c:if>>${east_AsiaMap.east_AsiaPojo.yiNaxi }%</span></p> </li>
				   		<li><p>畲族<span class="percentage" <c:if test="${east_AsiaMap.east_AsiaPojo.she eq east_AsiaMap.maxEastAsia }">style="color:#c8a916;"</c:if>>${east_AsiaMap.east_AsiaPojo.she }%</span></p> </li>
				   		<li><p>拉祜族<span class="percentage" <c:if test="${east_AsiaMap.east_AsiaPojo.lahu eq east_AsiaMap.maxEastAsia }">style="color:#c8a916;"</c:if>>${east_AsiaMap.east_AsiaPojo.lahu }%</span></p> </li>
				   		<li><p>土家族<span class="percentage" <c:if test="${east_AsiaMap.east_AsiaPojo.tu eq east_AsiaMap.maxEastAsia }">style="color:#c8a916;"</c:if>>${east_AsiaMap.east_AsiaPojo.tu }%</span></p> </li>
				   		<li><p>柬埔寨<span class="percentage" <c:if test="${east_AsiaMap.east_AsiaPojo.cambodia eq east_AsiaMap.maxEastAsia }">style="color:#c8a916;"</c:if>>${east_AsiaMap.east_AsiaPojo.cambodia }%</span></p> </li>
				   		<li><p>雅库特<span class="percentage" <c:if test="${east_AsiaMap.east_AsiaPojo.yakut eq east_AsiaMap.maxEastAsia }">style="color:#c8a916;"</c:if>>${east_AsiaMap.east_AsiaPojo.yakut }%</span></p> </li>
				   		<li><p>达斡尔族<span class="percentage" <c:if test="${east_AsiaMap.east_AsiaPojo.daur eq east_AsiaMap.maxEastAsia }">style="color:#c8a916;"</c:if>>${east_AsiaMap.east_AsiaPojo.daur }%</span></p> </li>
				   		<li><p>锡伯族<span class="percentage" <c:if test="${east_AsiaMap.east_AsiaPojo.xibo eq east_AsiaMap.maxEastAsia }">style="color:#c8a916;"</c:if>>${east_AsiaMap.east_AsiaPojo.xibo }%</span></p> </li>
				   		<li><p>赫哲族<span class="percentage" <c:if test="${east_AsiaMap.east_AsiaPojo.hezhen eq east_AsiaMap.maxEastAsia }">style="color:#c8a916;"</c:if>>${east_AsiaMap.east_AsiaPojo.hezhen }%</span></p> </li>
				   		<li><p>其他<span class="percentage" <c:if test="${east_AsiaMap.east_AsiaPojo.others + east_AsiaMap.east_AsiaPojo.japan eq east_AsiaMap.maxEastAsia }">style="color:#c8a916;"</c:if>><fmt:formatNumber type="number" value="${east_AsiaMap.east_AsiaPojo.others + east_AsiaMap.east_AsiaPojo.japan }" pattern="0.00" maxFractionDigits="2"/>%</span></p> </li>
			   		</ul>
		   		</div>
	   		</div> 
		</div>
		<%@ include file="../../common/exome_bottom.jsp" %>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/origin/originAnalysis.js -->
		<!-- build:js ../../static/js/exome/origin/originAnalysis.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/services/tab.js"></script>
	    <script replace="gulp" src="${ctx}/static/plugin/highcharts/highcharts.src.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/origin.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
	<script>
		$(function(){
			origiN.analysis.init({
				continentPojoOceania : "${continentMap.continentPojo.oceania }",
				continentPojoEurope : "${continentMap.continentPojo.europe }",
				continentPojoSouth_Africa : "${continentMap.continentPojo.south_Africa }",
				continentPojoNorth_Africa : "${continentMap.continentPojo.north_Africa }",
				continentPojoCenlial_South_Asia : "${continentMap.continentPojo.central_South_Asia }",
				continentPojoAmerica : "${continentMap.continentPojo.america }",
				continentPojoEast_Asia : "${continentMap.continentPojo.east_Asia }",
				
				eastAsiaPojoOthers : "${east_AsiaMap.east_AsiaPojo.others + east_AsiaMap.east_AsiaPojo.japan }",
				eastAsiaPojoDaur : "${east_AsiaMap.east_AsiaPojo.daur }",
				eastAsiaPojoXibo : "${east_AsiaMap.east_AsiaPojo.xibo }",
				eastAsiaPojoHezhen : "${east_AsiaMap.east_AsiaPojo.hezhen }",
				eastAsiaPojoYakut : "${east_AsiaMap.east_AsiaPojo.yakut }",
				eastAsiaPojoCambodia : "${east_AsiaMap.east_AsiaPojo.cambodia }",
				eastAsiaPojoTu : "${east_AsiaMap.east_AsiaPojo.tu }",
				eastAsiaPojoLahu : "${east_AsiaMap.east_AsiaPojo.lahu }",
				eastAsiaPojoShe : "${east_AsiaMap.east_AsiaPojo.she }",
				eastAsiaPojoYinaxi : "${east_AsiaMap.east_AsiaPojo.yiNaxi }",
				eastAsiaPojoMiao : "${east_AsiaMap.east_AsiaPojo.miao }",
				eastAsiaPojoDai : "${east_AsiaMap.east_AsiaPojo.dai }",
				eastAsiaPojoOroqen : "${east_AsiaMap.east_AsiaPojo.oroqen }",
				eastAsiaPojoHan : "${east_AsiaMap.east_AsiaPojo.han }"
			});
		})
	</script>
</body>
</html>