<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <title></title>
    <link href="${ctx}/static/css/nutrition.css?rev=@@hash" rel="stylesheet">
</head>
<body>
<div id="nav_id" style="display:none;">${collInfo.collInfoId}</div>
<%@ include file="exome_top.jsp"%>
<div class="jumbotron jumbotron-wrap">
    <h1 class="big-title big-font big-title-orange">${nutrition.nutriName}</h1>
    <%-- <span class="subtitle">${nutrition.nutriName}简介：</span> --%>
    <div class="acticle">
        ${nutrition.introduce}
    </div>
</div>
<div class="wrap re-wrap">
    <h1 class="big-title big-font big-title-orange">${nutrition.nutriName}详情</h1>
    <c:forEach items="${nutrientDetList }" var="nutrientDet">
	    <c:if test="${nutrientDet.gene1 eq '@' }">
	    	<div class="option">
		        <div class="zs">注释：</div>
		        <select class="option1">
		        	<option value="zdnp">@</option>
		    	</select>
		    	<div class="option2" >表示该位点检测到基因型，但与已知基因型不匹配</div>
		    </div>
	    </c:if>
    </c:forEach>
    <c:if test="${not empty alcoholResult}">
		<div id="main" style="width: 100%;height:400px;"></div>
		<p style="text-align: center;margin-top: -50px;padding: 3%;">您的酒精代谢能力为<span id="gatherLevel"></span>，击败了<span id="beatRatio"></span>%的人，并与<span id="quiteRatio"></span>%的人旗鼓相当。</p>
	</c:if>
    <table class="title-garden-table table1 nutrition-details" cellspacing="0" cellpadding="0">
		<thead>
			<tr><th>检测基因</th><th>检测位点</th><th>基因型</th>
			<!-- 不是酒精代谢才显示这一列 -->
			<c:if test="${empty alcoholResult}">
				<th>代谢能力/需求量</th>
			</c:if>
			<th>结果提示</th></tr>
		</thead>
		<tbody>
	      	<c:forEach items="${nutrientDetList }" var="temp">
	        	<tr><td><a href="http://www.genecards.org/cgi-bin/carddisp.pl?gene=${temp.gene}" target="_blank" onclick="return (function(){var truthBeTold = window.confirm('你正链接到genecards...');  if(truthBeTold==false){return false;}})()">${temp.gene}</a></td> <td class="weidian">${temp.rs}</td><td>${temp.gene1}</td>
	        	<!-- 不是酒精代谢才显示这一列 -->
				<c:if test="${empty alcoholResult}">
	        		<td class="nl">${temp.ability}</td>
	        	</c:if>
	        	<td>${temp.reminder}</td></tr>
	        </c:forEach>
        </tbody>
    </table>
    <div class="table_under"></div>
    <div class="fanhui" onclick="javascript:history.go(-1);">
       <img src="${ctx }/static/img/admin/reportPrint/pic/fanhui.png"/>
       <div>返回上级页面</div>
    </div>
</div>
<%@ include file="../common/bottom.jsp"%>
	<!--# mergeTo:${ctx}/static/js/nutrition/details.js -->
		<!-- build:js ../../static/js/nutrition/details.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
		<script replace="gulp" src="${ctx}/static/javascript/common/base.js"></script>
		<script replace="gulp" src="${ctx}/static/javascript/services/user.js"></script>
		<script replace="gulp" src="${ctx}/static/javascript/powerful/autoMergeCells.js"></script>
		<script replace="gulp" src="${ctx}/static/javascript/nutrition.js"></script>
		<script replace="gulp" src="${ctx}/static/plugin/echarts/echarts.simple.min.js"></script>
		<script replace="gulp" src="${ctx}/static/javascript/chart.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
	<script type="text/javascript">
	$(function(){
		nutrition.details();
		<!-- 不是酒精代谢才显示这一列 -->
		<c:if test="${not empty alcoholResult}">
			autoMergeCells._w_table_rowspan(".nutrition-details",4);
		</c:if>
		chart.baiduCharts('${alcoholResult}',$('#main'));
	});
	</script>
</body>
</html>