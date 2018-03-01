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
<link href="${ctx}/static/css/exomeInterestTest.css?rev=@@hash" rel="stylesheet">
</head>
<body>
	<div class="view view-gray-background">
		<%-- <%@ include file="../../common/exome_top.jsp" %> --%>
		<div class="img-box">
			<h1><i>趣味检测</i><i>Interest Detection</i></h1>
			<img src="${ctx}/static/img/banner/interestTest.png" alt="">
		</div>
		<ul class="tab border-red-tab">
			<li onclick="tab.tabContent(this);" class="active"><a href="javascript:void(0);">感官偏好</a></li>
			<li onclick="tab.tabContent(this);"><a href="javascript:void(0);">脑力分析</a></li>
			<li onclick="tab.tabContent(this);"><a href="javascript:void(0);">个体运动</a></li>
		</ul>
		<div class="tab-content-fb tab-content">
			<!-- 感官偏好 -->
			<div class="section in">
				<ul class="notebook-row notebook-table">
				<c:forEach items="${sensoryList.sensList }" var="temp">
				    <%-- <li><span><a href="javascript:interestTest.getInterestTestDetail('sensory','${temp.category}');" class="link">${temp.category}</a></span><span><c:choose> <c:when test="${fn:contains(temp.comprehensive, '较高') }"><i class="red-high"></i>较高</c:when> <c:when test="${fn:contains(temp.comprehensive, '适中') }"><i class="green-normal"></i>适中</c:when> <c:when test="${fn:contains(temp.comprehensive, '较低') }"><i class="blue-low"></i>较低</c:when> <c:otherwise>${temp.comprehensive }</c:otherwise></c:choose></span></li> --%>
					<li><span><a href="${ctx }/exome/interestTest/detail?dataType=sensory&category=${temp.category}" class="link">${temp.category}</a></span><span><c:choose> <c:when test="${fn:contains(temp.comprehensive, '较高') }"><i class="red-high"></i>较高</c:when> <c:when test="${fn:contains(temp.comprehensive, '适中') }"><i class="green-normal"></i>适中</c:when> <c:when test="${fn:contains(temp.comprehensive, '较低') }"><i class="blue-low"></i>较低</c:when> <c:otherwise>${temp.comprehensive }</c:otherwise></c:choose></span></li>	
				</c:forEach>
				</ul>
			</div>
			<!-- 脑力分析 -->
			<div class="section">
				<ul class="notebook-row notebook-table">
				<c:forEach items="${intelligenceList.intelligenList }" var="temp">
					<c:choose>
						<c:when test="${fn:contains(temp.category, '/') }">
		    				<%-- <li><span><a href="javascript:interestTest.getInterestTestDetail('intelligence','${temp.category}');" class="link">${fn:substringAfter(temp.category, "/") }</a></span><span> --%>
							<li><span><a href="${ctx }/exome/interestTest/detail?dataType=intelligence&category=${temp.category}" class="link">${fn:substringAfter(temp.category, "/") }</a></span><span>
						</c:when>
						<c:otherwise>
							<%-- <li><span><a href="javascript:interestTest.getInterestTestDetail('intelligence','${temp.category}');" class="link">${temp.category }</a></span><span> --%>
							<li><span><a href="${ctx }/exome/interestTest/detail?dataType=intelligence&category=${temp.category}" class="link">${temp.category }</a></span><span>
						</c:otherwise>
					</c:choose>
    				<c:choose><c:when test="${fn:contains(temp.comprehensive, '较好') }"><i class="red-high"></i>较好</c:when><c:when test="${fn:contains(temp.comprehensive, '正常') || fn:contains(temp.comprehensive, '一般') }"><i class="green-normal"></i>正常</c:when><c:when test="${fn:contains(temp.comprehensive, '较低') }"><i class="blue-low"></i>较低</c:when><c:otherwise>${temp.comprehensive }</c:otherwise></c:choose></span></li>
				</c:forEach>
				</ul>
			</div>
			<!-- 个体运动 -->
			<div class="section">
				<ul class="notebook-row notebook-table">
				<c:forEach items="${individualList.sportList }" var="temp">
    				<%-- <li><span><a href="javascript:interestTest.getInterestTestDetail('individual','${temp.category}');" class="link">${temp.category}</a></span><span><c:choose><c:when test="${fn:contains(temp.comprehensive, '较高') || fn:contains(temp.comprehensive, '较好') }"><i class="red-high"></i>较高</c:when><c:when test="${fn:contains(temp.comprehensive, '正常') || fn:contains(temp.comprehensive, '一般') }"><i class="green-normal"></i>正常</c:when><c:when test="${fn:contains(temp.comprehensive, '较低') }"><i class="blue-low"></i>较低</c:when><c:otherwise>${temp.comprehensive }</c:otherwise></c:choose></span></li> --%>
					<li><span><a href="${ctx }/exome/interestTest/detail?dataType=individual&category=${temp.category}" class="link">${temp.category}</a></span><span><c:choose><c:when test="${fn:contains(temp.comprehensive, '较高') || fn:contains(temp.comprehensive, '较好') }"><i class="red-high"></i>较高</c:when><c:when test="${fn:contains(temp.comprehensive, '正常') || fn:contains(temp.comprehensive, '一般') }"><i class="green-normal"></i>正常</c:when><c:when test="${fn:contains(temp.comprehensive, '较低') }"><i class="blue-low"></i>较低</c:when><c:otherwise>${temp.comprehensive }</c:otherwise></c:choose></span></li>
				</c:forEach>
				</ul>
			</div>
		</div>
		<%@ include file="../../common/exome_bottom.jsp" %>
	</div>
	<!--# mergeTo:${ctx}/static/js/interestTest/list.js -->
		<!-- build:js ../../static/js/interestTest/list.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/services/tab.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/powerful/popup.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/interestTest.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
	<script src="${ctx }/static/plugin/layer/layer.js"></script>
</body>
</html>