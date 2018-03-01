<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <title>${illness.illname}</title>
     <link href="${ctx}/static/css/illness_gather.css?rev=@@hash" rel="stylesheet">
</head>
<body>
<div id="nav_id" style="display:none;">${collInfo.collInfoId}</div>
<%@ include file="exome_top.jsp"%>
<div class="jumbotron jumbotron-img">
    <h1 class="big-title big-font">
    <c:choose>
        <c:when test='${illness.illname=="Kearns-Sayre综合征"}'>
            Kearns-Sayre综合征和慢性进行性外侧眼肌麻痹
        </c:when>
        <c:when test='${illness.illname=="线粒体脑肌病伴乳酸中毒" }'>
                                     线粒体脑肌病伴乳酸中毒及中风样发作综合症
        </c:when>
        <c:otherwise>
            ${illness.illname}
        </c:otherwise>
    </c:choose>
    </h1>
    <div class="acticle">
        <c:if test="${!empty illness.pic}">
            <img alt="疾病图片" src="http://images.firstdimension.cn/image/illness/${illness.pic }">
        </c:if>
        ${illness.introduce}
    </div>
</div>

<div class="wrap re-wrap">
    <h1 class="big-title big-font">检测结果详情</h1>
    <table class="title-garden-table table1" cellspacing="0" cellpadding="0">
        <thead>
            <tr><th>检测基因</th><th>染色体位置</th><th>变异基因</th></tr>
        </thead>
        <tbody>
            <c:forEach items="${screenDetSumList }" var="screenDetSum">
            <tr><td><a href="http://www.genecards.org/cgi-bin/carddisp.pl?gene=${screenDetSum.scrdettest}" target="_blank" onclick="return (function(){var truthBeTold = window.confirm('你正链接到genecards...');  if(truthBeTold==false){return false;}})()">${screenDetSum.scrdettest}</a></td>
            	<td>${screenDetSum.scrdetlocation}</td>
            	<td>${screenDetSum.scrChange}</td>
            </tr>
            </c:forEach>
        </tbody>
    </table>
    <p class="notes">注：下表仅列出与该疾病密切相关的常见基因的突变检测结果，部分与疾病关联的罕见基因的突变检测结果并未全部展现。</p>
    <div class="fanhui">
       <img src="${ctx }/static/img/admin/reportPrint/pic/fanhui.png" onclick="return $('#fanhui').submit();"/>
       <div>返回上级页面</div>
    </div>
</div>
<form method="post" action="${ctx }/exome/jbscback?urlType=diseaseRiskAndIndividualConstitution&scrIllType=遗传性肿瘤"  id="fanhui" style="display:none;"></form>
<%@ include file="../common/bottom.jsp"%>
<script src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
<script src="${ctx}/static/javascript/common/base.js"></script>
<script src="${ctx}/static/javascript/services/user.js"></script>
</body>
</html>