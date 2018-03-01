<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="taglibs.jsp" %>
<ul class="menu <c:if test="${ param.urlType ne null }"> menu-actived </c:if>">
   	<li>
		<h3>报告信息管理</h3>
   		<ul class="sub-menu">
   			<li class="<c:if test="${ 'main1' eq param.urlType }"> actived </c:if>"><i></i><a href="${ctx}/report/main1?urlType=main1">报告进程查询</a></li>
   			<li class="<c:if test="${ 'main2' eq param.urlType }"> actived </c:if>"><a href="${ctx}/report/main2?urlType=main2">具体报告查询</a></li>
   		</ul>
   	</li>
   	<li>
   		<h3>个人信息管理</h3>
   		<ul class="sub-menu">
   			<li class="<c:if test="${ 'search' eq param.urlType }"> actived </c:if>"><i></i><a href="${ctx}/admin/search?urlType=search">修改密码</a></li>
   		</ul>
   	</li>
</ul>