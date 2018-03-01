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
<link href="${ctx}/static/css/exomeRiskConstitution.css?rev=@@hash" rel="stylesheet">
</head>
<body>
	<div class="view view-gray-background">
		<%-- <%@ include file="../../common/exome_top.jsp" %> --%>
		<div class="warp">
			<div class="disease-box"
				<c:choose>
					<c:when test="${fn:substring(illnessImg,fn:length(illnessImg)-1,fn:length(illnessImg)) eq '/'}">
						style="background-image: url('${ctx }/static/img/no-disease-small.jpg');"
					</c:when>
					<c:otherwise>
						style="background-image: url('${illnessImg }');"
					</c:otherwise>
				</c:choose>
			>
				<div class="disease-name">${headerVo.titleInfo}</div>
			</div>
			<table class="table3col1">
				<c:choose>
					<c:when test="${screenDetSumList != null && fn:length(screenDetSumList) > 0 }">
						<!-- <thead> 
							<tr><th>检测基因</th><th>染色体位置</th>
							<th>纯/杂合</th><th>变异氨基酸</th></tr> 
						</thead>
						<tbody> -->
						<c:forEach items="${selfIllList }" var="selfIll">
							<tr>
								<td>检测基因</td><td>${selfIll.scrGene }</td>
								<td><a href="http://www.genecards.org/cgi-bin/carddisp.pl?gene=${selfIll.scrGene }" target="_blank" onclick="return (function(){var truthBeTold = window.confirm('你正链接到genecards...');  if(truthBeTold==false){return false;}})()">
								<img src="${ctx }/static/img/icon/icon-fd-arrow-right.png">
								</a></td>
							</tr>
							<tr>
				            	<td>纯/杂合</td><td>${selfIll.scrLocate }</td><td></td>
				            </tr>
				            <tr>
				            	<td>变异氨基酸</td><td onclick="riskConstitution.detail.histogram(this);" scrChange="${selfIll.scrChange }" scrGene="${selfIll.scrGene }">${selfIll.scrChange }</td><td></td>
				            </tr>
			            </c:forEach>
			            <!-- </tbody> -->
					</c:when>
					<c:otherwise>
						<!-- <thead> 
							<tr><th>检测基因</th><th>纯/杂合</th><th>变异氨基酸</th></tr> 
						</thead>
						<tbody> -->
						<c:forEach items="${selfIllList }" var="selfIll">
							<tr>
								<td>检测基因</td><td>${selfIll.scrGene }</td>
								<td><a href="http://www.genecards.org/cgi-bin/carddisp.pl?gene=${selfIll.scrGene }" target="_blank" onclick="return (function(){var truthBeTold = window.confirm('你正链接到genecards...');  if(truthBeTold==false){return false;}})()">
								<img src="${ctx }/static/img/icon/icon-fd-arrow-right.png"></a></td>
							</tr>
				            <tr>
				            	<td>纯/杂合</td><td>${selfIll.scrLocate }</td><td></td>
				            </tr>
				            <tr>
				            	<td>变异氨基酸</td><td><a href="${ctx }/chart/exac?scrChange=${selfIll.scrChange }&scrGene=${selfIll.scrGene }&selfTestDetId=0">${selfIll.scrChange }</a></td><td></td>
				            </tr>
			            </c:forEach>
			            <!-- </tbody> -->
					</c:otherwise>
				</c:choose>
			</table>
		</div>
		<%@ include file="../../common/exome_bottom.jsp" %>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/riskConstitution/detail.js -->
		<!-- build:js ../../static/js/exome/riskConstitution/detail.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/plugin/highcharts/highcharts.src.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/riskConstitution.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>