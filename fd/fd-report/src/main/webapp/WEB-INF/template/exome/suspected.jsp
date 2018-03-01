<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <title>不确定是否致病突变列表</title>
    <link href="${ctx}/static/css/suspected.css?rev=@@hash" rel="stylesheet">
</head>
<body>
<div id="nav_id" style="display:none;">${collInfo.collInfoId}</div>
<%@ include file="exome_top.jsp"%>
<div class="wrap re-wrap">
    <h1 class="big-title big-font">不确定是否致病突变列表</h1>
    <div class="search">
       <form method="post" action="${ctx }/exome/yszbtb?urlType=varianceSummary" class="search_inner">
			<div>基因名： </div><input type="text" name="yszbtbgene" id="yszbtbgene" style="margin-left:6px;" value="${param.yszbtbgene }"/>
			<input type="submit" value="搜索" id="search"/>
		</form>
    </div>
    <table class="title-garden-table table1" cellspacing="0" cellpadding="0">
		<thead>
			<tr><th>基因</th><th>碱基变异</th><th>氨基酸变异</th>
			<th>(杂合<img alt="" src="${ctx}/static/img/heterozygous-big.png">/纯合<img alt="" src="${ctx}/static/img/homozygous-big.png">)</th>
			<th>可能相关疾病</th></tr>
		</thead>
		<tbody>
        <c:forEach items="${pageInfo.list }" var="temp">
        <tr>
        <td><a href="http://www.genecards.org/cgi-bin/carddisp.pl?gene=${temp.uncergene}" target="_blank" onclick="return (function(){var truthBeTold = window.confirm('你正链接到genecards...');  if(truthBeTold==false){return false;}})()">${temp.uncergene}</a></td> 
        <td>${temp.uncerbase}</td><td>${temp.unceraa}</td>
        <c:choose>
        	<c:when test="${temp.uncermix eq '杂合'}"><td><img alt="${temp.uncermix}" src="${ctx}/static/img/heterozygous-small.png"></td></c:when>
        	<c:when test="${temp.uncermix eq '纯合'}"><td><img alt="${temp.uncermix}" src="${ctx}/static/img/homozygous-small.png"></td></c:when>
        </c:choose>
        <td>${temp.uncerillness}</td></tr>
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
<script>
$(document).ready(function(){
 $(".fanhui img").click(function(){
    	$("#fanhui_aa").click();
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