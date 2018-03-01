<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1, maximum-scale=1">
<meta name="renderer" content="webkit">
<title>${headerVo.titleInfo}</title>
<link href="${ctx}/static/css/customer.css?rev=@@hash" rel="stylesheet">
</head>
<body>
	<div class="view view-gray-background">
		<%-- <%@ include file="../common/exome_top.jsp" %> --%>
		<ul class="show-target topCss">
			<li>姓名：<span>${collInfo.patient}</span></li>
			<li>性别：<span>${collInfo.sex}</span></li>
			<li>年龄：<span>${collInfo.age}岁</span></li>
			<c:choose>
				<c:when test="${isValidDate eq true }">
					<li>采样日期: <span><fmt:parseDate value="${collInfo.sampCollTime}" pattern="yyyy-MM-dd" var="sampCollTime"/><fmt:formatDate value="${sampCollTime}" pattern="yyyy-MM-dd"/></span></li>
				</c:when>
				<c:otherwise>
					<li>采样日期: <span>${collInfo.sampCollTime}</span></li>
				</c:otherwise>
			</c:choose>
			<li>收样日期: <span><fmt:formatDate value="${collInfo.collTime}" pattern="yyyy-MM-dd"/></li>
			<c:choose>
				<c:when test="${collInfo.otherIll eq 'NA'}">
					<li>个人疾病史和药物史: <span name="otherIll" onclick="javascript:customer.baseInfo.editCollInfo(this);">内容为空点击填写</span></li>
				</c:when>
				<c:otherwise>
					<li>个人疾病史和药物史: <span>${collInfo.otherIll}</span></li>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${collInfo.family eq 'NA'}">
					<li>家族史: <span name="family" onclick="javascript:customer.baseInfo.editCollInfo(this);">内容为空点击填写</span></li>
				</c:when>
				<c:otherwise>
					<li>家族史: <span>${collInfo.family}</span></li>
				</c:otherwise>
			</c:choose>
			<li>样本编号: <span>${collInfo.bookCode}</span></li>
			<li>样本类型: <span>${sampKind1}</span></li>
			<li>检测内容: <span>FD-Exome</span></li>
			<li>检测技术: <span>${collInfo.testProInfoTestSkill}</span></li>
			<li>测序平台: <span>${collInfo.flat}</span></li>
			<li>测序数据量: <span>${comSize.data_size}</span></li>
			<li>平均测序深度: <span>${comSize.depth}X</span></li>
			<li>覆盖度: <span>${comSize.coverage}</span></li>
			<li>Q30: <span>&gt;${comSize.q30}</span></li>
		</ul>
		<%-- <%@ include file="../common/exome_bottom.jsp" %> --%>
	</div>
	<!--# mergeTo:${ctx}/static/js/customer/baseInfo.js -->
		<!-- build:js ../../static/js/customer/baseInfo.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/customer.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>