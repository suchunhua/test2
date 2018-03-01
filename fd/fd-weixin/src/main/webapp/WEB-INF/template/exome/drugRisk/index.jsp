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
	<div class="view">
		<%-- <%@ include file="../../common/exome_top.jsp" %> --%>
		<ul class="underline-tab">
			<li <c:if test="${param.urlactive eq 'infoSummary' }">class="active"</c:if>><a href="${ctx }/exome/drugRisk/infoSummary?urlactive=infoSummary">药物转运蛋白和药物代谢酶类基因信息汇总<i class="triangle"></i></a></li>
			<li <c:if test="${param.urlactive eq 'riskSummary' }">class="active"</c:if>><a href="${ctx }/exome/drugRisk/riskSummary?urlactive=riskSummary">药物风险汇总<i class="triangle"></i></a></li>
		</ul>
		<div class="ico-explain-func-box">
			<div class="ico-explain-func" onclick="list.toggleContent(this);">
				<i class="ico icon-fd-gene"></i>
				<span class="explain">药物风险筛查简介</span>
				<a href="javascript:void(0);" class="func"></a>
			</div>
			<p class="summary">
				“是药三分毒“，药物在治疗疾病的同时，也存在着毒副不良反应。在美国，即使合理使用治疗药物，每年仍有200万以上的住院患者出现严重的不良反应，其中死亡人数约为10万。在上述不良反应中，其中人体遗传基因的多态性占很大一部分原因。 药物进入人体后，经历吸收、分布、代谢和消除这四个过程后排出体外。进入人体内的药物与其相关药物的转运蛋白、药物代谢酶、药物作用靶点相互作用，完成药物的代谢和动力学过程。因此编码这些代谢酶和靶点蛋白的基因和药物效应密切相关，称为“药物相关基因“。这些药物相关基因发生变异，如缺失、点突变或启动子改变等，就可以引起药物代谢酶、药物作用靶点和药物转运蛋白发生药物反应的遗传差异，从而导致药物在机体内的代谢和药效发生改变，影响药物的治疗效果，甚至产生严重的不良反应，这就是机体多态性造成的药物反应个体差异。 首度基因的FD-全外显子检测项目包含有20大类合计100多种常用药物的药物相关基因的多态性检测，这些结果可以提示受检者使用某种药物的敏感性和毒副反应。将来受检者进行各种疾病治疗时，医生可以根据本报告所提供的受检者药物敏感性结果来确定更加合理给药方案，从而达到最佳的治疗效果，同时从根本上预防药物不良反应的发生。
			</p>
		</div>
		<div class="ico-explain-func-box">
			<div class="ico-explain-func" onclick="list.toggleContent(this);">
				<i class="ico icon-fd-gene"></i>
				<c:if test="${dataType eq 'riskSummary' }"><span class="explain">药物风险汇总</span></c:if>
				<c:if test="${dataType eq 'infoSummary' }"><span class="explain">药物转运蛋白和药物代谢酶类基因信息汇总</span></c:if>
				<a href="javascript:void(0);" class="func"></a>
			</div>
			<ul class="notebook-row"></ul>
			<input type="hidden" id="pageNum"/>
			<input type="hidden" id="totalPage"/>
		</div>
		<%@ include file="../../common/exome_bottom.jsp" %>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/drugRisk/index.js -->
		<!-- build:js ../../static/js/exome/drugRisk/index.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/services/list.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/services/page.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/drugRisk.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
	<script>
		$(function(){
			drugRisk.init({
				<c:if test="${dataType eq 'riskSummary' }">
					checkScrollSide:'.notebook-row',
					pagePath:'/exome/drugRisk/riskSummary',
					packageData:drugRisk.riskSummary.packageData
				</c:if>
				<c:if test="${dataType eq 'infoSummary' }">
					pagePath:'/exome/drugRisk/infoSummary',
					packageData:drugRisk.infoSummary.packageData
				</c:if>
			});
		});
	</script>
</body>
</html>