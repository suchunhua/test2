<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1, maximum-scale=1">
<meta name="renderer" content="webkit">
<title>${headerVo.titleInfo}</title>
<link href="${ctx}/static/css/exomeRiskConstitution.css?rev=@@hash" rel="stylesheet">
</head>
<body>
	<div class="view view-gray-background">
		<%-- <%@ include file="../../common/exome_top.jsp" %> --%>
		<c:choose>
			<c:when test="${empty result.diseaseCorporeityList }">
				<div class="no-disease">
					<img alt="恭喜您没有此类疾病" src="${ctx }/static/img/center.png">
					<label>本次检测未发现${headerVo.titleInfo}相关致病性位点</label>
					<a href="${ctx }/exome/riskConstitution/allRisk?scrIllTypeId=${scrIllTypeId}" class="link-list">点击查看检测列表</a>
				</div>
			</c:when>
			<c:otherwise>
				<table class="table2col" cellpadding="0" cellspacing="0" border="0">
					<thead> 
						<tr>
							<c:if test="${param.scrIllTypeId ne 0 }"><th>患病名称</th><th>患病风险等级</th><th></th></c:if>
							<c:if test="${param.scrIllTypeId eq 0 }"><th>患癌名称</th><th>患癌风险等级</th><th></th></c:if>
						</tr> 
					</thead>
					<tbody>
						<c:forEach items="${result.screenResultMap }" var="screenResult">
							<tr><td>${screenResult.value }</td><td >${screenResult.key }</td><td onclick="javascript:riskConstitution.list.getIllnessRiskGradeByGrade('${screenResult.key }');"><i class="triangle-up"></i></td></tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="ith2-box">
					<c:forEach items="${result.diseaseCorporeityList }" var="diseaseCorporeity">
						<a href="${ctx }/exome/riskConstitution/detail?screenName=${diseaseCorporeity.scrIll }&illnessImg=http://images.firstdimension.cn/image/illness/${fn:replace(fn:replace(diseaseCorporeity.pic, '<img src=\"img/', ''), '\"/>', '') }&scrIll=${diseaseCorporeity.scrIll}"
							class="img-text-horizontal2">
							<div class="img-box" 
								<c:choose>
									<c:when test="${not empty fn:replace(fn:replace(diseaseCorporeity.pic, '<img src=\"img/', ''), '\"/>', '') }">
										style="background-image: url('http://images.firstdimension.cn/image/illness/${fn:replace(fn:replace(diseaseCorporeity.pic, '<img src=\"img/', ''), '\"/>', '') }');"
									</c:when>
									<c:otherwise>
										style="background-image: url('${ctx }/static/img/no-disease-small.jpg');"
									</c:otherwise>
								</c:choose>
							>
								<span>${diseaseCorporeity.scrIll }</span>
							</div>
							<c:choose>
								<c:when test="${param.scrIllTypeId eq 3 }">
									<span>${diseaseCorporeity.screenType }</span>
								</c:when>
								<c:otherwise>
									<span>${diseaseCorporeity.scrIllTypeDetail }</span>
								</c:otherwise>
							</c:choose>
							<span>${diseaseCorporeity.screenResult }</span>
						</a>
					</c:forEach>
				</div>
			</c:otherwise>
		</c:choose>
		<div class="grade">
			<h1></h1>
			<p><span class="black">患病风险：</span><span class="red" id="riskLevel"></span></p>
			<p><span class="black block">评判标准示例：</span> <span id="judge" class="block"></span></p>
		</div>
		<%@ include file="../../common/exome_bottom.jsp" %>
	</div>
	<!--# mergeTo:${ctx}/static/js/exome/riskConstitution/list.js -->
		<!-- build:js ../../static/js/exome/riskConstitution/list.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/powerful/popup.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/riskConstitution.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>