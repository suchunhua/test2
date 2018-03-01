<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <title></title>
    <link href="${ctx}/static/css/drug.css?rev=@@hash" rel="stylesheet">
</head>
<body>
<div id="nav_id" style="display:none;">${collInfo.collInfoId}</div>
<%@ include file="exome_top.jsp"%>
<div class="jumbotron">
    <h1 class="big-title big-font">药物风险筛查</h1>
    <%-- <span class="subtitle">药物风险简介：</span> --%>
    <div class="acticle">
        <p>“是药三分毒“，药物在治疗疾病的同时，也存在着毒副不良反应。在美国，即使合理使用治疗药物，每年仍有200万以上的住院患者出现严重的不良反应，其中死亡人数约为10万。在上述不良反应中，其中人体遗传基因的多态性占很大一部分原因。</p>
        <p>药物进入人体后，经历吸收、分布、代谢和消除这四个过程后排出体外。进入人体内的药物与其相关药物的转运蛋白、药物代谢酶、药物作用靶点相互作用，完成药物的代谢和动力学过程。因此编码这些代谢酶和靶点蛋白的基因和药物效应密切相关，称为“药物相关基因“。这些药物相关基因发生变异，如缺失、点突变或启动子改变等，就可以引起药物代谢酶、药物作用靶点和药物转运蛋白发生药物反应的遗传差异，从而导致药物在机体内的代谢和药效发生改变，影响药物的治疗效果，甚至产生严重的不良反应，这就是机体多态性造成的药物反应个体差异。</p>
        <p>首度基因的FD-全外显子检测项目包含有20大类合计100多种常用药物的药物相关基因的多态性检测，这些结果可以提示受检者使用某种药物的敏感性和毒副反应。将来受检者进行各种疾病治疗时，医生可以根据本报告所提供的受检者药物敏感性结果来确定更加合理给药方案，从而达到最佳的治疗效果，同时从根本上预防药物不良反应的发生。</p>
    </div>
</div>

<div class="wrap re-wrap">
    <h1 class="big-title big-font">${drugName}</h1>
    <div class="option">
        <div class="zs">注释：</div>
        <select class="option1 white-box">
	        <option value="aa1">1A</option>
	        <option value="aa2">1B</option>
	        <option value="aa3">2A</option>
	        <option value="aa4">2B</option>
	        <option value="aa5">3</option>
	        <option value="zdnp">@</option>
	    </select>
	    <div class="option2" >基于被医学会认可的指南或经由某些重大卫生系统的认可</div>
    </div>
    <table class="title-garden-table table1" cellspacing="0" cellpadding="0">
        <thead>
            <tr><th>检测基因</th><th>检测位点</th><th>级别</th><th>基因型</th><th>用药提示</th></tr>
        </thead>
        <tbody>
            <c:forEach items="${cheDrugGeneList }" var="temp">
                <tr><td><a href="http://www.genecards.org/cgi-bin/carddisp.pl?gene=${temp.gene}" target="_blank" onclick="return (function(){var truthBeTold = window.confirm('你正链接到genecards...');  if(truthBeTold==false){return false;}})()">${temp.gene}</a></td>
                <c:choose>
	           		<c:when test="${fn:contains(temp.locus, '[PMID:') }">
	           			<td class="weidian">${fn:substringBefore(temp.locus, '[PMID:')}</td>
	           		</c:when>
	           		<c:otherwise>
	           			<td class="weidian">${temp.locus}</td>
	           		</c:otherwise>
	           	</c:choose>
                <td>${temp.level}</td><td class="weidian">${temp.genotype}</td><td>${temp.hint}</td></tr></c:forEach>
        </tbody>
    </table>
    <div class="table_under"></div>
    <div class="fanhui">
       <img src="${ctx }/static/img/admin/reportPrint/pic/fanhui.png"/>
       <div>返回上级页面</div>
    </div>
</div>
 <form method="get" action="${ctx }/exome/dxjg?urlType=drugRiskScreening"  id="fanhui" style="display:none;">
	<input type="text" name="data1" value="${data1}">
	<input type="text" name="pageNum" value="${pageNum}">
	<input type="submit" value="返回" id="fanhui_aa"/>
	</form>
<%@ include file="../common/bottom.jsp"%>
<script src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
<script src="${ctx}/static/javascript/common/base.js"></script>
<script src="${ctx}/static/javascript/services/user.js"></script>
<script src="${ctx }/static/js/admin/reportPrint/zs.js"></script>
<script src="${ctx }/static/js/admin/reportPrint/drug1.js"></script>
</body>
</html>