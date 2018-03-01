<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <title></title>
    <link href="${ctx }/static/css/admin/reportPrint/jquery-ui.min.css" rel="stylesheet">
    <link href="${ctx }/static/css/admin/reportPrint/exome_physical.css" rel="stylesheet">
    <link href="${ctx }/static/css/admin/reportPrint/second_level.css" rel="stylesheet">
</head>
<body>
<div id="nav_id" style="display:none;">${collInfo.collInfoId}</div>
<div class="nav">
    <img src="${ctx }/static/img/logo/logo.png">
</div>
<div class="theme">单基因遗传病</div>
<div class="synopsis">
    <div>单基因遗传病简介</div>
   <div>突变的基因通过改变多肽链的质和量，使得蛋白质发生缺陷，由此引发疾病，称为遗传病。如果疾病的发生仅仅由一对等位基因控制，就称为“单基因遗传病“。它以简单形式传递，其遗传规律遵循孟德尔定律，所以又称为孟德尔遗传病。单基因遗传病根据基因所处的染色体以及遗传方式的不同可分为常染色体显性（Autosomal Dominant， AD）遗传病、常染色体隐性（Autosomal Recessive， AR）遗传病、X连锁显性（X-linked Dominant）遗传病、X连锁隐性（X-linked Recessive）遗传病和Y连锁遗传病。</div>
   <div>目前已发现的单基因遗传病大约有3000多种，绝大多数为罕见病，并且每年在以10~50种的发现速度在递增，单基因遗传病，尤其是隐性的遗传病，对现代人类的健康已构成了较大的威胁。FD-Exome项目依据人类孟德尔遗传在线数据库（OMIM），可以检测400多种人类常见的单基因遗传病，为受检者及其后代提供遗传病的预测及防护。</div>
</div>
<div class="theme1">${illness.illName}详情</div>
<table cellspacing="0" class="table1">
     <tr><td>疾病名称</td><td>检测基因</td><td>检测结果</td></tr>
   <c:forEach items="${screenSingleList }" var="temp">
        <tr><td>${temp.screenName}</td><td><a href="http://www.genecards.org/cgi-bin/carddisp.pl?gene=${temp.screenGene}" target="_blank">${temp.screenGene}</a></td> <td>${temp.screenResult}</td></tr></c:forEach>
</table>
<div class="footer">
    <div>地址：江苏省苏州市工业园区星湖街218号生物纳米园B8栋5楼</div>
    <div>联系电话：0512-6298-7012</div>
    <div>Copyright© 2016首度生物科技（苏州）有限公司 苏ICP备16044804号</div>
    <img src="${ctx }/static/img/admin/reportPrint/pic/wechat.png">
</div>
<script src="${ctx }/static/plugin/jquery/1.11.3/jquery.min.js"></script>
<script src="${ctx }/static/js/admin/reportPrint/jquery-ui.min.js"></script>
<script src="${ctx }/static/js/admin/reportPrint/print.js"></script>
<script src="${ctx }/static/js/admin/reportPrint/impjbscDet.js"></script>
</body>
</html>