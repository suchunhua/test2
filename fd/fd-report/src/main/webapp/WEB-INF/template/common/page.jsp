<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="taglibs.jsp"%>

<div class="table_under">
	<div class="inner">
	<c:if test="${pageInfo.total > 0 }">
		<c:if test="${pageInfo.pageNum ne 1 }">
			<div class="chang er" onclick="javascript:pages.pageSelect(1);">
				<img src="${ctx}/static/img/admin/reportPrint/pic/sy.png">
			</div>
		</c:if>
		<c:if test="${pageInfo.pageNum > 1 }">
			<div class="er" onclick="javascript:pages.pageSelect(${pageInfo.pageNum -1});">
				<img src="${ctx}/static/img/admin/reportPrint/pic/syy.png">
			</div>
		</c:if>
		<c:if test="${pageInfo.isFirstPage }">
			<div class="xd er">1</div>
		</c:if>
		<c:if test="${pageInfo.isFirstPage eq false }">
			<div class="er" onclick="javascript:pages.pageSelect(1);">1</div>
		</c:if>
		<c:if test="${pageInfo.firstPage-1 > 1 }">
			<div class="er">...</div>
		</c:if>
		<c:if test="${pageInfo.pages != 0 }">
			<c:forEach begin="1" var="i" items="${pageInfo.navigatepageNums }">
				<c:choose>
					<c:when test="${pageInfo.pageNum eq i}">
						<div class="xd er">${pageInfo.pageNum }</div>
					</c:when>
					<c:otherwise>
						<div class="er" onclick="javascript:pages.pageSelect(${i });">${i }</div>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</c:if>
		<c:if test="${pageInfo.pages>pageInfo.pageNum }">
			<div class="er" onclick="javascript:pages.pageSelect(${pageInfo.pageNum+1});">
				<img src="${ctx}/static/img/admin/reportPrint/pic/xyy.png">
			</div>
		</c:if>
		<c:if test="${pageInfo.isLastPage eq false }">
			<div class="chang er" onclick="javascript:pages.pageSelect(${pageInfo.pages});">
				<img src="${ctx}/static/img/admin/reportPrint/pic/my.png">
			</div>
		</c:if>
	</c:if>
	</div>
</div>
