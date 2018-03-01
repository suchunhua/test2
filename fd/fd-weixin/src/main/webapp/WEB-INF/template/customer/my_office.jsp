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
		<div class="col-bg">
			<img src="${ctx}/static/img/col-bg.png" class="col-img">
			<div class="col">
				<img src="${ctx }/static/img/head-portrait.png" alt="头像" class="header-img"><span>${sessionScope.loginCa.customerName}</span>
				<ul class="col-center-btn">
					<li><a href="${ctx}/customer/baseInfo?urlactive=myOffice"><img src="${ctx}/static/img/icon/icon-fd-baseInfo.png" alt="基本信息">基本信息</a></li>
					<li><a href="${ctx }/customer/reportProgress?urlactive=myOffice"><img src="${ctx}/static/img/icon/icon-fd-reportProgress.png" alt="报告进度">报告进度</a></li>
				</ul>
			</div>
		</div>
		<ul class="go-target">
			<li><a href="${ctx }/customer/security?urlactive=myOffice"><img src="${ctx}/static/img/icon/icon-fd-my-blue.png" alt="帐号与安全">帐号与安全<i class="go"></i></a></li>
		</ul>
		<ul class="go-target">
			<li><a href="${ctx }/customer/syntrophusList?urlactive=syntrophusList"><img src="${ctx}/static/img/icon/icon-fd-list.png" alt="遗传病列表">遗传病列表<i class="go"></i></a></li>
			<li><a href="${ctx }/enclosure/appendix"><img src="${ctx}/static/img/icon/icon-fd-data.png" alt="附录">附录<i class="go"></i></a></li>
		</ul>
		<ul class="go-target">
			<li><a href="javascript:void(0);"><img src="${ctx}/static/img/icon/icon-fd-question.png" alt="反馈">反馈<i class="go"></i></a></li>
			<li><a href="${ctx }/enclosure/disclaimer"><img src="${ctx}/static/img/icon/icon-fd-horn-green.png" alt="免责声明">免责声明<i class="go"></i></a></li>
			<li><a href="${ctx }/enclosure/aboutAs"><img src="${ctx}/static/img/icon/icon-fd-news.png" alt="关于首度">关于首度<i class="go"></i></a></li>
		</ul>
		<a href="javascript:customer.logout();" class="layout">退出</a>
		<%@ include file="../common/exome_bottom.jsp" %>
	</div>
	<!--# mergeTo:${ctx}/static/js/customer/myOffice.js -->
		<!-- build:js ../../static/js/customer/myOffice.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/customer.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>
