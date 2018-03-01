<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="taglibs.jsp" %>
<header class="bar ${headerVo.function } menu">
	<c:choose>
		<c:when test="${headerVo.function eq 'search' }">
			<div class="search-box"><i class="icon-fd-white-search"></i><input type="text" class="search-input"></div>
		</c:when>
		<c:when test="${fn:contains(headerVo.function,'title') }">
			<h1 class="title-box text-overflow" <c:if test="${not empty headerVo.titleColor}">style="color:${headerVo.titleColor }"</c:if>>
				<i class="<c:if test="${not empty headerVo.leftIcon}">${headerVo.leftIcon}</c:if>
						  <c:if test="${empty headerVo.leftIcon}">icon-fd-white-black</c:if>" 
					onclick="javascript:base.pageGoBack();"></i>
			${headerVo.titleInfo}</h1>
		</c:when>
	</c:choose>
	<a href="javascript:void(0);" class="${headerVo.rightIcon }" <c:if test="${not empty headerVo.rightIconFunc}"> onclick="base.${headerVo.rightIconFunc};"</c:if>></a>
	<c:if test="${!headerVo.menuSwitch}">
		<ul class="menu-ul">
			<i class="triangle"></i>
			<li><a href="${ctx }/enclosure/appendix" class="menu-link"><i class="icon-fd-appendix"></i>附录</a></li>
			<li><a href="${ctx }/enclosure/aboutAs" class="menu-link"><i class="icon-fd-logo"></i>关于首度</a></li>
			<li><a href="${ctx }/enclosure/disclaimer" class="menu-link"><i class="icon-fd-horn"></i>免责声明</a></li>
		</ul>
	</c:if>
</header>
<div class="box45px"></div>