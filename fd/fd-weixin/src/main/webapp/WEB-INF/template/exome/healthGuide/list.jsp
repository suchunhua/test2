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
<title>${titleInfo}</title>
<link href="${ctx}/static/css/exomeHealthGuide.css?rev=@@hash" rel="stylesheet">
</head>
<body>
	<div class="view view-gray-background">
		<%-- <%@ include file="../../common/exome_top.jsp" %> --%>
		<c:if test="${titleInfo ne '药物风险相关健康管理' }">
			<div class="describe-title">
				<h1 class="title left-line-title">结果提示</h1>
				<div class="describe">
					<c:choose>
						<c:when test="${titleInfo eq '疾病风险相关健康管理' }">
							<p class="summary">
								<c:set var="risk1"></c:set>
								<c:set var="risk2"></c:set>
								<c:set var="risk3"></c:set>
								<c:set var="risk4"></c:set>
								<c:forEach items="${listHealthGuidance }" var="temp" varStatus="status">
									<c:choose>
										<c:when test="${temp.scrIllType eq '遗传性肿瘤' }">
											<c:if test="${empty temp.illGrade or (not empty temp.illGrade and fn:contains(temp.illGrade,temp.scrRisk)) }">
												<c:set var="risk1" value="${risk1.concat(temp.scrIll).concat(',') }"></c:set>
											</c:if>
										</c:when>
										<c:when test="${temp.scrIllType eq '重大遗传疾病' }">
											<c:set var="risk2" value="${risk2.concat(temp.scrIll).concat(',')}"></c:set>
										</c:when>
										<c:when test="${temp.scrIllType eq '单基因遗传病' }">
											<c:set var="risk3" value="${risk3.concat(temp.scrIll).concat(',') }"></c:set>
										</c:when>
										<c:when test="${temp.scrIllType eq '其他遗传疾病' }">
											<c:set var="risk4" value="${risk4.concat(temp.scrIll).concat(',') }"></c:set>
										</c:when>
									</c:choose>
								</c:forEach>
								<c:if test="${not empty risk1 }"><span style="color:#b81b2c;">遗传性肿瘤：</span>本次检测提示您是<i style="color:#b81b2c;">  
									${fn:substring(risk1,0,fn:length(risk1)-1)}
								  </i>发生的高危人群，建议您进行肿瘤的早筛，同时，您的后代有一定概率遗传您携带的变异，建议您的子女也进行基因检测，预估肿瘤等疾病的发生风险。<br/><br/>
								</c:if>
								<c:if test="${not empty risk2 }"><span style="color:#b81b2c;">重大遗传疾病：</span>本次检测提示您<i style="color:#b81b2c;">${fn:substring(risk2,0,fn:length(risk2)-1)}</i>患病风险增加，同时，您的后代有一定概率遗传您携带的变异。<br/><br/></c:if>
								<c:if test="${not empty risk3 }"><span style="color:#b81b2c;">单基因遗传病：</span>本次检测提示您携带<i style="color:#b81b2c;">${fn:substring(risk3,0,fn:length(risk3)-1)}</i>致病性变异，同时，您的后代有一定概率遗传您携带的变异。<br/><br/></c:if>
								<c:if test="${not empty risk4 }"><span style="color:#b81b2c;">其他遗传疾病：</span>本次检测提示您携带<i style="color:#b81b2c;">${fn:substring(risk4,0,fn:length(risk4)-1)}</i>致病性变异，同时，您的后代有一定概率遗传您携带的变异。<br/></c:if>
								<br/>&nbsp;&nbsp;&nbsp;&nbsp;依据本次检测结果，我们为您量身定制以下健康管理建议，希望我们的建议能够帮助您更好地认识患病诱因、了解预防疾病的关键、远离疾病困扰，拥有强健体魄。<br/><!-- &nbsp;&nbsp;&nbsp;&nbsp;请您保持健康生活方式、积极参加体育锻炼，并留意以下疾病风险：<br/> -->
							</p>
						</c:when>
						<c:when test="${titleInfo eq '个体体质相关健康管理' }">
							<p class="summary">&nbsp;&nbsp;&nbsp;&nbsp;您<span style="color: #b81b2c;">
							<c:forEach items="${listHealthGuidance }" var="temp" varStatus="status">
								${temp.scrIll }<c:if test="${status.last ne true}">、</c:if>
							</c:forEach>易感。</span></p>
						</c:when>
						<%--没有数据不显示 <c:when test="${titleInfo eq '药物风险相关健康管理' }">
							<p class="summary">&nbsp;&nbsp;&nbsp;&nbsp;结果显示如下：</p>
						</c:when> --%>
						<c:when test="${titleInfo eq '营养代谢能力相关健康管理' }">
							<p class="summary">您<span style="color:#b81b2c;">${listHealthGuidance[0].illness }</span></p>
						</c:when>
						<c:otherwise></c:otherwise>
					</c:choose>
				</div>
			</div>
		</c:if>
		<div class="describe-title">
			<h1 class="title left-line-title">健康管理建议</h1>
			<div class="describe">
				<c:choose>
					<c:when test="${titleInfo eq '疾病风险相关健康管理' or titleInfo eq '个体体质相关健康管理' }">
						<ul class="flex-ul">
							<c:forEach items="${listHealthGuidance }" var="temp" varStatus="status">
								<c:if test="${empty temp.illGrade or (not empty temp.illGrade and fn:contains(temp.illGrade,temp.scrRisk)) }">
									<li><a onclick="javascript:healthGuide.detailGuide(this);"
										testContent="${temp.testContent }" scrIll="${temp.scrIll }"
									>${temp.scrIll }</a></li>
								</c:if>
							</c:forEach>
						</ul>
					</c:when>
					<c:when test="${titleInfo eq '药物风险相关健康管理' }">
						<ul class="flex-ul">
							<c:forEach items="${listHealthGuidance }" var="temp" varStatus="status">
								<li><a onclick="javascript:healthGuide.detailGuide(this);"
								testContent="${temp.drugtip }" scrIll="${temp.drug }"
								>${temp.drug }</a></li>
							</c:forEach>
						</ul>
					</c:when>
					<c:when test="${titleInfo eq '营养代谢能力相关健康管理' }">
						<p class="show-content">${listHealthGuidance[0].testcontent }<br/>请根据自身情况及各营养素的每日推荐摄入量，适当增减上述所列食物的摄入。另外，如您对上述所列有过敏或禁忌的食物，请谨遵医嘱，合理安排您的膳食计划。</p>
					</c:when>
					<c:otherwise></c:otherwise>
				</c:choose>
			</div>
		</div>
		<%@ include file="../../common/exome_bottom.jsp" %>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/healthGuide/list.js -->
		<!-- build:js ../../static/js/exome/healthGuide/list.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/services/list.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/healthGuide.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>