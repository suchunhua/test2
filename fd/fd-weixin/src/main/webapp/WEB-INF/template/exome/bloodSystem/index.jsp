<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1, maximum-scale=1">
<meta name="renderer" content="webkit">
<title>${headerVo.titleInfo}</title>
<link href="${ctx}/static/css/exomeBlood.css?rev=@@hash" rel="stylesheet">
</head>
<body>
	<div class="view view-gray-background">
		<%-- <%@ include file="../../common/exome_top.jsp" %> --%>
		<div class="img-box">
			<h1><i>血型系统</i><i>Blood-group System</i></h1>
			<img src="${ctx}/static/img/banner/bloodSystem.png" alt="">
		</div>
		<ul class="tab border-red-tab">
			<li onclick="tab.tabContent(this);" class="active"><a href="javascript:void(0);">ABO血型检测</a></li>
			<li onclick="tab.tabContent(this);"><a href="javascript:void(0);">HLA血型检测</a></li>
		</ul>
		<div class="tab-content-bb tab-content">
			<!-- ABO血型检测 -->
			<div class="section in">
				<table class="table abo">
					<tbody>
						<tr><td>您的血型为</td><td>${bloodAboResult.resultgene2 }</td></tr>
						<tr><td>精细分型为</td><td>${bloodAboResult.resulttype1}</td></tr>
						<tr><td>基因型为</td><td>${bloodAboResult.resultgene1 }</td></tr>
					</tbody>
				</table>
				<%-- <div class="abo">
					<img src="${ctx}/static/img/physic-ico/abo-background.png" alt="abo血型背景图片">
					<span class="pro1"><i>${bloodAboResult.resultgene2 }</i></span>
					<span class="pro2">您的血型为：<i>${bloodAboResult.resultgene2 }</i></span>
					<span class="pro3">精细分型为：<i>${bloodAboResult.resulttype1}</i></span>
					<span class="pro4">基因型为：<i>${bloodAboResult.resultgene1 }</i></span>
				</div> --%>
			</div>
			<!-- HLA血型检测 -->
			<div class="section">
				<table class="blood table">
					<thead><tr><th>HLA血型</th><th colspan="2">检测结果</th></tr></thead>
					<tbody>
						<c:forEach items="${bloodHlaList }" var="bloodHla">
							<tr>
								<td>
									<c:choose>
										<c:when test="${!fn:contains(bloodHla.type, 'D')}">Ⅰ类</c:when>
										<c:otherwise>Ⅱ类</c:otherwise>
									</c:choose>
								</td>
								<td>${bloodHla.type }</td><td>${bloodHla.allele1 }<br/>${bloodHla.allele2 }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<%@ include file="../../common/exome_bottom.jsp" %>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/bloodSystem/index.js -->
		<!-- build:js ../../static/js/exome/bloodSystem/index.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/services/tab.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/powerful/autoMergeCells.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/blood.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
	<script>
		$(function(){
			blood.init({});
		})
	</script>
</body>
</html>