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
<link href="${ctx}/static/css/exomeBlood.css?rev=@@hash" rel="stylesheet">
</head>
<body>
	<div class="view">
		<%-- <%@ include file="../../common/exome_top.jsp" %> --%>
		<h1 class="question">ABO血型检测结果<i class="icon-fd-question" onclick="popup.pageBottom.show();"></i></h1>
		<div class="ico-explain-func-box">
			<div class="ico-explain-func" onclick="list.toggleContent(this);">
				<i class="ico icon-fd-gene"></i>
				<span class="explain">您的血型：</span>
				<a href="javascript:void(0);" class="func"></a>
			</div>
			<ul class="table-header">
				<li>
					<span>A型等位基因：<c:if test="${bloodAboResult.agene eq '0'}">×</c:if><c:if test="${bloodAboResult.agene eq '1'}">√</c:if> </span>
					<span>B型等位基因：<c:if test="${bloodAboResult.bgene eq '0'}">×</c:if><c:if test="${bloodAboResult.bgene eq '1'}">√</c:if></span>
					<span>O型等位基因：<c:if test="${bloodAboResult.ogene eq '0'}">×</c:if><c:if test="${bloodAboResult.ogene eq '1'}">√</c:if></span>
					<span>孟买与类孟买：<c:if test="${bloodAboResult.mgene eq '0'}">×</c:if><c:if test="${bloodAboResult.mgene eq '1'}">√</c:if></span>
					<p>结论：您的ABO血型普通分型为<span style="color:red;font-weight:blod;">${bloodAboResult.resultgene1 }型</span>，您的表型为<span style="color:red;font-weight:blod;">${bloodAboResult.resultgene2 }型血</span></p>
				</li>
			</ul>
		</div>
		<div class="ico-explain-func-box">
			<div class="ico-explain-func" onclick="list.toggleContent(this);">
				<i class="ico icon-fd-gene"></i>
				<span class="explain">您的血液亚型：</span>
				<a href="javascript:void(0);" class="func"></a>
			</div>
			<ul class="table-header">
				<li>
					<span>A型等位基因：${bloodAboResult.atype }</span>
					<span>B型等位基因：${bloodAboResult.btype }</span>
					<span>O型等位基因：${bloodAboResult.otype }</span>
					<p>结论：您的血型精细分型为<span style="color:red;font-weight:blod;">${bloodAboResult.resulttype1}</span>，您属于${bloodAboResult.resultgene2 }型血中的<span style="color:red;font-weight:blod;">${aboResult.resulttype2}</span></p>
				</li>
			</ul>
		</div>
		<div class="QandA">
			<h1 class="question"><i class="icon-fd-question"></i>HLA血型认知小贴士</h1>
			<ul>
				<li>
					<h2 class="q"><span>Q</span>：什么是ABO? </h2>
					<p class="a"><span>A</span>：血型的鉴定意义重大，临床上主要用于输血、器官移植供体选择、不孕症和新生儿溶血症病因分析、亲子鉴定等方面。目前标准的血型鉴定方法是血清学鉴定。但由于技术局限性，血清学对某些复杂样本鉴定、产前胎儿血型鉴定和遗传学研究等方面受到限制。随着血型系统多亚型及基因多态性的深入研究，基因分型技术已成为更准确、有效的全新鉴定手段，受到临床的一致认可。首度基因FD-Exome采用全外显子测序技术对ABO红细胞血型系统进行检测，精确分型至血型亚型，让您更清晰的了解血型、了解自己。</p>
				</li>
				<li>
					<h2 class="q"><span>Q</span>：哪个基因决定了您的血型？ </h2>
					<p class="a"><span>A</span>：一般来说，ABO 血型由ABO 基因的多态性来控制，一共有 A、B 和 O 三种状态。我们将继承分别来自于父母的两种基因状态，组成我们自身的 ABO 基因型，从而表现出不同的血型。</p>
				</li>
				<li>
					<h2 class="q"><span>Q</span>：ABO血型的鉴定，医院有简单而方便的血清学鉴定，为何要通过基因检测来确定血型？</h2>
					<p class="a"><span>A</span>：血清学鉴定的是 ABO表型，表型是由基因决定的，基因检测鉴定的是 ABO的基因型。同一种表型可能是由两种或几种不同的基因型决定的（比如 A 型血的基因型是 AA 或 AO，B 型血的基因型是 BB 或 BO），因此基因型更加精确，其遗传规律也更清晰。 此外，还有一些罕见的（人群分布频率低于 5%）的血型，通过血清学鉴定容易出现误鉴定（例如孟买血型被误鉴定为 O 型），而基因检测能准确的检测其真实血型。这可以用来解释一些遗传学的特例，例如一个 O 型的父亲和一个 O 型的母亲（其实是孟买血型，表型为 O 型但实际是 A 型血）生出了一个 A 型血的后代。 最后，血清学鉴定只能鉴定到大致的亚型，而基因检测可以对每一种亚型进行精准细分。</p>
				</li>
				<li>
					<h2 class="q"><span>Q</span>：ABO血型为何要分到亚型，分亚型的意义在哪里？</h2>
					<p class="a"><span>A</span>：首度的全外显子基因检测对 ABO 进行基因分型，其检测位点约 180 个位点，根据这 180 个位点的突变情况将血型分为 315 种已知的亚型。血型细分到亚型，对一些容易鉴定错误的血型起到一定的提醒和纠正作用，而且对各种弱 A 和弱 B 亚型，也能阐释血清学鉴定中正反定型不一致的原因。此外，还能用于解释某些特殊的遗传学规律，例如一个 O 型的父亲和一个 AB 型的母亲（表型为 AB 型，但其 AB 是顺式的，基因型为 cis-AB/O）生出了一个 AB 型血的后代。 在某些临床输血、器官移植时会用到这些细分的亚型信息。</p>
				</li>
			</ul>
		</div>
		<%@ include file="../../common/exome_bottom.jsp" %>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/bloodSystem/abo.js -->
		<!-- build:js ../../static/js/exome/bloodSystem/abo.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/services/list.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/powerful/popup.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/blood.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
	<script>
		$(function(){
			blood.QandA();
		})
	</script>
</body>
</html>