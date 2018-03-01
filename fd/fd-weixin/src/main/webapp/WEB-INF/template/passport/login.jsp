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
<title>首度生物科技报告查询--登录页</title>
<link href="${ctx}/static/css/passport.css?rev=@@hash" rel="stylesheet">
</head>
<body>
	<div class="view view-background">	
		<div class="box45px"></div>
		<a href="javascript:void(0);" class="logo"></a>
		<div class="login-page">
			<form id="loginForm" action="${ctx }/login" method="POST">
				<div class="item"><input type="text" name="username" placeholder="身份证号/手机号/邮箱" id="username"></div>
				<div class="item"><input type="password" name="password" id="password" autocomplete="off" placeholder="输入密码" ></div>
				<div class="item error" <c:if test="${not empty msg }">style="display:block;"</c:if>><img src="${ctx}/static/img/icon/icon-fd-sigh.png" alt=""><span>${msg }</span></div>
				<a href="javascript:passport.login.login();" id="loginBtn">登&emsp;录</a>
				<c:if test="${empty sessionScope.customerWeiXinInfo }">
					<a href="${ctx }/wxLogin" class="weixin-go"><img alt="微信图标" src="${ctx }/static/img/icon/icon-fd-weixin.png"> 微信登录</a>
					<a href="${ctx }/findPassword" class="find-pwd">忘记密码？</a>
				</c:if>
			</form>
		</div>
	</div>
	<iframe data-src="<c:if test="${fileType ne 'test' }">${ctx}/exome/home?urlactive=home</c:if>" width="0" height="0" style="display:none;" id="casIframe"></iframe>
	<!--# mergeTo:${ctx}/static/js/passport/login.js -->
		<!-- build:js ../../static/js/passport/login.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
		<script replace="gulp" src="${ctx}/static/javascript/passport.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
	<script>
	$(function(){
		passport.login.init();
	});
	</script>
</body>
</html>