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
		<div class="all-radius-checkbox-tab">
			<a href="${ctx }/exome/variationPool/whetherPathogenic?urlactive=whetherPathogenic" <c:if test="${param.urlactive eq 'whetherPathogenic' }">class="active"</c:if>>不确定是否致病突变</a>
			<a href="${ctx }/exome/variationPool/defectiveGene?urlactive=defectiveGene" <c:if test="${param.urlactive eq 'defectiveGene' }">class="active"</c:if>>缺陷基因</a>
		</div>
		<div class="ico-explain-func-box">
			<div class="ico-explain-func" onclick="list.toggleContent(this);">
				<i class="ico icon-fd-gene"></i>
				<span class="explain">缺陷基因筛选简介</span>
				<a href="javascript:void(0);" class="func func-active"></a>
			</div>
			<p class="summary">每个人的基因组中存在30 亿个碱基对，目前已知超过20000个基因。据不完全统计，平均每个人都至少有100个左右的基因会发生缺陷，即基因不能正常编码蛋白，也就是基因发生了提前终止码获得（Stopgain）、终止码缺失（Stoploss）、移码突变（Frameshift）或启动氨基酸变异（M1?）。由于很多基因的具体功能还不明确，这些基因发生缺陷并不意味着会导致功能性疾病，推测基因有相应的补偿机制，也就是说一个基因发生了缺陷无法执行功能，但有一个其它基因可以执行相同的功能来弥补这个基因的缺陷。</p>
		</div>
		<input type="hidden" id="pageNum"/>
		<input type="hidden" id="totalPage"/>
		<div class="ico-explain-func-box">
			<div class="ico-explain-func" onclick="list.toggleContent(this);">
				<i class="ico icon-fd-gene"></i>
				<span class="explain">缺陷基因详情</span>
				<a href="javascript:void(0);" class="func"></a>
			</div>
			<ul class="table-header"></ul>
		</div>
		<%@ include file="../../common/exome_bottom.jsp" %>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/variationPool/defectiveGene.js -->
		<!-- build:js ../../static/js/exome/variationPool/defectiveGene.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/services/list.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/services/page.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/variationPool.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
	<script>
	$(function(){
		variationPool.init({
			module:variationPool.defectiveGene.init()
		});
	});
	</script>
</body>
</html>