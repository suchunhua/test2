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
	<div class="view">
		<%-- <%@ include file="../common/exome_top.jsp" %> --%>
		<div class="article">
			<h1 class="article-title">关于疾病风险评估：</h1>
			<p>1.针对疾病风险评估，FD-Exome项目仅针对全外显子区域内2万多基因的超30万个致病性位点检测，不涉及启动子、内含子等区域位点，检测区域之外基因变异位点相关的疾病不在检测范围内。</p>
			<p>2.FD-Exome项目仅针对目前已知明确的基因与变异的关联位点给出解释，由于大量表型与基因位点相关性仍不明确，因此，阴性结果并不能完全排除疾病的携带状态。更全面的结果解读需要随着医学及科研的不断发展逐步完善，首度基因将根据权威文献及数据库结果，定期为您更新报告内容。</p>
			<p>3.FD-Exome项目关于疾病风险评估基于已有基因型与疾病关联性分析的研究结果，属于患病风险预测评估，检测结果仅供参考，不作为临床诊断和治疗的依据。</p>
		</div>
	<%-- 	<%@ include file="../common/exome_bottom.jsp" %> --%>
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