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
	<div class="view">
		<%-- <%@ include file="../../common/exome_top.jsp" %> --%>
		<img src="${ctx}/static/img/physic-ico/nutritional-metabolism.jpg" alt="" class="like-banner">
		<c:choose>
			<c:when test="${not empty interestTestDetail.sensDetList && fn:length(interestTestDetail.sensDetList) != 0 }">
				<h1 class="center">${interestTestDetail.sens.ability}</h1>
				<c:choose>
					<c:when test="${fn:contains(interestTestDetail.sens.ability,'较高') || fn:contains(interestTestDetail.sens.ability,'较好')}"><img src="${ctx}/static/img/physic-ico/grade-high.png" alt="" class="center"></c:when>
					<c:when test="${fn:contains(interestTestDetail.sens.ability,'适中') || fn:contains(interestTestDetail.sens.ability,'一般') || fn:contains(interestTestDetail.sens.ability,'正常')}"><img src="${ctx}/static/img/physic-ico/grade-in.png" alt="" class="center"></c:when>
					<c:otherwise><img src="${ctx}/static/img/physic-ico/grade-low.png" alt="" class="center"></c:otherwise>
				</c:choose>
				<table class="simple-table table3col">
					<thead><tr><th>检测基因</th><th>检测位点</th><th>基因型</th><th>代谢能力</th></tr></thead>
					<tbody>
						<c:forEach items="${interestTestDetail.sensDetList }" var="temp">
				        	<tr>
				        		<td><a href="http://www.genecards.org/cgi-bin/carddisp.pl?gene=${temp.gene}" target="_blank" onclick="return (function(){var truthBeTold = window.confirm('你正链接到genecards...');  if(truthBeTold==false){return false;}})()">${temp.gene}</a></td>
				        		<td>${temp.rs }</td><td>${temp.gene1}</td><td>${temp.ability}</td>
				        	</tr>
				        </c:forEach>
					</tbody>
				</table>
			</c:when>
			<c:when test="${not empty interestTestDetail.intelligenDetList && fn:length(interestTestDetail.intelligenDetList) != 0 }">
				<h1 class="center">${interestTestDetail.intelligen.ability}</h1>
				<c:choose>
					<c:when test="${fn:contains(interestTestDetail.intelligen.ability,'较高') || fn:contains(interestTestDetail.intelligen.ability,'较好')}"><img src="${ctx}/static/img/physic-ico/grade-high.png" alt="" class="center"></c:when>
					<c:when test="${fn:contains(interestTestDetail.intelligen.ability,'适中') || fn:contains(interestTestDetail.intelligen.ability,'一般') || fn:contains(interestTestDetail.intelligen.ability,'正常')}"><img src="${ctx}/static/img/physic-ico/grade-in.png" alt="" class="center"></c:when>
					<c:otherwise><img src="${ctx}/static/img/physic-ico/grade-low.png" alt="" class="center"></c:otherwise>
				</c:choose>
				<table class="simple-table table3col">
					<thead><tr><th>检测基因</th><th>基因型</th><th>代谢能力</th></tr></thead>
					<tbody>
						<c:forEach items="${interestTestDetail.intelligenDetList }" var="temp">
				        	<tr>
				        		<td><a href="http://www.genecards.org/cgi-bin/carddisp.pl?gene=${temp.gene}" target="_blank" onclick="return (function(){var truthBeTold = window.confirm('你正链接到genecards...');  if(truthBeTold==false){return false;}})()">${temp.gene}</a></td>
				        		<td>${temp.gene1}</td><td>${temp.ability}</td>
				        	</tr>
				        </c:forEach>
					</tbody>
				</table>
			</c:when>
			<c:when test="${not empty interestTestDetail.sportDetList && fn:length(interestTestDetail.sportDetList) != 0 }">
				<h1 class="center">${interestTestDetail.sport.ability}</h1>
				<c:choose>
					<c:when test="${fn:contains(interestTestDetail.sport.ability,'较高') || fn:contains(interestTestDetail.sport.ability,'较好')}"><img src="${ctx}/static/img/physic-ico/grade-high.png" alt="" class="center"></c:when>
					<c:when test="${fn:contains(interestTestDetail.sport.ability,'适中') || fn:contains(interestTestDetail.sport.ability,'一般') || fn:contains(interestTestDetail.sport.ability,'正常')}"><img src="${ctx}/static/img/physic-ico/grade-in.png" alt="" class="center"></c:when>
					<c:otherwise><img src="${ctx}/static/img/physic-ico/grade-low.png" alt="" class="center"></c:otherwise>
				</c:choose>
				<table class="simple-table table3col">
					<thead><tr><th>检测基因</th><th>基因型</th><th>代谢能力</th></tr></thead>
					<tbody>
						<c:forEach items="${interestTestDetail.sportDetList }" var="temp">
				        	<tr>
				        		<td><a href="http://www.genecards.org/cgi-bin/carddisp.pl?gene=${temp.gene}" target="_blank" onclick="return (function(){var truthBeTold = window.confirm('你正链接到genecards...');  if(truthBeTold==false){return false;}})()">${temp.gene}</a></td>
				        		<td>${temp.gene1}</td><td>${temp.ability}</td>
				        	</tr>
				        </c:forEach>
					</tbody>
				</table>
			</c:when>
			<c:otherwise>
				<img alt="没有发现数据" src="${ctx }/static/img/no-data.png" class="no-data">
			</c:otherwise>
		</c:choose>
		<%@ include file="../../common/exome_bottom.jsp" %>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/interestTest/detail.js -->
		<!-- build:js ../../static/js/exome/interestTest/detail.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>