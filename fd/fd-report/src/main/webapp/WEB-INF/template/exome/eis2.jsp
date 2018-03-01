<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<table class="title-garden-table table1" cellspacing="0" cellpadding="0">
   <thead>
		<tr><th>疾病名称</th><th>检测基因</th><th>检测结果</th></tr>
	</thead>
	<tbody>
	   <c:forEach items="${pageInfo.list }" var="temp">
	        <tr><td <c:if test="${temp.screenResult ne '阴性'}">style="color:#DC143C;"</c:if> >${temp.screenName}</td>
	        <td><a href="http://www.genecards.org/cgi-bin/carddisp.pl?gene=${temp.screenGene }" target="_blank" onclick="return (function(){var truthBeTold = window.confirm('你正链接到genecards...');  if(truthBeTold==false){return false;}})()">${temp.screenGene}</a></td> 
	        <td <c:if test="${temp.screenResult ne '阴性'}">style="color:#DC143C;"</c:if> >${temp.screenResult}</td></tr>
	   </c:forEach>
    </tbody>
</table>
<%@ include file="../common/page.jsp" %>


