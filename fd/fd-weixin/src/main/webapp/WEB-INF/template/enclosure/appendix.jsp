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
<link href="${ctx}/static/css/enclosure.css?rev=@@hash" rel="stylesheet">
</head>
<body>
	<div class="view view-gray-background">
		<%-- <%@ include file="../common/exome_top.jsp" %> --%>
		<ul class="bookmark">
			<li class="active">附录1：</li>
		</ul>
		<div class="notebook">
			<div class="notebook-title">
				<h1>FD-Exome疾病风险等级定义</h1>
			</div>
			<ul class="notebook-row">
				<li><span>风险等级：FD-T-1A</span><span>患病风险：极高</span><p>评判标准示例：受检者检测到有肿瘤易感基因（强致瘤性）变异，且变异记载为明确致病，显性处于杂合状态或隐性处于纯合状态。提示其本人患癌风险极高。</p></li>
				<li><span>风险等级：FD-T-1B</span><span>患病风险：极高</span><p>受检者检测到有肿瘤易感基因（中等致瘤性）变异，且变异记载为明确致病，显性处于杂合状态。提示其本人患癌风险极高。</p></li>
				<li><span>风险等级：FD-T-2A</span><span>患病风险：很高</span><p>受检者检测到有肿瘤易感基因（强致瘤性）变异，且变异记载为疑似致病，显性处于杂合状态或隐性处于纯合状态。提示其本人患癌风险很高。</p></li>
				<li><span>风险等级：FD-T-2B	</span><span>患病风险：很高</span><p>受检者检测到有肿瘤易感基因（中等致瘤性）变异，且变异记载为疑似致病，显性处于杂合状态或隐性处于纯合状态。提示其本人患癌风险很高。</p></li>
				<li><span>风险等级：FD-T-3</span><span>患病风险：增加</span><p>受检者检测到有肿瘤易感基因（弱致瘤性）变异，且变异记载为明确致病，隐性处于杂合状态提示其本人患癌风险增加。</p></li>
				<li><span>风险等级：FD-T-4</span><span>患病风险：可能增加</span><p>受检者检测到有肿瘤易感基因（弱致瘤性）变异，且变异记载为疑似致病，隐性处于杂合状态。提示其本人患癌风险可能增加。</p></li>
				<li><span>风险等级：FD-T-5</span><span>患病风险：正常</span><p>受检者未检测到肿瘤相关的致病或疑似致病变异。提示本人的患病风险和正常人一致</p></li>
				<li><span>患病风险备注</span><p>患病风险分为5个等级：极高>>很高>增加>可能增加>正常      基因变异分为2个等级：明确致病>疑似致病</p></li>
				<li><span>风险等级：FD-H-1A</span><span>患病风险：极高</span><p>疾病风险为单基因遗传病，受检者携带的基因变异明确记载为致病，处于纯合状态，或显性遗传的杂合状态。提示其本人患病风险极高。</p></li>
				<li><span>风险等级：FD-H-1B</span><span>患病风险：很高</span><p>疾病风险为单基因遗传病，受检者携带的基因变异记载为疑似致病，处于疑似致病的纯合状态，或显性遗传的杂合状态。提示其本人患病风险很高。</p></li>
				<li><span>风险等级：FD-H-2A</span><span>患病风险：增加</span><p>疾病风险为多基因遗传病，受检者携带的基因变异明确记载为致病，处于纯合状态，或显性遗传的杂合状态。多基因遗传病的患病还受环境因素影响，提示其本人患病风险增加。</p></li>
				<li><span>风险等级：FD-H-2B</span><span>患病风险：增加</span><p>疾病风险为多基因遗传病，受检者携带的基因变异记载为疑似致病，处于纯合状态，或显性遗传的杂合状态。多基因遗传病的患病还受环境因素影响，提示其本人患病风险增加。</p></li>
				<li><span>风险等级：FD-H-3</span><span>患病风险：可能增加</span><p>疾病风险为单基因或多基因遗传病，受检者携带的基因变异记载为风险增加，即该基因变异无明确的功能性研究，仅通过人群频率（患病和不患病的两群人）进行对比，结果有统计学差异。提示其本人患病风险可能增加。</p></li>
				<li><span>风险等级：FD-H-4</span><span>患病风险：正常</span><p>疾病风险为单基因或多基因遗传病，受检者携带的基因变异记载为致病或疑似致病，处于非显性遗传的杂合状态。提示本人的患病风险和正常人一致，不处于致病状态。由于存在遗传概率，子女患病风险可能增加。</p></li>
				<li><span>风险等级：FD-H-5</span><span>患病风险：较低</span><p>受检者携带的基因变异状态处于疾病保护状态，提示其本人患病风险较正常人更低。</p></li>
				<li><span>风险等级：FD-H-5</span><span>患病风险：较低</span><p>受检者携带的基因变异状态处于疾病保护状态，提示其本人患病风险较正常人更低。</p></li>
				<li><span>致病风险备注</span><p>患病风险分为7个等级：极高>>很高>增加>可能增加>正常>较低         基因变异分为4个等级：明确致病>疑似致病>风险因子>保护</p></li>
				<li><p>首度基因依据线粒体DNA突变位点、突变率以及变异位点情况，综合评判您的线粒体遗传病患病风险，其等级说明表以及相应的注意事项如下：</p></li>
				<li><span>风险等级：FD-M-1</span><span>患病风险：极高</span><p>线粒体DNA上检测到2个及2个以上的明确致病突变，且突变频率大于80%</p></li>
				<li><span>风险等级：FD-M-2</span><span>患病风险：很高</span><p>线粒体DNA上检测到1个的明确致病突变，且突变频率大于80%</p></li>
				<li><span>风险等级：FD-M-3A</span><span>患病风险：增加</span><p>线粒体DNA上检测到1个的明确致病突变，且突变频率小于80%</p></li>
				<li><span>风险等级：FD-M-3B</span><span>患病风险：增加</span><p>线粒体DNA上检测到1个或多个的疑似致病突变，且突变频率大于80%</p></li>
				<li><span>风险等级：FD-M-4</span><span>患病风险：可能增加</span><p>线粒体DNA上检测到1个的疑似致病突变，且突变频率小于80%</p></li>
				<li><span>风险等级：FD-M-5</span><span>患病风险：正常</span><p>线粒体DNA上未检测到致病突变或疑似致病突变</p></li>
				<li><span>患病风险备注</span><p>患病风险分为5个等级：极高>>很高>增加>可能增加>正常    基因变异分为2个等级：明确致病>疑似致病</p></li>
				<li><span>患癌风险等级：FD-T-1A</span><p>终生需要密切关注肿瘤风险，建议每年进行一次肿瘤体检；</p></li>
				<li><span>患癌风险等级：FD-T-1B</span><p>终生需要密切关注肿瘤风险，建议每年进行一次肿瘤体检；</p></li>
				<li><span>患癌风险等级：FD-T-2A</span><p>25-30岁之后，需要密切关注肿瘤风险，每2-3年至少进行一次肿瘤体检，如发现早期症状进行治疗以后，每年进行肿瘤体检；</p></li>
				<li><span>患癌风险等级：FD-T-2B</span><p>25-30岁之后，需要密切关注肿瘤风险，每2-3年至少进行一次肿瘤体检，如发现早期症状进行治疗以后，每年进行肿瘤体检；</p></li>
				<li><span>患癌风险等级：FD-T-3</span><p>40-45岁之后，需要密切关注肿瘤风险，每5年至少进行一次肿瘤体检，如发现早期症状进行治疗以后，每年进行肿瘤体检；</p></li>
				<li><span>患癌风险等级：FD-T-4</span><p>40-45岁之后，需要密切关注肿瘤风险，每5年至少进行一次肿瘤体检，如发现早期症状进行治疗以后，每年进行肿瘤体检；</p></li>
				<li><span>患癌风险等级：FD-T-5</span><p>50-55岁之后，需要密切关注肿瘤风险，每5年至少进行一次肿瘤体检，如发现早期症状进行治疗以后，每年进行肿瘤体检；</p></li>
				<li><p>各种不同疾病风险等级的注意事项：</p></li>
				<li><span>患癌风险等级：FD-H-1A</span><p>您处于致病状态，终生需要密切关注此遗传病，根据疾病的发病年龄、临床症状和疾病恶性程度，建议定期检查此遗传病的疾病进展，提前进行预防和治疗；</p></li>
				<li><span>患癌风险等级：FD-H-1B</span><p>您很可能处于致病状态，根据疾病的发病年龄、临床症状和疾病恶性程度，建议定期检查此遗传病的疾病进展，提前进行预防和治疗；</p></li>
				<li><span>患癌风险等级：FD-H-2A</span><p>环境因素会大幅度促进该遗传病的进展，建议遵照健康管理，排除环境因素，预防该疾病的发生；</p></li>
				<li><span>患癌风险等级：FD-H-2B</span><p>环境因素会大幅度促进该遗传病的进展，建议遵照健康管理，排除环境因素，预防该疾病的发生；</p></li>
				<li><span>患癌风险等级：FD-H-3</span><p>环境因素可能会促进该遗传病的进展，仍建议您遵照健康管理，排除环境因素，预防该疾病的发生</p></li>
				<li><span>患癌风险等级：FD-H-4</span><p>此遗传病的患病风险与大多数正常人一致。如该疾病的发病率随年龄增长逐渐增加，仍建议在老龄阶段注意预防。</p></li>
				<li><span>患癌风险等级：FD-H-5</span><p>此遗传病的患病风险较正常人更低，具有更高的抵抗性。如该疾病的发病率随年龄增长逐渐增加，仍建议在老龄阶段注意预防。</p></li>
			</ul>
		</div>
		<%-- <%@ include file="../common/exome_bottom.jsp" %> --%>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/base.js -->
		<!-- build:js ../../static/js/exome/base.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>