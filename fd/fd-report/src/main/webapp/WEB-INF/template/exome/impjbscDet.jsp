<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <title></title>
    <link href="${ctx}/static/css/impjbscDet.css?rev=@@hash" rel="stylesheet">
</head>
<body>
<div id="nav_id" style="display:none;">${collInfo.collInfoId}</div>
<%@ include file="exome_top.jsp"%>
<div class="jumbotron">
    <h1 class="big-title big-font">疾病风险筛查</h1>
    <!-- <span class="subtitle">疾病风险筛查简介</span> -->
    <div class="acticle">
        <p>某些基因变异在人群中的发生频率很低，一旦发生则表明可能存在严重的健康风险，会影响身体多个部位，这种基因被称为“极高风险基因”。
        FD-Exome检测项目包含美国医学遗传学与基因组学学会（ACMG）推荐的56个“极高风险基因”筛查，
        以及人类孟德尔遗传在线数据库（OMIM）所记载的400多种单基因遗传病筛查。</p>
        <p>疾病风险筛查部分包含：前列腺癌、结直肠癌、黑色素瘤等20多种遗传性肿瘤；糖尿病、高血压、心脏病、脑中风等90多种常见疾病；
        以及已知的400多种常见单基因遗传病检测。首度开发了三种不同的算法，
        全面扫描与遗传病相关的近4000个基因的突变情况，分析近5000种遗传病，本报告中所列举的疾病仅是所有遗传病中常见的500多种。</p>
        <p>本报告判定是否致病主要依据国际权威的两个数据库，即人类孟德尔遗传在线数据库（OMIM）和美国国家生物技术信息中心（NCBI）数据库，
        预测疾病的致病或疑似致病性变异。</p>
        <p>值得注意的是，几乎所有的健康人都会检测出若干隐性、杂合的遗传病，很多疾病，例如抑郁症、冠心病等，
        都是由遗传因素和后天因素（或称为环境因素，即平时的生活习惯、心理状况和生活环境等）共同作用导致的，
        您检测出的大部分隐性遗传病仅仅意味着您的患病风险增加而非绝对患病，请依据遗传病的种类进行提前预防和早期诊疗。</p>
        <p>某种隐性遗传病的检测结果为阳性，表示您后代有50%的几率携带该致病或疑似致病性变异；但是，只有当配偶携带相同的致病性变异时，
        其后代才有可能患病，即所谓的纯合变异。
        因此在您检测到某种隐性遗传病时，强烈建议您的配偶和子女也进行FD-Exome检测，评估患病风险。</p>
    </div>
</div>
<div class="wrap re-wrap">
    <h1 class="big-title big-font">${drugName}详情</h1>
    <table class="title-garden-table table1" cellspacing="0" cellpadding="0">
        <thead>
            <tr><th>基因</th><th>变异</th><th>纯合/杂合</th><th>致病风险等级</th><th>参考文献（PMID号）</th></tr>
        </thead>
        <tbody>
        	<c:forEach items="${selfIllList }" var="temp">
                <tr>
                	<td><a href="http://www.genecards.org/cgi-bin/carddisp.pl?gene=${temp.scrGene}" target="_blank" onclick="return (function(){var truthBeTold = window.confirm('你正链接到genecards...');  if(truthBeTold==false){return false;}})()">${temp.scrGene}</a></td>
                	<td>${temp.scrChange}</td><td>${temp.scrLocate}</td><td>${temp.scrRisk}</td>
                	<td>
	                	<c:forEach items="${fn:split(temp.book,',|;|，|；')}" var="book" varStatus="status">
	                        <a href="https://www.ncbi.nlm.nih.gov/pubmed/?term=${book }" target="_blank" onclick="return (function(){var truthBeTold = window.confirm('你正链接到ncbi...');  if(truthBeTold==false){return false;}})()">${book }</a><c:if test="${status.last ne true }">;</c:if>
	                    </c:forEach>
                	</td>
                </tr>
            </c:forEach>
                <tr><td colspan="5"> 
            <div class="analysis">
            <c:forEach items="${selfIllList }" var="temp">${temp.scrExp}</c:forEach>
            </div></td></tr>
        </tbody>
    </table>
<div class="fanhui">
       <img src="${ctx }/static/img/admin/reportPrint/pic/fanhui.png"/>
       <div>返回上级页面</div>
    </div>
</div>

<%@ include file="../common/bottom.jsp"%>
<script src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
<script src="${ctx}/static/javascript/common/base.js"></script>
<script src="${ctx}/static/javascript/services/user.js"></script>
<script src="${ctx }/static/js/admin/reportPrint/impjbscDet.js"></script>
<script>
$(document).ready(function(){
$(".fanhui img").click(function(){
        history.go(-1);
    });
      $(".fanhui").mouseenter(function(){
    	$(".fanhui div").show();
    });
    $(".fanhui").mouseleave(function(){
    	$(".fanhui div").hide();
    });
    });
</script>
</body>
</html>