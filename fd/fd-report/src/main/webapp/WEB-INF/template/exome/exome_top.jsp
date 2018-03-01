<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>

<div class="top">
	<img src="${ctx}/static/img/logo/logo-transparent.png?@@rev=hash" alt="首度基因/首度基因logo"/>
	<div class="user">
		<span class="user-name">${sessionScope.loginCa.customerName}</span>
		<a href="${ctx}/user/login">退出报告</a>
		<a href="javascript:user.quit();">注销</a>
	</div>
</div>
<div class="navbar-bg">
	<ul class="navbar">
		<c:if test='${collInfo.testType ne "FD-FIRST" }'>
			<li><a href="${ctx}/exome/showFirst?collInfoid=${collInfo.collInfoId}&urlType=home" class="<c:if test="${ 'home' eq param.urlType }"> actived </c:if>"><span>首页</span></a></li>
			<li><a href="javascript:void(0);" class="<c:if test="${ 'varianceSummary' eq param.urlType }"> actived </c:if>"><span>变异汇总</span></a>
				<ul class="sub-navbar">
					<li><a href="${ctx }/exome/yszbtb?urlType=varianceSummary" style="width: 144px;">不确定是否致病突变</a></li>
					<li><a href="${ctx }/exome/qxjy?urlType=varianceSummary">缺陷基因</a></li>
				</ul>
			</li>
			<li><a href="javascript:void(0);" class="<c:if test="${ 'diseaseRiskAndIndividualConstitution' eq param.urlType }"> actived </c:if>"><span>疾病风险及个体体质</span></a>
				<ul class="sub-navbar">
					<c:forEach var="scrIllType" items="${sessionScope.scrIllTypeArray }" varStatus="status">
						<li><a href="${ctx }/exome/jbscback?urlType=diseaseRiskAndIndividualConstitution&scrIllType=${scrIllType }">${scrIllType }</a></li>
					</c:forEach>
					<li><a href="${ctx }/exome/jbscback?scrIllType=其他个体体质&urlType=diseaseRiskAndIndividualConstitution">个体体质</a></li>
				</ul>
			</li>
			<li><a href="javascript:void(0);" class="<c:if test="${ 'abosystem' eq param.urlType }"> actived </c:if>"><span>血型系统</span></a>
				<ul class="sub-navbar">
					<li><a href="${ctx }/blood/aboIndex?urlType=abosystem">ABO血型系统</a></li>
					<li><a href="${ctx }/blood/hlaIndex?urlType=abosystem" style="width: 190px;">HLA血型</a></li>
				</ul>
			</li>
			<li><a href="javascript:void(0);" class="<c:if test="${ 'drugRiskScreening' eq param.urlType }"> actived </c:if>"><span>药物风险筛查</span></a>
				<ul class="sub-navbar">
					<li><a href="${ctx }/exome/zydb?urlType=drugRiskScreening" style="width: 260px;">药物代谢酶和作用靶点基因信息汇总</a></li>
					<c:if test="${sessionScope.drugRisk eq true}">
						<li><a href="${ctx }/exome/dxjg?urlType=drugRiskScreening">药物风险汇总</a></li>
					</c:if>
				</ul>
			</li>
			<li><a href="javascript:void(0);" class="<c:if test="${ 'nutritionalMetabolism' eq param.urlType }"> actived </c:if>"><span>营养代谢能力</span></a>
				<ul class="sub-navbar">
					<li><a href="${ctx }/exome/yydx?urlType=nutritionalMetabolism">查看详情</a></li>
				</ul>
			</li>
			<li><a href="javascript:void(0);" class="<c:if test="${ 'tasteDetection' eq param.urlType }"> actived </c:if>"><span>趣味检测</span></a>
				<ul class="sub-navbar">
					<li><a href="${ctx }/exome/ggph?urlType=tasteDetection">感官偏好</a></li>
					<li><a href="${ctx }/exome/zlsc?urlType=tasteDetection">智力分析</a></li>
					<li><a href="${ctx }/exome/ydtf?urlType=tasteDetection">个体运动天赋</a></li>
					<li><a href="${ctx}/origin/move?urlType=tasteDetection<c:if test="${collInfo.sex eq '女'}">&data=mother</c:if>">祖源迁徒</a></li>
					<li><a href="${ctx }/origin/analysis?urlType=tasteDetection" style="width: 200px;">祖源分析-常染色体祖源分析</a></li>
				</ul>
			</li>
			<li><a href="javascript:void(0);" class="<c:if test="${ 'healthGuidance' eq param.urlType }"> actived </c:if>"><span>健康指导</span></a>
				<ul class="sub-navbar">
					<li><a href="${ctx }/health/diseaseRisk?urlType=healthGuidance">疾病风险相关健康管理</a></li>
					<li><a href="${ctx }/health/corporeity?urlType=healthGuidance">个体体质相关健康管理</a></li>
					<li><a href="${ctx }/health/drugRisk?urlType=healthGuidance">药物风险相关健康管理</a></li>
					<li><a href="${ctx }/health/nutrition?urlType=healthGuidance" style="width: 195px;">营养代谢能力相关健康管理</a></li>
				</ul>
			</li>
		</c:if>
	</ul>
</div>
