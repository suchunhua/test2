<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <title>first报告</title>
    <link rel="stylesheet" href="${ctx}/static/css/exomeView.css?rev=@@hash">
    <link rel="stylesheet" href="${ctx}/static/css/first/report.css?rev=@@hash">
</head>
<body>
<%@ include file="../exome/exome_top.jsp"%>
<div class="first-container">
	<div class="personal"><img src="${ctx}/static/img/first/person.png"><h1>个人基本信息</h1></div>
	<table border="0" cellspacing="0" class="first">
		<tbody>
			<tr>
				<td>姓名</td><td>${collInfo.patient }</td><td>性别</td>
				<td>
					<div class="dui"><c:if test="${collInfo.sex eq '男' }">√</c:if></div>男
					<div class="dui"><c:if test="${collInfo.sex eq '女' }">√</c:if></div>女
				</td>
				<td>年龄</td><td>${collInfo.age }</td>
			</tr>
			<tr>
				<td>样本编号</td><td>${collInfo.bookCode}</td><td>采样时间</td><td>${collInfo.sampCollTime}</td><td>收样时间</td><td><fmt:formatDate type="date" value="${collInfo.collTime}" dateStyle="default"/></td>
			</tr>
			<tr>
				<td>样本类型</td><td colspan="2">
					<div class="dui"><c:if test="${fn:contains(collInfo.sampType, '外周血') }">√</c:if></div>外周血
					<div class="dui"><c:if test="${!fn:contains(collInfo.sampType, '外周血') }">√</c:if></div>口腔黏膜细胞					
				</td>
				<td>样本质检</td><td colspan="2"><div class="dui">√</div>符合要求<div class="dui"></div>不符合要求</td>
			</tr>
			<tr><td>临床表现</td><td colspan="5" class="left">${collInfo.judge}</td></tr>
			<tr><td>家族疾病史</td><td colspan="5" class="left">${collInfo.family}</td></tr>
		</tbody>
	</table>
	<div class="personal right"><h1>检测结果及解析</h1></div>
	<table class="tab1" border="0" cellspacing="0">
		<tbody>
			<tr class="tab_tr"><td colspan="5">基因变异汇总</td></tr>
			<tr><td>基因名称</td><td>变异位点</td><td>突变状态</td><td>突变类型</td><td>风险等级</td></tr>
			<c:forEach var="firstGeneChange" items="${FDfirstResult.firstGeneChange }">
				<tr><td>${firstGeneChange.gene }</td><td>${firstGeneChange.genechange }</td><td>${firstGeneChange.changestate }</td><td>${firstGeneChange.changetype }</td><td>${firstGeneChange.grade }</td></tr>
			</c:forEach>
        	<tr>
				<td colspan="5" class="left bz">
				<div>备注</div>
				<ol>
					<li>FD-T-1A：受检者检测到有肿瘤易感基因（强致瘤性）变异，且变异记载为明确致病，显性处于杂合状态或隐性处于纯合状态。提示其本人患癌风险极高。</li><li>FD-T-2A：受检者检测到有肿瘤易感基因（强致瘤性）变异，且变异记载为疑似致病，显性处于杂合状态或隐性处于纯合状态。提示其本人患癌风险很高。</li><li>FD-T-3：受检者检测到有肿瘤易感基因（弱致瘤性）变异，且变异记载为明确致病，隐性处于杂合状态提示其本人患癌风险增加。（详细分级标准请见附录1）</li>
					<li>突变状态：纯合--两条染色体的等位基因均发生突变；杂合--只有一条染色体上的等位基因发生突变。</li>
				</ol>
				</td>
			</tr>
		</tbody>
	</table>
	<table class="tab2 tab2_1" border="0" cellspacing="0">
		<tbody>
			<tr class="tab_tr"><td colspan="2">结果详细解析</td></tr>
			<c:forEach var="temp" items="${FDfirstResult.firstGeneChange }">
				<tr><td colspan="2" class="left">
					<div>风险位点：${temp.asfGene }&emsp;${temp.genechange }</div>
					<div>相关疾病：${temp.illabout }</div>
					<div>结果提示：${temp.resulttip }</div>
					<div class="switch-cont"><span>疾病介绍</span><i></i><p>${temp.illintroduce }</p></div>
					<div class="switch-cont"><span>变异解析</span><i></i><p>${temp.changeanalysis }</p></div>
					<div class="switch-cont"><span>相关建议</span><i></i><p>${temp.suggest }</p></div>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="personal right"><h1>本次检测所有基因列表</h1></div>
	<table class="tab3 tab3_3" border="0" cellspacing="0">
		<tbody>
			<tr class="tab3_tr"><td>基因</td><td>结果</td><td style="text-align: center;">常发疾病</td><td style="text-align: center;">基因功能</td></tr>
			<c:forEach var="temp" items="${FDfirstResult.firstTestSum }">
				<tr>
					<c:choose>
						<c:when test="${temp.firstresult ne '未见致病性变异'}">
							<td class="actived">${temp.firstgene }</td><td class="actived">${temp.firstresult }</td>
						</c:when>
						<c:otherwise>
							<td>${temp.firstgene }</td><td>${temp.firstresult }</td>
						</c:otherwise>
					</c:choose>
					<td>${temp.firstill }</td>
					<td>${temp.firstfunction }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<%@ include file="../common/bottom.jsp"%>
	<!--# mergeTo:${ctx}/static/js/exomeView.js -->
		<!-- build:js ../../static/js/exomeView.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/services/user.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/powerful/autoMergeCells.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/powerful/popup.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/exome.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
	<script>
	$(function(){
		$(".switch-cont").click(function(event) {
			var othis = $(this);
			othis.toggleClass('switch-show');
		});
	});
	</script>
</body>
</html>