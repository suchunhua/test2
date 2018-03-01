<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <title>首度生物科技报告查询</title>
    <link href="${ctx}/static/css/login.css?rev=@@hash" rel="stylesheet">
</head>
<body>
<%@ include file="common/top.jsp" %>
<div class="container-bg">
	<div class="login bg-title-container">
	    <div class="title">
	        <span class="text-en">REPORT QUERY</span><span class="text-ch">报告查询</span>
	    </div>
	    <form action="${ctx}/user/login" method="POST" id="LoginForm">
	    	<div class="error-msg">${msg }</div>
	        <div class="items">
	            <i class="icons-person"></i><input type="text" class="login-text" name="userAccount">
	        </div>
	        <div class="items">
	            <i class="icons-lock"></i><input type="password" class="login-text" name="userPassword">
	        </div>
	        <div class="items">
	            <a class="login-submit submit-form" href="javascript:login.submitForm();">登录</a>
	        </div>
	        <div class="items">
	            <label for="hasStockCheckbox">
	                <span class="checkbox">
					    <input id="hasStockCheckbox" type="checkbox" class="checkbox">
					    <i class="checkbox"></i>
					</span>记住密码
	            </label>
	            <a href="javascript:void(0);" class="forget">忘记密码？</a>
	        </div>
	    </form>
	</div>
</div>
<iframe data-src="<c:if test="${fileType ne 'test' }">${ctx}/report/main1?urlType=main1</c:if>" width="0" height="0" style="display:none;" id="casIframe"></iframe>
<%@ include file="common/bottom.jsp" %> 
	<!--# mergeTo:${ctx}/static/js/login.js -->
		<!-- build:js ../../static/js/login.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/base.js"></script>
		<script replace="gulp" src="${ctx}/static/javascript/login.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>

