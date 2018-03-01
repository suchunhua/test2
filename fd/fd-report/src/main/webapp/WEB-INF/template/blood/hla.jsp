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
		<h1 class="big-title">HLA血型系统</h1>
		<div class="acticle">
			<p>HLA，即人类白细胞抗原，白细胞表面由HLA基因多态性编码的组织相容性复合物（MHC） 多态性，调控人体免疫应答、决定疾病易感个体差异，与同种异体器官移植的排斥反应密切相关，研究 证明，在器官移植时，供体和受体双方HLA匹配程度越高，移植的成功率越高。编码HLA的基因是一类 基因，位于6号染色体短臂6p21.3，长约4Mb，约220个基因座位。根据编码分子的特性，可以分为三 类。I类基因区位于着丝粒远端，主要包括HLA-A、B、C等3个位点，构成MHC-I。II类基因区位于着丝 粒近端，结构复杂，主要由DR、DQ、DP等3个位点，构成MHC-II。另有位于HLA区域内与HLA功能相 关的非HLA基因如TPA1，TAP2等。</p>
		</div>
	</div>
	<div class="wrap re-wrap">
		<a href="${ctx}/blood/hlaIndex?urlType=abosystem" class='title-btn  <c:if test="${'index' eq showType }">title-btn-active</c:if>'>HLA血型检测结果</a>
       	<a href="${ctx}/blood/hlaLaw?urlType=abosystem" class='title-btn  <c:if test="${'law' eq showType }">title-btn-active</c:if>'>HLA规律及意义</a>
        <c:if test="${'index' eq showType }">
			<table class="two-dimen clear-two-dimen">
				<thead>
					<tr><th>HLA 血型</th> <th colspan="2">检测结果</th> </tr>
				</thead>
				<tbody>
					<c:forEach items="${bloodHlaList }" var="bloodHla">
						<tr><td>${bloodHla.type }</td><td>${bloodHla.allele1 }</td><td>${bloodHla.allele2 }</td></tr>
					</c:forEach>
				</tbody>
			</table>
			<p class="remarks">备注：由于本次基因检测的是全外显子区域，因此部分精细分型存在无法区分的亚型。</p>
        </c:if>
        <c:if test="${'law' eq showType }">
	        <!-- <h1 class="main-title">HLA血型系统简介及其鉴定意义</h1> -->
			<h2 class="sub-title">HLA血型认知小贴士:</h2>
			<ul class="qa">
				<li>
					<p><span class="q">Q1:</span><span class="cont bold">HLA的多态性如何？HLA等位基因如何命名？</span></p>
					<p><span class="q">A1:</span><span class="cont line">按照国际HLA命名原则，IMGT/HLA数据库目前已经公布16755个HLA相关的等位基因，不同型别等位基因序列差异很小，一般为几个单核苷酸多态性位点。其中HLA-A等位基因共3913种，HLA-B等位基因4715种，HLA-C等位基因3510种，HLA-DQB1等位基因1079种，HLA-DPB1等位基因828种，HLA-DQA1等位基因78种，HLA-DPA1等位基因45种。 按照国际HLA命名原则，一个经典的HLA等位基因可命名如下：HLA-A*02:01:01:23。HLA-A*02:01代表血清学特异型为A*02，01代表该等位基因序号。 HLA-A*02:01:02与HLA-A*02:01:01相比存在一个同义突变，仅碱基序列变化，氨基酸序列未发生变化。HLA-A*02:01:01:23指与HLA-A*02:01:01:01相比，非编码区存在一个突变，23是该等位基因序号。</span></p>
				</li>
				<li>
					<p><span class="q">Q1:</span><span class="cont bold">什么是HLA分型? HLA分型的方法有哪几种？</span></p>
					<p><span class="q">A1:</span><span class="cont line">HLA分型即对每个基因座位进行等位基因鉴定。HLA分型方法有血清学分型，细胞学分型，单链构象多态性，基因芯片，序列特异性引物，以及基于序列的分型方法等。其中血清学分型精度不够，属于中低分型。基于PCR的分型方法，容易造成污染，产生假阳性。基于DNA序列的分型方法是高分辨率分型的主要方法，该方法直观且分辨率高。其中HLA-A*02:01是中低分型，HLA-A*02:01:01:01是高分辨率分型。</span></p>
				</li>
				<li>
					<p><span class="q">Q1:</span><span class="cont bold">什么是骨髓配型？骨髓配型与HLA分型的相关性如何？</span></p>
					<p><span class="q">A1:</span><span class="cont line">在器官移植尤其是骨髓移植中，如果供体和受体HLA表型完全相同，称为匹配，不完全相同，称为错配。低分辨率配型指供体受体低分辨率结果全相同，HLA高分辨率分型匹配指等位基因结果全相同。在骨髓移植中，供受体 HLA-A、B、DR等位基因相配的数目越多，移植物的存活率越高。一项研究表明，HLA-A，B，C，DRB1低分辨率错配与接受骨髓移植的受体死亡率升高显著相关，而等位基因错配可导致受体存活率下降。美国国家骨髓库（NMDP）以及世界骨髓供者协会认为HLA配型的最低要求是A，B，DR的5/6配合（供受者HLA-A，B，DR座位上6个至少有5个抗原或基因配合）。</span></p>
				</li>
				<li>
					<p><span class="q">Q1:</span><span class="cont bold">除器官移植以外，HLA分型的其它临床意义？</span></p>
					<p><span class="q">A1:</span><span class="cont line">除器官配型外，HLA还与疾病易感性、药物反应等密切相关。如HLA-B27抗原与强直性脊柱炎严重相关，研究发现HLA-B27抗原阳性率在AS患者高达96％以上，而正常群体中仅4%-7%，HLA-B27抗原携带者发生AS的相对危险率高达70%。正相关如HLA-B*27:02，HLA-B*27:04，负相关如HLA-B*27:03等。研究发现HLA-B*15:02与卡马西平（一种常见精神类药物）的毒副作用密切相关，携带HLA-B*15:02的病人服用卡马西平患Sevens-Johnson 综合征（SJS）和中毒性表皮坏死松解（TEN）风险增加，应避免使用。</span></p>
				</li>
			</ul>
		</c:if>
	</div>

	<%@ include file="../common/bottom.jsp" %>
	<!--# mergeTo:${ctx}/static/js/blood/hla.js -->
		<!-- build:js ../../static/js/blood/hla.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
		<script replace="gulp" src="${ctx}/static/javascript/common/base.js"></script>
		<script replace="gulp" src="${ctx}/static/javascript/services/user.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>