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
		<c:choose>
			<c:when test="${not empty searchBox }">
				<div class="black-search-box"><div class="black-search"><i class="icon-fd-black-search"></i><input type="text" class="search-input" placeholder="输入基因名" id="uncergene"></div></div>
			</c:when>
			<c:otherwise>
				<div class="all-radius-checkbox-tab">
					<a href="${ctx }/exome/variationPool/whetherPathogenic?urlactive=whetherPathogenic" <c:if test="${param.urlactive eq 'whetherPathogenic' }">class="active"</c:if>>不确定是否致病突变</a>
					<a href="${ctx }/exome/variationPool/defectiveGene?urlactive=defectiveGene" <c:if test="${param.urlactive eq 'defectiveGene' }">class="active"</c:if>>缺陷基因</a>
				</div>
			</c:otherwise>
		</c:choose>
		<input type="hidden" id="pageNum"/>
		<input type="hidden" id="totalPage"/>
		<ul class="table-header"></ul>
		<%@ include file="../../common/exome_bottom.jsp" %>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/variationPool/whetherPathogenic.js -->
		<!-- build:js ../../static/js/exome/variationPool/whetherPathogenic.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/services/page.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/variationPool.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
	<script>
	$(function(){
		variationPool.init({
			module:variationPool.whetherPathogenic.init()
		});
	});
	</script>
</body>
</html>