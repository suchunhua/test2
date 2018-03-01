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
<link href="${ctx}/static/css/passport.css?rev=@@hash" rel="stylesheet">
</head>
<body>
	<div class="view">	
		<%-- <%@ include file="../common/exome_top.jsp" %> --%>
		<form action="${ctx }/findPasswordTwo" class="form" id="nextForm" method="post">
			<input type="text" class="input" placeholder="身份证号/手机号/邮箱" id="useVerifyNumber" name="useVerifyNumber">
			<input type="text" class="input code" placeholder="验证码" id="code" name="code"><span class="btn get-code btn-info" onclick="passport.findPassword.sendCode(this);">获取验证码</span>
			<div class="error" <c:if test="${not empty msg}">style="display:block;"</c:if>><img src="${ctx}/static/img/icon/icon-fd-sigh.png" alt=""><span>${msg }</span></div>
			<a href="javascript:passport.findPassword.submitForm();" class="btn btn-info">下一步</a>
		</form>
	</div>
	<!--# mergeTo:${ctx}/static/js/passport/findPassword.js -->
		<!-- build:js ../../static/js/passport/findPassword.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
		<script replace="gulp" src="${ctx}/static/javascript/passport.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>