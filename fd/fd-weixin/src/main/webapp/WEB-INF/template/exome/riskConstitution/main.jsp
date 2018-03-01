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
		<div class="ith-box">
			<c:forEach var="scrIllType" items="${listScrIllType }" varStatus="status">
				<a href="${ctx }/exome/riskConstitution/list?scrIllTypeId=${status.index}" class="img-text-horizontal">
					<%-- <c:choose>
						<c:when test="${status.index eq 0}"><img src="${ctx}/static/img/physic-ico/hereditary-tumor.png" alt="${scrIllType }"></c:when>
						<c:when test="${status.index eq 1}"><img src="${ctx}/static/img/physic-ico/major-genetic-diseases.png" alt="重大遗传疾病"></c:when>
						<c:when test="${status.index eq 2}"><img src="${ctx}/static/img/physic-ico/monogenic-disorders.png" alt="单基因遗传病"></c:when>
						<c:when test="${status.index eq 3}"><img src="${ctx}/static/img/physic-ico/other-genetic-diseases.png" alt="其他遗传疾病"></c:when>
						<c:when test="${status.index eq 4}"><img src="${ctx}/static/img/physic-ico/mitochondrial-genetic-disease.png" alt="线粒体遗传病"></c:when>
					</c:choose> --%>
					<span>${scrIllType }</span>
				</a>
			</c:forEach>
		</div>
		<%@ include file="../../common/exome_bottom.jsp" %>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/riskConstitution/main.js -->
		<!-- build:js ../../static/js/exome/riskConstitution/main.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>