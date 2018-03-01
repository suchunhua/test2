<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<title>Insert title here</title>
</head>
<body>
	<form action="${ctx }/collInfo/index" method="post">
		<input type="text" name="username" placeholder="请输入用户名">
		<input type="password" name="password" placeholder="请输入密码">
		<input type="submit" value="同步collinfo数据">
	</form>
	<form action="${ctx }/origin/move" method="post">
		<input type="text" name="username" placeholder="请输入用户名">
		<input type="password" name="password" placeholder="请输入密码">
		<input type="submit" value="生成origin数据">
	</form>
	<a href="${ctx }/exacMultianno/">导入exacMultianno的数据（只在有一定目录下才可以导入）</a>
	<p>${result.msg }</p>
</body>
</html>