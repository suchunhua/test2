<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <title></title>
    <link href="${ctx}/static/css/society.css?rev=@@hash" rel="stylesheet">
</head>
<body>
<div id="nav_id" style="display:none;">${collInfo.collInfoId}</div>
<%@ include file="exome_top.jsp"%>
<div class="details_wrap">
   <div class="detail">
            <img src="${ctx }/static/img/yuandian.png">
            <img src="${ctx }/static/img/admin/reportPrint/pic/23.png">
            <div class="title">下机数据统计</div>
   </div>
</div>
<div class="wrap2">
    <div class="xm">
        <img src="${ctx }/static/img/admin/reportPrint/pic/xmzy.png"><!--
        --><div>${collInfo.patient}</div><!--
        --><img src="${ctx }/static/img/admin/reportPrint/pic/xmzy.png">
    </div>
    <table class="society" cellspacing="0">
        <tr id="bg"><td></td><td></td><td></td><td></td><td></td></tr>
        <tr><td></td><td>性别</td><td>${collInfo.sex}</td><td>年龄</td><td>${collInfo.age}</td></tr>
        <tr><td></td><td>采样日期</td><td>${collInfo.sampCollTime}</td><td>收样日期</td><td><fmt:formatDate type="date" value="${collInfo.collTime}" dateStyle="default"/></td></tr>
        <tr><td></td><td>个人疾病史和药物史</td><td>${collInfo.otherIll}</td><td>家族史</td><td>${collInfo.family}</td></tr>
        <tr><td></td><td>样本编号</td><td>${collInfo.bookCode}</td><td>样本类型</td><td>${sampKind1}</td></tr>
        <tr><td></td><td>检测内容</td><td>FD-gDNA-Exome</td><td>检测技术</td><td>${collInfo.testProInfoTestSkill}</td></tr>
        <tr><td></td><td>测序平台</td><td>${collInfo.flat}</td><td>测序数据量</td><td>${comSize.data_size}</td></tr>
        <tr><td></td><td>平均测序深度</td><td>${comSize.depth}X</td><td>覆盖度</td><td>${comSize.coverage}</td></tr>
        <tr><td></td><td>Q30</td><td>&gt;${comSize.q30}</td><td></td><td></td></tr>
    </table>
     <div class="fanhui">
       <a href="${ctx }/exome/showFirst?collInfoid=${collInfo.collInfoId}&urlType=home"><img src="${ctx }/static/img/admin/reportPrint/pic/fanhui.png"/></a>
       <div>返回首页</div>
    </div>
</div>
 <form method="post" action="${ctx }/exome/showFirst?urlType=home"  id="fanhui" style="display:none;">
	<input type="text" name="collInfoid" id="collInfoid" value="${collInfo.collInfoId}">
	<input type="submit" value="返回" id="fanhui_aa"/>
	</form>
<%@ include file="../common/bottom.jsp"%>
<script src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
<script src="${ctx}/static/javascript/common/base.js"></script>
<script src="${ctx}/static/javascript/services/user.js"></script>
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