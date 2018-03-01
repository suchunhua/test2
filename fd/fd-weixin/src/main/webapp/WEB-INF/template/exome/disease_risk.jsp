<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
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
		<%-- <%@ include file="../common/exome_top.jsp" %> --%>
		<ul class="underline-tab">
			<li <c:if test="${param.urlactive eq 'syntrophusList' }">class="active"</c:if>><a href="${ctx }/customer/syntrophusList?urlactive=syntrophusList">全外检测的遗传病列表<i class="triangle"></i></a></li>
			<li <c:if test="${param.urlactive eq 'diseaseRisk' }">class="active"</c:if>><a href="${ctx }/exome/diseaseRisk?urlactive=diseaseRisk">您的疾病风险<i class="triangle"></i></a></li>
		</ul>
		<c:forEach items="${scrIllTypeArray }" var="scrIllType">
            <c:if test="${scrIllType ne 'null'}">
                <div class="ico-explain-func-box">
					<div class="ico-explain-func" onclick="list.toggleContent(this);">
						<i class="ico icon-fd-gene"></i>
						<span class="explain">${scrIllType }</span>
						<a href="javascript:void(0);" class="func"></a>
					</div>
					<ul class="table-header">
					<c:forEach items="${selfIllList }" var="temp">
						<c:if test="${temp.scrIllType eq scrIllType}">
							<li>
								<h2>${temp.scrIll }</h2>
								<span>基因：${temp.scrGene}</span>
								<span>变异：${temp.scrChange}</span>
								<span>纯合／杂合：${temp.scrLocate}</span>
								<span>致病风险等级：${temp.scrRisk}</span>
							</li>
						</c:if>
					</c:forEach>
					</ul>
				</div>
            </c:if>
        </c:forEach>
		<%@ include file="../common/exome_bottom.jsp" %>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/diseaseRisk.js -->
		<!-- build:js ../../static/js/exome/diseaseRisk.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/services/list.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>