<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <title></title>
    <link rel="stylesheet" href="${ctx}/static/css/exomeView.css?rev=@@hash">
</head>
<body>
<%@ include file="exome_top.jsp"%>
<div class="banner-bg">
    <div class="banner">
        <h1>${collInfo.patient}</h1>
        <span>年龄：${collInfo.age}</span>
        <span>送样日期：<fmt:formatDate type="date" value="${collInfo.sendSamp}" dateStyle="default"/></span>
        <a href="${ctx }/exome/person" class="red-btn">下机数据统计</a>
        <a href="${ctx }/exome/all" class="link-btn">全外检测的遗传病列表</a>
    </div>
</div>

<div class="container">
    <h1 class="table-title">疾病风险检测结果汇总：</h1>
    <table class="black-header-table">
        <thead>
            <tr>
                <td colspan="2">疾病类型</td>
                <td>基因</td>
                <td>变异</td>
                <td>纯合(<img src="${ctx}/static/img/homozygous-small.png?rev=@@hash">)/杂合(<img src="${ctx}/static/img/heterozygous-small.png?rev=@@hash">)</td>
                <td>致病风险等级</td>
                <td>参考文献（PMID号）</td>
            </tr>
        </thead>
        <c:forEach items="${scrIllTypeArray }" var="scrIllType">
            <c:if test="${scrIllType ne 'null'}">
                <tr><td>${scrIllType }</td><td>--</td><td>--</td><td>--</td><td>--</td><td>--</td><td>--</td></tr>
            </c:if>
        </c:forEach>
        <c:if test="${selfIllList.size() gt 0 }">
            <c:forEach items="${selfIllList }" var="temp">
             <tr>
                <td>${temp.scrIllType}</td>
                <td><a href="${ctx}/exome/impjbscDet?testContent=${temp.scrIll}&urlType=diseaseRiskAndIndividualConstitution">${temp.scrIll }</a></td>
                <td>
                <a href="http://www.genecards.org/cgi-bin/carddisp.pl?gene=${temp.scrGene }" target="_blank" onclick="return (function(){var truthBeTold = window.confirm('你正链接到genecards...');  if(truthBeTold==false){return false;}})()">${temp.scrGene}</a>
                </td><td>${temp.scrChange}</td>
                    <td>
                        <c:if test='${temp.scrLocate=="杂合"}'><img src="${ctx}/static/img/heterozygous-small.png?rev=@@hash"></c:if>
                        <c:if test='${temp.scrLocate=="纯合"}'><img src="${ctx}/static/img/homozygous-small.png?rev=@@hash"></c:if>
                    </td>
                <td><a href="javascript:exome.getRiskGrade('${temp.scrRisk}');">${temp.scrRisk}</a></td>
                <td>
                    <c:forEach items="${fn:split(temp.book,',|;|，|；')}" var="book" varStatus="status">
                        <a href="https://www.ncbi.nlm.nih.gov/pubmed/?term=${book }" target="_blank" onclick="return (function(){var truthBeTold = window.confirm('你正链接到ncbi...');  if(truthBeTold==false){return false;}})()">${book }</a><c:if test="${status.last ne true }">;</c:if>
                    </c:forEach>
                </td>
             </tr>
            </c:forEach>
        </c:if>
    </table>
    <div class="report-detail">
        <h2 class="report-title">报告详情</h2>
        <ul class="position-nav">
            <li class="report-one"><span class="grey-tip">药物风险筛查</span>
                <ul>
                    <li><a href="${ctx }/exome/zydb?urlType=drugRiskScreening">药物代谢酶和作用靶点基因信息汇总</a></li>
                    <li><a href="${ctx }/exome/dxjg?urlType=drugRiskScreening">药物风险汇总</a></li>
                </ul>
            </li>
            <li class="report-two"><span class="grey-tip">疾病风险及个体体质</span>
                <ul>
                	<c:forEach var="scrIllType" items="${sessionScope.scrIllTypeArray }" varStatus="status">
						<li><a href="${ctx}/exome/jbscback?urlType=diseaseRiskAndIndividualConstitution&scrIllType=${scrIllType }">${scrIllType }</a></li>
					</c:forEach>
                    <li><a href="${ctx }/exome/jbscback?scrIllType=其他个体体质&urlType=diseaseRiskAndIndividualConstitution">个体体质</a></li>
                </ul>
            </li>
            <li  class="report-three"><span class="grey-tip">营养代谢能力</span>
                <ul>
                    <li><a href="${ctx }/exome/yydxDet?testContent=尼古丁依赖&data3=1&data4=1&urlType=nutritionalMetabolism">尼古丁</a></li>
                    <li><a href="${ctx }/exome/yydxDet?testContent=乳糖代谢&data3=1&data4=1&urlType=nutritionalMetabolism">乳糖</a></li>
                    <li><a href="${ctx }/exome/yydxDet?testContent=维生素C&data3=3&data4=3&urlType=nutritionalMetabolism">维生素C</a></li>
                    <a href="${ctx}/exome/yydx?urlType=nutritionalMetabolism" class="more">查看更多</a>
                </ul>
            </li>
            <li class="report-four"><span class="grey-tip">变异汇总</span>
                <ul>
                    <li><a href="${ctx }/exome/yszbtb?urlType=varianceSummary">不确定是否致病突变</a></li>
                    <li><a href="${ctx }/exome/qxjy?urlType=varianceSummary">缺陷基因</a></li>
                </ul>
            </li>
            <li class="report-five"><span class="grey-tip">趣味检测</span>
                <ul>
                    <li><a href="${ctx }/exome/ggph?urlType=tasteDetection">感官偏好</a></li>
                    <li><a href="${ctx }/exome/zlsc?urlType=tasteDetection">智力分析</a></li>
                    <li><a href="${ctx }/exome/ydtf?urlType=tasteDetection">个体运动天赋</a></li>
                    <li><a href="${ctx }/origin/move?urlType=tasteDetection">祖源迁徒</a></li>
                    <li><a href="${ctx }/origin/analysis?urlType=tasteDetection">祖源分析</a></li>
                </ul>
            </li>
            <li class="report-six"><a href="${ctx }/health/diseaseRisk?urlType=healthGuidance"><span class="grey-tip">健康指导</span></a></li>
        </ul>
    </div>
</div>

<div class="grade">
	<h1></h1>
	<p><span class="black">患病风险：</span><span class="red" id="riskLevel"></span></p>
	<p><span class="black block">评判标准示例：</span> <span id="judge" class="block"></span></p>
	<a href="${ctx }/enclosure/riskRating" style="float: right; color: #2929ea; ">查看所有风险等级</a>
</div>
<%@ include file="../common/bottom.jsp"%>
	<!--# mergeTo:${ctx}/static/js/exomeView.js -->
		<!-- build:js ../../static/js/exomeView.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/services/user.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/powerful/autoMergeCells.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/powerful/popup.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/exome.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
	<script>
	$(function(){
		//合并表格中的单元格
		autoMergeCells._w_table_rowspan(".black-header-table",1);
		$(".black-header-table tr td").css('border', 'none');
		$(".black-header-table tr td").css('border', '1px solid #9ea6b0');
	});
	</script>
</body>
</html>