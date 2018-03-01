<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <title></title>
    <link href="${ctx}/static/css/imperfection.css?rev=@@hash" rel="stylesheet">
</head>
<body>
<div id="nav_id" style="display:none;">${collInfo.collInfoId}</div>
<%@ include file="exome_top.jsp"%>
<div class="jumbotron">
    <h1 class="big-title big-font">缺陷基因</h1>
    <div class="acticle">
        <p>每个人的基因组中存在30 亿个碱基对，目前已知超过20000个基因。据不完全统计，平均每个人都至少有100个左右的基因会发生缺陷，即基因不能正常编码蛋白，也就是基因发生了提前终止码获得（Stopgain）、终止码缺失（Stoploss）、移码突变（Frameshift）或启动氨基酸变异（M1?）。由于很多基因的具体功能还不明确，这些基因发生缺陷并不意味着会导致功能性疾病，推测基因有相应的补偿机制，也就是说一个基因发生了缺陷无法执行功能，但有一个其它基因可以执行相同的功能来弥补这个基因的缺陷。</p>
    </div>
</div>
<div class="wrap re-wrap">
    <h1 class="big-title big-font">缺陷基因汇总</h1>
    <table class="title-garden-table table2" cellspacing="0" cellpadding="0">
		<thead>
			<tr><th>变异类型</th><th>个数</th></tr>
		</thead>
		<tbody>
	    <tr><td>全部</td><td>${allCount}</td></tr>
	    <c:forEach items="${typeCountMap }" var="typeCount" >
		    <tr><td>${typeCount.type}</td><td>${typeCount.count }</td></tr>
	    </c:forEach>
	    </tbody>
    </table>
    <div id="chCount" style="width: 100%;height:500px;"></div>
    <div id="zhCount" style="width: 100%;height:500px;"></div>
    <h1 class="big-title big-font">缺陷基因详情</h1>
    <div class="md">
        <div class="mgx">变异类型：</div>
        <select class="mgx1 white-box">
	        <option <c:if test="${'' eq param.type }">selected</c:if> value="">全部</option>
	        <option <c:if test="${'nonsynonymous SNV' eq param.type }">selected</c:if> value="nonsynonymous SNV">nonsynonymous SNV</option>
	        <option <c:if test="${'stopgain' eq param.type }">selected</c:if> value="stopgain">stopgain</option>
	        <option <c:if test="${'stoploss' eq param.type }">selected</c:if> value="stoploss">stoploss</option>
	        <option <c:if test="${'frameshift insertion' eq param.type }">selected</c:if> value="frameshift insertion">frameshift insertion</option>
	        <option <c:if test="${'frameshift deletion' eq param.type }">selected</c:if> value="frameshift deletion">frameshift deletion</option>
        </select>
        <div class="dfzy">变异种类：</div>
	    <select class="dfzy1 white-box">
	         <option <c:if test="${'全部' eq param.Mix }">selected</c:if> value="">全部</option>
	         <option <c:if test="${'纯合' eq param.Mix }">selected</c:if> value="纯合">纯合</option>
	         <option <c:if test="${'杂合' eq param.Mix }">selected</c:if> value="杂合">杂合</option>
	    </select>
    </div>
    <table class="title-garden-table table1" cellspacing="0" cellpadding="0">
		<thead>
			<tr>
				<th>基因</th><th>变异类型</th><th>碱基变异</th><th>氨基酸变异</th>
				<th>(杂合<img alt="" src="${ctx}/static/img/heterozygous-big.png">/纯合<img alt="" src="${ctx}/static/img/homozygous-big.png">)</th>
			</tr>
		</thead>
		<tbody>
		   <c:forEach items="${pageInfo.list }" var="temp">
		       <tr>
			       <td><a href="http://www.genecards.org/cgi-bin/carddisp.pl?gene=${temp.gene }" target="_blank" onclick="return (function(){var truthBeTold = window.confirm('你正链接到genecards...');  if(truthBeTold==false){return false;}})()">${temp.gene}</a></td><td>${temp.type}</td><td>${temp.base_change}</td>
			       <td>${temp.AA_change}</td>
			       <c:choose>
			        	<c:when test="${temp.mix eq '杂合'}"><td><img alt="${temp.mix}" src="${ctx}/static/img/heterozygous-small.png"></td></c:when>
			        	<c:when test="${temp.mix eq '纯合'}"><td><img alt="${temp.mix}" src="${ctx}/static/img/homozygous-small.png"></td></c:when>
			       </c:choose>
		       </tr>
		   </c:forEach>
	   </tbody>
	</table>
    <%@ include file="../common/page.jsp" %>
    <div class="fanhui">
       <a href="${ctx }/exome/showFirst?collInfoid=${collInfo.collInfoId}&urlType=home"><img src="${ctx }/static/img/admin/reportPrint/pic/fanhui.png"/></a>
       <div>返回首页</div>
    </div>
</div>
 <form method="post" action="${ctx }/exome/showFirst?urlType=home"  id="fanhui" style="display:none;">
	<input type="text" name="collInfoid" id="collInfoid" value="${collInfo.collInfoId}">
	<input type="submit" value="返回" id="fanhui_aa"/>
	</form>
<%@ include file="../common/bottom.jsp" %>
<script src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
<script src="${ctx}/static/javascript/common/base.js"></script>
<script src="${ctx}/static/javascript/services/user.js"></script>
<script src="${ctx}/static/javascript/services/pages.js"></script>
<script src="${ctx}/static/plugin/echarts/echarts.min.js"></script>
<script src="${ctx}/static/javascript/chart.js"></script>
 <script>
	$(document).ready(function() {

		chart.homozygCharts('${resultMap}',$("#chCount"),$("#zhCount"));
		
		$(".fanhui img").click(function() {
			$("#fanhui_aa").click();
		});
		$(".fanhui").mouseenter(function() {
			$(".fanhui div").show();
		});
		$(".fanhui").mouseleave(function() {
			$(".fanhui div").hide();
		});

        $(".mgx1").change(function(event) {
            var type = $(this).find("option:selected").val();
            window.location.href = base.getUrlParam("type") != null ? base
                .replaceParamVal(window.location.href, "type", type)
                : base.urlUpdateParams(window.location.href, "type", type);
        });
         
        $(".dfzy1").change(function(event) {
            var mix = $(this).find("option:selected").val();
            window.location.href = base.getUrlParam("Mix") != null ? base
                .replaceParamVal(window.location.href, "Mix", mix)
                : base.urlUpdateParams(window.location.href, "Mix", mix);
        });
	});
	</script>
</body>
</html>