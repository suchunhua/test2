<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<title>${titleInfo}</title>
<link rel="stylesheet" href="${ctx}/static/css/health.css?rev=@@hash">
</head>
<body>
<%@ include file="exome_top.jsp" %>
<div class="jumbotron">
	<h1 class="big-title">温馨提示</h1>
	<div class="acticle">
		<c:choose>
			<c:when test="${titleInfo eq '疾病风险相关健康管理' }">
				<p>&nbsp;&nbsp;&nbsp;&nbsp;依据本次检测结果，我们为您量身定制以下健康管理建议，希望我们的建议能够帮助您更好地认识患病诱因、了解预防疾病的关键、远离疾病困扰，拥有强健体魄。<br/></p>
			</c:when>
			<c:when test="${titleInfo eq '个体体质相关健康管理' }">
				<p>&nbsp;&nbsp;&nbsp;&nbsp;您<span style="color: rgb(255, 0, 0);">
				<c:forEach items="${listHealthGuidance }" var="temp" varStatus="status">
					${temp.scrIll }<c:if test="${status.last ne true}">、</c:if>
				</c:forEach>易感。</span></p>
			</c:when>
			<c:when test="${titleInfo eq '药物风险相关健康管理' }">
				<p>&nbsp;&nbsp;&nbsp;&nbsp;临床治疗时，应遵医嘱调整剂量或选择疗效更佳的药物替代。</p>
			</c:when>
			<c:when test="${titleInfo eq '营养代谢能力相关健康管理' }">
				您<span style="color: rgb(255, 0, 0);">${listHealthGuidance[0].illness }</span>
			</c:when>
			<c:otherwise></c:otherwise>
		</c:choose>
	</div>
</div>

<div class="re-wrap">
	<h1 class="big-title">${bigTitle }</h1>
</div>

<div class="content">
	<span class="title">健康指导：</span>
	<div class="item">
		<c:if test="${empty listHealthGuidance}">		
			暂未找到相关健康指导
		</c:if>
		<c:choose>
			<c:when test="${titleInfo eq '疾病风险相关健康管理' or titleInfo eq '个体体质相关健康管理' }">
				<c:forEach items="${listHealthGuidance }" var="temp" varStatus="status">
					<c:if test="${empty temp.illGrade or (not empty temp.illGrade and fn:contains(temp.illGrade,temp.scrRisk)) }">
						<span style="color:red;display: block;">${temp.scrIll }:</span>
						${temp.testContent }
					</c:if>
				</c:forEach>
			</c:when>
			<c:when test="${titleInfo eq '药物风险相关健康管理' }">
				<c:forEach items="${listHealthGuidance }" var="temp" varStatus="status">
					${status.index + 1 }、${temp.drug }，${temp.drugtip }<br/>
					<c:if test="${status.last eq true }">应遵医嘱调整剂量或选择疗效更佳的药物替代。</c:if>
				</c:forEach>
			</c:when>
			<c:when test="${titleInfo eq '营养代谢能力相关健康管理' }">
				${listHealthGuidance[0].testcontent }
			</c:when>
			<c:otherwise></c:otherwise>
		</c:choose>
	</div>
</div>

<%@ include file="../common/bottom.jsp" %>
	<!--# mergeTo:${ctx}/static/js/health.js -->
		<!-- build:js ../../static/js/health.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/services/user.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>