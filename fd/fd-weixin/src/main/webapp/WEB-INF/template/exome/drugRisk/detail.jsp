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
			<div class="col-bg">
				<img src="${ctx}/static/img/physic-ico/drugs.png" class="like-banner">
			</div>
			<ul class="dot-cont">
			<c:forEach items="${listDruPoint }" var="druPoint">
				<li>
					<span class="black red-line">主要适应症：</span><span class="block black">${druPoint.illness}</span>
				</li>
				<li>
					<span class="black blue-line">相关基因：</span><span class="block black">${druPoint.gene}</span>
				</li>
				<li>
					<span class="black green-line">基因型：</span><span class="block black">${druPoint.genetype}</span>
				</li> 
				<li>
					<span class="black purple-line">用药提示：</span><span class="block black">
					<c:choose>
				     	<c:when test="${fn:contains(druPoint.drugtip,'|') eq true}">
				     		${fn:substringBefore(druPoint.drugtip,'|') }
				     	</c:when>
				     	<c:otherwise>
				     		${druPoint.drugtip }
				     	</c:otherwise>
				     </c:choose>
					</span>
				</li>
			</c:forEach>
		</ul> 
		
		<%-- <img src="${ctx}/static/img/physic-ico/drugs.png" alt="" class="like-banner">
		<h1 class="title">${drug}</h1>
		<ul class="dot-cont">
			<c:forEach items="${listDruPoint }" var="druPoint">
				<li>
					<i class="light-blue-dot"></i>
					<span class="black">主要适应症：</span><span class="block black">${druPoint.illness}</span>
				</li>
				<li>
					<i class="blue-dot"></i>
					<span class="black">相关基因：&emsp;</span><span class="block black">${druPoint.gene}</span>
				</li>
				<li>
					<i class="yellow-dot"></i>
					<span class="black">基因型：&emsp;&emsp;</span><span class="block black">${druPoint.genetype}</span>
				</li> 
				<li>
					<i class="red-dot"></i>
					<span class="black">用药提示：&emsp;</span><span class="block black">${druPoint.drugtip}</span>
				</li>
			</c:forEach>
		</ul> --%>
		<%@ include file="../../common/exome_bottom.jsp" %>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/drugRisk/detail.js -->
		<!-- build:js ../../static/js/exome/drugRisk/detail.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>