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
		<form action="${ctx }/updatePassword" class="form" id="updateForm" method="post">
			<input type="password" class="input" placeholder="请输入新密码" id="password" name="password">
			<input type="password" class="input" placeholder="请再次输入新密码" id="repassword" name="repassword">
			<div class="error" <c:if test="${not empty msg}">style="display:block;"</c:if>><img src="${ctx}/static/img/icon/icon-fd-sigh.png" alt=""><span>${msg }</span></div>
			<a href="javascript:passport.findPassword.updatePassword();" class="btn btn-info">完成</a>
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
	<script>
		$(function(){
			passport.findPassword.init();
		});
	</script>
</body>
</html>