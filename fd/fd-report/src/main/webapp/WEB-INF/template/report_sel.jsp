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
	    <div class="report-info-box">
	    	<h2 class="table-head">报告信息</h2>
	    	<c:forEach items="${collInfoList }" var="temp" varStatus="status">
		    	<table class="report-info">
			        <tr><td colspan="2" style="background-color: #ebebeb;">报告编号：${temp.bookCode }</td></tr>
			        <tr>
			        	<td>收样时间</td><td><fmt:formatDate value="${temp.collTime }" pattern="yyyy/MM/dd hh:mm"/></td>
			        </tr>
			        <tr>
			        	<td>建库日期</td><td><fmt:formatDate value="${temp.buildTime }" pattern="yyyy/MM/dd hh:mm"/></td>
			        </tr>
			        <tr>
			        	<td>下机时间</td><td><fmt:formatDate value="${temp.downTime }" pattern="yyyy/MM/dd hh:mm"/></td>
			        </tr>
			        <tr><td>报告负责人</td><td>${temp.reportPerson }</td></tr>
					<tr><td>最新报告更新时间</td><td>${temp.reportTime }</td></tr>
					<tr><td>审核人</td><td>${temp.reportCheck }</td></tr>
					<tr><td>审核时间</td><td>${temp.reportCheckTime }</td></tr>
				 </table>
		    </c:forEach>
	    </div>
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