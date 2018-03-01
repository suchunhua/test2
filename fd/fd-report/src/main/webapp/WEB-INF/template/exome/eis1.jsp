<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>

<table class="title-garden-table table1" cellspacing="0" cellpadding="0">
	<thead>
		<tr><th>疾病名称</th><th>检测结果</th></tr>
	</thead>
	<tbody>
		<c:forEach items="${pageInfo.list }" var="temp">
		   <tr><td><span style="display:none;">${temp.screenName}</span>
		   <c:set var="screenName" value="${temp.screenName }" scope="session"></c:set>
		   <c:choose>
		   	<c:when test='${session.screenName=="慢性进行性外侧眼肌麻痹"||session.screenName=="卒中样发作和线粒体糖尿病伴耳聋" }'>
		   		${temp.screenName}
		   	</c:when>
		   	<c:otherwise>
		   		<form method="post" action="${ctx }/exome/jbscDet1" style="display: inline-block;vertical-align: top;">
				<input type="hidden" name="testContent" value="${temp.screenName}" >
				  <input type="hidden" name="data1" class="data1">
			    <input type="hidden" name="data2" class="data2">
			    <input type="hidden" name="data3" class="data3">
			    <input type="hidden" name="data4" class="data4">
				<input type="submit" class="value" value="${temp.screenName}"/>
				</form>
		   	</c:otherwise>
		   </c:choose>
		    </td><td <c:if test="${temp.screenResult ne '阴性' and temp.screenResult ne '未见相关变异'}">style="color:#DC143C;"</c:if> >${temp.screenResult}</td></tr>
	    </c:forEach>
	</tbody>
</table>
<%@ include file="../common/page.jsp" %>



