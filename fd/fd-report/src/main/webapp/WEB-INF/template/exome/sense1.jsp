<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <title></title>
    <link href="${ctx}/static/css/sense.css?rev=@@hash" rel="stylesheet">
</head>
<body>
<div id="nav_id" style="display:none;">${collInfo.collInfoId}</div>
<%@ include file="exome_top.jsp"%>
<div class="jumbotron">
    <h1 class="big-title big-font">${interestTestDetail.sense.senName}</h1>
    <%-- <span class="subtitle">${interestTestDetail.sense.senName}简介：</span> --%>
    <div class="acticle">
        ${interestTestDetail.sense.introduce}
    </div>
</div>
<div class="wrap re-wrap">
    <h1 class="big-title big-font">${interestTestDetail.sense.senName}详情</h1>
    <div class="option green">
        <div class="zs">注释：</div>
        <select class="option1 white-box">
	        <option value="zdnp">@</option>
	    </select>
	    <div class="option2" >表示该位点检测到基因型，但与已知基因型不匹配</div>
    </div>
    <table class="title-garden-table table1" cellspacing="0" cellpadding="0">
        <thead>
            <tr class="grey"><th>检测基因</th><th>检测位点</th><th>基因型</th><th>结果提示</th></tr>
        </thead>
        <tbody>
            <c:forEach items="${interestTestDetail.sensDetList }" var="temp">
                <tr><td><a href="http://www.genecards.org/cgi-bin/carddisp.pl?gene=${temp.gene}" target="_blank" onclick="return (function(){var truthBeTold = window.confirm('你正链接到genecards...');  if(truthBeTold==false){return false;}})()">${temp.gene}</a></td> <td class="weidian">${temp.rs}</td><td class="nl">${temp.gene1}</td><td class="nl_a">${temp.ability}</td></tr></c:forEach>
            <tr><td colspan="4">结论：${interestTestDetail.sens.ability}</td></tr>
        </tbody>
    </table>
    <div class="table_under"></div>
    <div class="fanhui">
       <img src="${ctx }/static/img/admin/reportPrint/pic/fanhui.png"/>
       <div>返回上级页面</div>
    </div>
</div>
<%@ include file="../common/bottom.jsp"%>
<script src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
<script src="${ctx}/static/javascript/common/base.js"></script>
<script src="${ctx}/static/javascript/services/user.js"></script>
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