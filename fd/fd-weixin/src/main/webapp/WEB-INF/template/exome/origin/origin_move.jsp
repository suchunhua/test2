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
		<c:if test="${ 'mother' eq dataType }">
			<div class="img-container-box">
	        	<div class="world-map img80w img-container">
		            <c:forEach items="${showArea }" var="showArea" varStatus="status">
		            	<c:if test="${!empty showArea }">
		            		<img src="${ctx}/static/img/map/${showArea }.png" alt="">
		            	</c:if>
		            </c:forEach>
		        </div>
    		</div>
	    </c:if>
	    
	    <c:if test="${ 'father' eq dataType }"> 
	    	<c:forEach items="${paths }" var="path" varStatus="status">
	    		<c:if test="${status.last }">
	    		<div class="img-container-box">
		        	<img alt="" src="${ctx }/static/img/map/ypath/${path }.png" class="img80w img-container" >
	    		</div>
		        </c:if>	
	    	</c:forEach>
	    </c:if>
	    
	    <c:if test="${ 'father' eq dataType }"> 
	    	<!-- <h1 class="left-line-title">父系祖源分析结果</h1> -->
	    
	    	 <div class="origin-branch"><span>Y染色体支系:</span><span>${originMove.haplogroup}</span></div>
	    	 <div class="origin-detail">
	    	 		<p>${originMove.introduce }</p>
	    	 </div>
        </c:if>
        <c:if test="${ 'mother' eq dataType }">
        	<!-- <h1 class="left-line-title">母系祖源分析结果</h1> -->
        	
	    	 <div class="origin-branch"><span>线粒体DNA单倍群分析:</span><span>${originMove.haplogroup}</span></div>
	    	 <div class="origin-detail" >
	    	 		<p>${originMove.introduce }</p>
	    	 </div>
        </c:if>
        
		<%@ include file="../../common/exome_bottom.jsp" %>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/origin/originMove.js -->
		<!-- build:js ../../static/js/exome/origin/originMove.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/origin.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
	<script>
		$(function(){
			origiN.move.init({});
		});
	</script>
</body>
</html>