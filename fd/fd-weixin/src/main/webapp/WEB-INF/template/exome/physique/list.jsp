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
<link href="${ctx}/static/css/exomePhysique.css?rev=@@hash" rel="stylesheet">
</head>
<body>
	<div class="view view-gray-background">
		<%-- <%@ include file="../../common/exome_top.jsp" %> --%>
		<ul class="tab border-red-tab">
			<li onclick="tab.tabContent(this);" class="active"><a href="javascript:void(0);">病原体感染风险</a></li>
			<li onclick="tab.tabContent(this);"><a href="javascript:void(0);">其他个体体质</a></li>
		</ul>
		<div class="tab-content-bb tab-content">
			<!-- 病原体感染检测 -->
			<div class="section in">
				<c:forEach items="${selfTestMapList }" var="selfTestMap">
					<c:if test="${selfTestMap.key ne '其他' }">
					<div class="shrink">
						<h1 class="shrink-title" onclick="physique.showList(this);"><i class="left-dot"></i>${selfTestMap.key }<img src="${ctx}/static/img/icon/icon-fd-arrow-up.png" alt="下拉"></h1>
						<ul class="shrink-list">
							<c:forEach items="${selfTestMap.value }" var="selfTest">
								<li onclick="physique.showPathogensDetail(this);">
									${selfTest.selfName}
									<c:choose>
										<c:when test="${fn:contains(selfTest.result,'较低')}">
										<i class="triangle-up"></i><span>较低</span><i class="blue-low"></i>
										</c:when>
										<c:when test="${fn:contains(selfTest.result,'正常')}">
										<i class="triangle-up"></i><span>正常</span><i class="green-normal"></i>
										</c:when>
										<c:otherwise>
										<i class="triangle-up"></i><span>较高</span><i class="red-high"></i>
										</c:otherwise>
									</c:choose>
								</li>
							</c:forEach>
						</ul>
					</div>
					</c:if>
				</c:forEach>
			</div>
			<!-- 其他个体体质 -->
			<div class="section">
				<ul class="img-span" id="otherPhysique">
					<c:forEach items="${otherEpitome}" var="epitome">
						<li onclick="physique.showPhysiqueDetail(this);" result="${epitome.value }">
						<c:choose>
							<c:when test="${epitome.key eq '斑秃' }">
								<img src="${ctx}/static/img/physic-ico/pelada.png" alt="${epitome.key}">
							</c:when>
							<c:when test="${epitome.key eq '狐臭' }">
								<img src="${ctx}/static/img/physic-ico/body-odor.png" alt="${epitome.key}">
							</c:when>
							<c:when test="${epitome.key eq '肥胖' }">
								<img src="${ctx}/static/img/physic-ico/obesity.png" alt="${epitome.key}">
							</c:when>
						</c:choose>		
						<span>${epitome.key}</span></li>
					</c:forEach>
					<c:forEach items="${selfTestMapList }" var="selfTestMap">
						<c:if test="${selfTestMap.key eq '其他' }">
							<c:forEach items="${selfTestMap.value }" var="selfTest">
								<c:if test="${selfTest.selfName eq '苯中毒' }">
									<li onclick="physique.showPhysiqueDetail(this);" result="${selfTest.result }"><img src="${ctx}/static/img/physic-ico/poisoning.png" alt="苯中毒"><span>苯中毒</span></li>
								</c:if>
							</c:forEach>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="physique-detail">
			<h1></h1>
			<p>易感风险：</p>
			<table>
				<thead><tr><th>检测基因</th><th id="testSite">检测位点</th><th>结果提示</th></tr></thead>
				<tbody></tbody>
			</table>
		</div>
		<%@ include file="../../common/exome_bottom.jsp" %>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/physique/list.js -->
		<!-- build:js ../../static/js/exome/physique/list.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/services/tab.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/powerful/popup.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/physique.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>