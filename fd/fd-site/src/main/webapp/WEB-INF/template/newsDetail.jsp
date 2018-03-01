<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="common/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>首度生物科技（苏州）有限公司 | 基因检测-肿瘤基因-癌症检测-靶向药物</title>
    <link rel="shortcut icon"  href="${ctx}/static/img/16.png">
    <link rel="stylesheet" href="${ctx}/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctx}/static/css/base.css">
    <link rel="stylesheet" href="${ctx}/static/css/max.css">
    <link rel="stylesheet" href="${ctx}/static/css/middle.css">
    <link rel="stylesheet" href="${ctx}/static/css/min.css"> 
<link rel="stylesheet" type="text/css" href="${ctx}/static/css/news.css"> 
    <script src="${ctx}/static/plugin/jquery/3.1.0/jquery.min.js"></script>
    <script src="${ctx}/static/js/bootstrap.min.js"></script>
</head>

<body>
<%@ include file="common/top.jsp" %>
    
<div id="fullpage" class="container top">
    <div class="section">
    	<h1 class="blod">NEWS CENTER</h1>
        <h3 class="regular">资讯中心</h3>

        <h2 class="title">${news.title }</h2>
        <time><fmt:formatDate value="${news.createtime }" pattern="yyyy-MM-dd"/></time>
        <p class="content">${news.content }</p>
    </div>
</div>


<%@ include file="common/bottom.jsp" %>
    
<script type="text/javascript">
 	var getUrlVars = function () {
	    var vars = [],
	        hash;
	    var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
	    for (var i = 0; i < hashes.length; i++) {
	        hash = hashes[i].split('=');
	        vars.push(hash[0]);
	        vars[hash[0]] = hash[1];
	    }
	    return vars;
	};
	var getUrlVar =	function (name) {
	    return getUrlVars()[name];
	};
</script>
</body>
</html>
