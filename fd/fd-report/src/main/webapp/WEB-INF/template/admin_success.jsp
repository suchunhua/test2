<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <title>首度生物科技报告查询</title>
    <link href="${ctx}/static/css/main.css?rev=@@hash" rel="stylesheet">
</head>
<body>
<%@ include file="common/top.jsp" %>
<div class="container-bg">
	<div class="bg-title-container">
	    <div class="title">
	        <span class="text-en">REPORT QUERY SYSTEM</span><span class="text-ch">报告查询</span>
	    </div>
	    <div class="user">
	    	<img src="${ctx}/static/img/touxiang.png?rev=@@hash" alt="用户头像">
	    	<span>${sessionScope.loginCa.customerName}</span>
	    	<button onclick="javascript:user.quit();">退出</button>
	    </div>
	    <%@ include file="common/main_sidebar.jsp" %>
	    <form action="${ctx }/admin/search?urlType=search" method="post" style="height:auto;">
	    	<label class="msg">${msg}</label>
	    	<input type="hidden" name="customerId" value="${sessionScope.loginCa.customerId}">
	    	<a onclick="javascript:main.submitForm(this);" href="#" class="goback submit-form">返回修改密码界面</a>
	    </form>
	</div>
</div>
<%@ include file="common/bottom.jsp" %>
	<!--# mergeTo:${ctx}/static/js/main.js -->
		<!-- build:js ../../static/js/main.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/services/user.js"></script>
		<script replace="gulp" src="${ctx}/static/javascript/main.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>