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
		<div class="img-box">
			<h1><i>祖源分析</i><i>Source Analysis</i></h1>
			<img src="${ctx}/static/img/banner/origin-cover.png" alt="">
		</div>
		<a href="${ctx}/exome/origin/analysis" class="note">
			<img src="${ctx}/static/img/physic-ico/autosomal.png" alt="常染色体祖源分析"><h1>常染色体祖源分析</h1>
		</a>
		<c:if test="${collInfo.sex ne '女'}">
			<a href="${ctx}/exome/origin/move?data=father" class="note">
				<img src="${ctx}/static/img/physic-ico/father.png" alt="父系祖源分析"><h1>父系祖源分析</h1>
			</a>
		</c:if>
		<a href="${ctx}/exome/origin/move?data=mother" class="note">
			<img src="${ctx}/static/img/physic-ico/mother.png" alt="母系祖源分析"><h1>母系祖源分析</h1>
		</a>
		<%@ include file="../../common/exome_bottom.jsp" %>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/origin/originHome.js -->
		<!-- build:js ../../static/js/exome/origin/originHome.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>