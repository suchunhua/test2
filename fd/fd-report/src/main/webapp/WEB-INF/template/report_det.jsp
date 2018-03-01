<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <title>首度生物科技报告查询</title>
    <link href="${ctx}/static/css/main.css?rev=@@hash" rel="stylesheet">
</head>
<body>
<%@ include file="common/top.jsp" %>
<div class="container-bg">
	<div class="bg-title-container">
	    <div class="title">
	        <span class="text-en">REPORT QUERY SYSTEM</span><span class="text-ch">报告查询</span>
	    </div>
	    <div class="user">
	    	<img src="${ctx}/static/img/touxiang.png?rev=@@hash" alt="用户头像">
	    	<span>${sessionScope.loginCa.customerName}</span>
	    	<button onclick="javascript:user.quit();">退出</button>
	    </div>
	    <%@ include file="common/main_sidebar.jsp" %>
	    <div class="report-info-box">
		    <h2 class="table-head">报告信息</h2>
		    <h3 style="float: left;width: 580px;font-size: 30px;margin-bottom: 20px;">姓名：${sessionScope.loginCa.customerName}</h3>
		    <table class="report-info long-table">
		    	<thead>
	         		<tr>
		            	<th>文库编号<img src="${ctx}/static/img/icon/fa-emark.png" class="fa-emark"></th><th>报告名</th>
		            	<th>审核人</th><th>审核时间</th><th>操作</th>
	            	</tr>
	         	</thead>
	         	<tbody>
			    	<c:forEach var="temp" varStatus="status" items="${collInfoList }">
				       <tr>
						<td>${temp.bookCode}</td><td>${temp.testType}</td>
						<td>${temp.reportCheck}</td><td>${temp.reportCheckTime}</td>
						<td>
							<c:if test='${temp.testType=="FD-180"||temp.testType=="FD-600" }'>
								<a href="${ctx }/report/showFD?collInfoid=${temp.collInfoId }"><span>查看报告</span></a>
								<a href="${ctx }/report/convertFDPdf?collInfoid=${temp.collInfoId }" onclick="return window.confirm('确定导出?')"><span>导出</span></a>
							</c:if>
							<c:if test='${temp.testType=="FD-FIRST"}'>
								<a href="${ctx }/exome/showFirst?collInfoid=${temp.collInfoId }&urlType=home"><span>查看报告</span></a>
								<a href="javascript:main.downloadPdf(${temp.collInfoId },'admin/reportPrint/first','convertFDPdf','');"><span>导出</span></a>
							</c:if>
							<c:if test='${temp.testType=="FD-Exome"}'>
								<a href="${ctx }/exome/showFirst?collInfoid=${temp.collInfoId }&urlType=home"><span>查看</span></a>
								<a href="javascript:main.downloadPdf(${temp.collInfoId },'admin/reportPrint/exome','convertExomePdf','');"><span>导出</span></a>
							</c:if>
						</td>
					   </tr>
					   <c:if test='${temp.testType=="FD-Exome"}'>
						   <tr>
							<td>${temp.bookCode}</td> <td>证书合集</td><td>${temp.reportCheck}</td><td>${temp.reportCheckTime}</td><td>
								<a href="${ctx }/exome/showFirst?collInfoid=${temp.collInfoId }&urlType=home"><span>查看</span></a>
								<a href="javascript:main.downloadPdf(${temp.collInfoId },'admin/certificate/certificate','convertPartyPdfZip','party证');"><span>导出</span></a>
							</td>
						   </tr>
						   <tr>
							<td>${temp.bookCode}</td> <td>酒神证</td><td>${temp.reportCheck}</td><td>${temp.reportCheckTime}</td><td>
								<a href="${ctx }/report/certificate?collInfoid=${temp.collInfoId }&FDautoUrl=admin/certificate/certificate_showBacchus"><span>查看</span></a>
								<a href="javascript:main.downloadPdf(${temp.collInfoId },'admin/certificate/certificate','convertBacchus','酒神证');"><span>导出</span></a>
							</td>
						   </tr>
						   <c:forEach var="certificate" varStatus="status" items="${temp.certificates }">
						   		<tr><td>${temp.bookCode}</td> 
								   <td>${certificate.gene }</td><td>${temp.reportCheck}</td><td>${temp.reportCheckTime}</td><td>
										<a href="${ctx }/report/certificate?collInfoid=${temp.collInfoId }&FDautoUrl=${certificate.gene1}"><span>查看</span></a>
										<a href="javascript:main.downloadPdf(${temp.collInfoId },'admin/certificate/certificate','${certificate.rs }','${certificate.gene }');"><span>导出</span></a>
									</td>
								</tr>
						   </c:forEach>
					   </c:if>
			    	</c:forEach>
		    	</tbody>
			</table>
		</div>
	</div>
</div>
<%@ include file="common/bottom.jsp" %>
	<script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	<script replace="gulp" src="${ctx}/static/plugin/layer/layer.js"></script>
	<!--# mergeTo:${ctx}/static/js/reportDet.js -->
		<!-- build:js ../../static/js/reportDet.js -->
	    <script replace="gulp" src="${ctx}/static/javascript/common/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/services/user.js"></script>
		<script replace="gulp" src="${ctx}/static/javascript/main.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>