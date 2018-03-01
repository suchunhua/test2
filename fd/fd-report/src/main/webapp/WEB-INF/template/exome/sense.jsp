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
<div class="wrap re-wrap">
    <h1 class="big-title big-font">感官偏好筛查结果汇总</h1>
    <table class="title-garden-table table1" cellspacing="0" cellpadding="0">
        <thead>
            <tr><th>感官类别</th><th>感官偏好（ 低<img src="${ctx }/static/img/admin/reportPrint/pic/low_.png"/> 正常<img src="${ctx }/static/img/admin/reportPrint/pic/normal_.png"/> 高<img src="${ctx }/static/img/admin/reportPrint/pic/high_.png"/>）</th></tr>
        </thead>
        <tbody>
            <c:forEach items="${interestTestList.sensList }" var="temp">
                <tr><td><span style="display:none;">${temp.category}</span>
                <form method="post" action="${ctx }/exome/ggphDet" style="display: inline-block;vertical-align: top;">
            	   <input type="hidden" name="testContent" value="${temp.category}">
            	   <input type="submit" class="value" value="${temp.category}"/>
            	</form>
                </td><td>
    	     	<c:choose>
    				<c:when test="${fn:contains(temp.comprehensive, '低')}">
    					<img alt="${temp.comprehensive }" src="${ctx}/static/img/admin/reportPrint/pic/low.png">
    				</c:when>
    				<c:when test="${fn:contains(temp.comprehensive, '中') || fn:contains(temp.comprehensive, '一般')}">
    					<img alt="${temp.comprehensive }" src="${ctx}/static/img/admin/reportPrint/pic/normal.png">
    				</c:when>
    				<c:when test="${fn:contains(temp.comprehensive, '高') || fn:contains(temp.comprehensive, '好') || fn:contains(temp.comprehensive, '强')}">
    					<img alt="${temp.comprehensive }" src="${ctx}/static/img/admin/reportPrint/pic/high.png">
    				</c:when>
    			</c:choose>
                </td></tr>
            </c:forEach>
        </tbody>
    </table>
    <div class="table_under"></div>
        <!-- <div class="yizu"><div>此表格依据本次检测数据评判，仅供医生参考，具体用药方案请遵医嘱。</div></div> -->
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
<script src="${ctx }/static/js/admin/reportPrint/zs.js"></script>
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