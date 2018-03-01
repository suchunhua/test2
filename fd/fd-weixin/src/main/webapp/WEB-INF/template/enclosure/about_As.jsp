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
		<div class="article article-watermark">
			<h1 class="article-title">首度基因简介：</h1>
			<p>首度生物科技（苏州）有限公司是一家专注于数码生命 与基因大数据的公司，公司宗旨是将基因序列信息转化 为人类追求健康和战胜疾病的福音。首度基因以癌症检 测为起点，能够通过生物信息学分析提供有助于癌症早 期筛查、辅助、用药指导和预后跟踪的有益信息，进而 为癌症患者带来最大化的效果。</p>
			<p>首度基因拥有一支多年从事基因检测与大数据分析的专 业研发团队，通过业界最顶级的检测设备，综合运用自 主研发的高灵敏度捕获手段和精细化实验方法，建立世 界一流的生物信息数据中心。首度基因致力于打造国内 权威的癌症基因信息数据库，创建有统计意义的中华人 中常见癌症变异与效果基线，志在成为中国基因大数据 业界的领导者。</p>
			<p>FD-Exome项目是首度基因公司依托其强大的全基因组 学研发平台和业界顶级专家团队，为所有关注自身健康 的公民打造的终生健康风险管理产品。</p>
			<img alt="" src="${ctx }/static/img/article-watermark.png" class="article-watermark">
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