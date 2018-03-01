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
	<div class="view">
		<%-- <%@ include file="../../common/exome_top.jsp" %> --%>
		<div class="container">
			<form class="de-search" action="${ctx }/exome/riskConstitution/allRisk">
				<div class="search-container">	
					<input type="text" name="screenName" value="${screenName }" id="q" onfocus="riskConstitution.allRisk.hideSearchBtn();" onblur="riskConstitution.allRisk.hideSearchBtn();">
					<c:if test="${empty screenName }">
						<label for="q" id="q_label">输入搜索名称</label>
						<img src="${ctx}/static/img/icon/icon-fd-black-search.png" alt="search" class="q_i">
					</c:if>
				</div>
			</form>
			<ul class="sidebar">
				<c:forEach var="scrIllType" items="${listScrIllType }" varStatus="status">
					<li <c:if test="${status.index eq scrIllTypeId }">class="active"</c:if>>
						<a href="${ctx }/exome/riskConstitution/allRisk?scrIllTypeId=${status.index}">${scrIllType }</a>
					</li>
				</c:forEach>
			</ul>
			<ul class="section">
				<c:forEach var="riskName" items="${allRiskList }">
					<li>
					<c:choose>
						<c:when test="${fn:contains(riskName,screenName) }">${fn:replace(riskName, screenName, '<i style="color:red">'.concat(screenName).concat('</i>'))  }</c:when>
						<c:otherwise>${riskName }</c:otherwise>
					</c:choose>
					</li>
				</c:forEach>
			</ul>
		</div>
		<%@ include file="../../common/exome_bottom.jsp" %>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/riskConstitution/allRisk.js -->
		<!-- build:js ../../static/js/exome/riskConstitution/allRisk.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/riskConstitution.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>