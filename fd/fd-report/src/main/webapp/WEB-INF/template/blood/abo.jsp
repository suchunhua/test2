<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<title>${titleInfo }</title>
<link href="${ctx }/static/css/blood.css?@@rev=hash" rel="stylesheet">
</head>
<body>
	<%@ include file="../exome/exome_top.jsp" %>
	<div class="jumbotron">
		<h1 class="big-title">ABO血型系统</h1>
		<div class="acticle">
			<p>血型的鉴定意义重大，临床上主要用于输血、器官移植供体选择、不孕症和新生儿溶血症病因分析、亲子鉴定等方面。目前标准的血型鉴定方法是血清学鉴定。但由于技术局限性，血清学对某些复杂样本鉴定、产前胎儿血型鉴定和遗传学研究等方面受到限制。随着血型系统多亚型及基因多态性的深入研究，基因分型技术已成为更准确、有效的全新鉴定手段，受到临床的一致认可。首度基因FD-Exome采用全外显子测序技术对ABO红细胞血型系统进行检测，精确分型至血型亚型，让您更清晰的了解血型、了解自己。</p>
		</div>
	</div>
	<div class="wrap re-wrap">
		<a href="${ctx}/blood/aboIndex?urlType=abosystem" class='title-btn  <c:if test="${'index' eq showType }">title-btn-active</c:if>'>ABO血型检测结果</a>
       	<a href="${ctx}/blood/aboList?urlType=abosystem" class='title-btn  <c:if test="${'list' eq showType }">title-btn-active</c:if>'>ABO血型检测结果详细列表</a>
       	<a href="${ctx}/blood/aboLaw?urlType=abosystem" class='title-btn  <c:if test="${'law' eq showType }">title-btn-active</c:if>'>ABO规律及意义</a>
        <c:if test="${'index' eq showType }">
        	<h2 class="two-dimen-title">您的血型：</h2>
			<table class="two-dimen">
				<thead>
					<tr><th></th> <th>A型等位基因</th> <th>B型等位基因</th> <th>O型等位基因</th> <th>孟买型与类孟买型基因</th> </tr>
				</thead>
				<tbody>
					<tr>
						<td>检测结果</td>
						<td>
							<c:if test="${bloodAboResult.agene eq '0'}">×</c:if><c:if test="${bloodAboResult.agene eq '1'}">√</c:if> 
						</td>
						<td>
							<c:if test="${bloodAboResult.bgene eq '0'}">×</c:if><c:if test="${bloodAboResult.bgene eq '1'}">√</c:if>
						</td>
						<td>
							<c:if test="${bloodAboResult.ogene eq '0'}">×</c:if><c:if test="${bloodAboResult.ogene eq '1'}">√</c:if>
						</td>
						<td>
							<c:if test="${bloodAboResult.mgene eq '0'}">×</c:if><c:if test="${bloodAboResult.mgene eq '1'}">√</c:if>
						</td>
					</tr>
					<tr>
						<td>结论：</td>
						<td colspan="4">您的ABO血型普通分型为<span style="color:red;font-weight:blod;">${bloodAboResult.resultgene1 }型</span>，您的表型为<span style="color:red;font-weight:blod;">${bloodAboResult.resultgene2 }型血</span></td>
					</tr>
				</tbody>
			</table>
			<h2 class="two-dimen-title">您的血液亚型：</h2>
			<table class="two-dimen">
				<thead>
					<tr style="border-bottom: 1px solid #18a299;"><th>精细亚型</th><th>A亚型</th><th>B亚型</th><th>O亚型</th></tr>
				</thead>
				<tbody>
					<tr><td style="text-align: center;">检测结果</td><td>${bloodAboResult.atype }</td><td>${bloodAboResult.btype }</td><td>${bloodAboResult.otype }</td></tr>
					<tr>
						<td rowspan="2" style="text-align: center;">结论：</td>
						<td colspan="3" style="width:75%;text-align: left;">您的血型精细分型为<span style="color:red;font-weight:blod;">${bloodAboResult.resulttype1}</span>，您属于${bloodAboResult.resultgene2 }型血中的<span style="color:red;font-weight:blod;">${bloodAboResult.resulttype2}</span></td>
					</tr>
					<tr><td colspan="3" style="width:75%;text-align: left;line-height: 1.6em;">${aboBlood}</td></tr>
				</tbody>
			</table>
			<p class="remarks">备注：由于本次基因检测的是全外显子区域，因此部分精细分型存在无法区分的亚型，这些细分的亚型其表型完全相同。</p>
        </c:if>
        <c:if test="${'list' eq showType }">
        	<h2 class="garden-title"></h2>
        	<table class="title-garden-table">
        		<thead>
        			<tr><th>血型</th> <th>检测基因</th> <th>检测位点</th> <th>基因参考型</th> <th>检测结果</th> </tr>
        		</thead>
        		<tbody>
        			<c:forEach items="${bloodAboOutList }" var="bloodAboOut">
	        			<tr><td>${bloodAboOut.blood }</td><td>${bloodAboOut.testgene }</td><td>${bloodAboOut.testlocate }</td><td>${bloodAboOut.genesamp }</td><td>${bloodAboOut.generesult }</td></tr>
        			</c:forEach>
        		</tbody>
        	</table>
        	<p class="remarks">备注：此表只是部分ABO及孟买血型基因位点，实际检测位点大约180个。</p>
        </c:if>
        <c:if test="${'law' eq showType }">
	        <!-- <h1 class="main-title">ABO血型系统的遗传规律及罕见血型的鉴定意义</h1> -->
			<h2 class="sub-title">血型认知小贴士：</h2>
			<ul class="qa">
				<li>
					<p><span class="q">Q1:</span><span class="cont bold">哪个基因决定了您的血型？</span></p>
					<p><span class="q">A1:</span><span class="cont line">一般来说，ABO 血型由ABO 基因的多态性来控制，一共有 A、B 和 O 三种状态。我们将继承分别来自于父母的两种基因状态，组成我们自身的 ABO 基因型，从而表现出不同的血型。</span></p>
				</li>
				<li>
					<p><span class="q">Q1:</span><span class="cont bold">ABO血型的鉴定，医院有简单而方便的血清学鉴定，为何要通过基因检测来确定血型？</span></p>
					<p><span class="q">A1:</span><span class="cont line">血清学鉴定的是 ABO表型，表型是由基因决定的，基因检测鉴定的是 ABO的基因型。同一种表型可能是由两种或几种不同的基因型决定的（比如 A 型血的基因型是 AA 或 AO，B 型血的基因型是 BB 或 BO），因此基因型更加精确，其遗传规律也更清晰。
	此外，还有一些罕见的（人群分布频率低于 5%）的血型，通过血清学鉴定容易出现误鉴定（例如孟买血型被误鉴定为 O 型），而基因检测能准确的检测其真实血型。这可以用来解释一些遗传学的特例，例如一个 O 型的父亲和一个 O 型的母亲（其实是孟买血型，表型为 O 型但实际是 A 型血）生出了一个 A 型血的后代。
	最后，血清学鉴定只能鉴定到大致的亚型，而基因检测可以对每一种亚型进行精准细分。</span></p>
				</li>
				<li>
					<p><span class="q">Q1:</span><span class="cont bold">ABO血型为何要分到亚型，分亚型的意义在哪里？</span></p>
					<p><span class="q">A1:</span><span class="cont line">首度的全外显子基因检测对 ABO 进行基因分型，其检测位点约 180 个位点，根据这 180 个位点的突变情况将血型分为 315 种已知的亚型。血型细分到亚型，对一些容易鉴定错误的血型起到一定的提醒和纠正作用，而且对各种弱 A 和弱 B 亚型，也能阐释血清学鉴定中正反定型不一致的原因。此外，还能用于解释某些特殊的遗传学规律，例如一个 O 型的父亲和一个 AB 型的母亲（表型为 AB 型，但其 AB 是顺式的，基因型为 cis-AB/O）生出了一个 AB 型血的后代。
	在某些临床输血、器官移植时会用到这些细分的亚型信息。</span></p>
				</li>
			</ul>
		</c:if>
	</div>

	<%@ include file="../common/bottom.jsp" %>
	<!--# mergeTo:${ctx}/static/js/blood/abo.js -->
		<!-- build:js ../../static/js/blood/abo.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
		<script replace="gulp" src="${ctx}/static/javascript/common/base.js"></script>
		<script replace="gulp" src="${ctx}/static/javascript/services/user.js"></script>
		<script replace="gulp" src="${ctx}/static/javascript/powerful/autoMergeCells.js"></script>
		<script replace="gulp" src="${ctx}/static/javascript/abo.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>