<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <title></title>
    <link href="${ctx}/static/css/illness_gather.css?rev=@@hash" rel="stylesheet">
</head>
<body>
<%@ include file="exome_top.jsp"%>
<div class="jumbotron">
    <h1 class="big-title big-font">${scrIllType }</h1>
    <!--20171109日开会决定不要这个子标题 <span class="subtitle">疾病风险筛查简介</span> -->
    <div class="acticle">
	    <c:choose>
	    	<c:when test="${scrIllType eq sessionScope.scrIllTypeArray[0]}">
	    		<p>首度基因在肿瘤基因检测方面具有丰富的经验和深厚的专业背景，不仅为肿瘤患者提供个性化的靶向治疗方案，而且能为健康人群的遗传性肿瘤提供基因检测筛查，对您终生的患癌风险做最专业的评估。</p>
	    	</c:when>
	    	<c:when test="${scrIllType eq sessionScope.scrIllTypeArray[1]}">
	    		<p></p>
	    	</c:when>
	    	<c:when test="${scrIllType eq sessionScope.scrIllTypeArray[2]}">
	    		<p>突变的基因通过改变多肽链的质和量，使得蛋白质发生缺陷，由此引发疾病，称为遗传病。如果疾 病的发生仅仅由一对等位基因控制，就称为“单基因遗传病”。它以简单形式传递，其遗传规律遵循孟 德尔定律，所以又称为孟德尔遗传病。单基因遗传病根据基因所处的染色体以及遗传方式的不同可分为 常染色体显性（Autosomal Dominant，AD）遗传病、常染色体隐性（Autosomal Recessive， AR）遗传病、X连锁显性（X-linked Dominant）遗传病、X连锁隐性（X-linked Recessive）遗传病 和Y连锁遗传病。</p>
				<p>目前已发现的单基因遗传病大约有3000多种，绝大多数为罕见病，并且每年在以10~50种的发现 速度在递增，单基因遗传病，尤其是隐性的遗传病，对现代人类的健康已构成了较大的威胁。FDExome 项目依据人类孟德尔遗传在线数据库（OMIM），能重点检测706种人类常见的单基因遗传病， 提前预测疾病发生。</p>
	    	</c:when>
	    	<c:when test="${scrIllType eq sessionScope.scrIllTypeArray[3]}">
	    		<p></p>
	    	</c:when>
	    	<c:when test="${scrIllType eq sessionScope.scrIllTypeArray[4]}">
	    		<p>线粒体是生物氧化与能量转换的重要场所，并且还是唯一存在于细胞核外带有遗传物质的细胞器，因此线粒体在人类遗传和遗传病中占有特殊地位。线粒体疾病的发生被认为与氧化磷酸化过程相关基因的突变有关，线粒体疾病主要分为两大类：遗传性疾病和获得性疾病。遗传性疾病病因包括核DNA突变、线粒体DNA突变和基因组间的通讯障碍（具体检测结果在本报告的线粒体遗传病部分）；获得性疾病主要由毒素、药物和衰老引起（具体检测结果在本报告的药物筛查部分）。目前已发现的和线粒体DNA突变有关的人类疾病共有100多种。</p>
				<p>线粒体遗传病主要表现为母系遗传。线粒体病可以有多种遗传模式，细胞核DNA相关基因所致的疾病表现为孟德尔方式遗传，而体细胞的线粒体DNA突变导致的线粒体疾病主要表现为母系遗传，即由母亲遗传给后代，父亲几乎不遗传给后代。</p>
				<p>线粒体遗传病的阈值效应，指某种组织突变线粒体DNA达到一定的比例时（一般在80~90%左右），才表现出疾患。不同组织和器官对能量的依赖程度不同，所需的突变DNA的分子数量就不同，突变负荷较高的组织更易发病，如肌肉、心脏和大脑等。另一方面，同一组织在不同时间由于功能不同，对代谢损害的反应也不同。因此不是所有的线粒体DNA突变都会导致病理性改变。同时，检测阴性结果也不能完全排除患病的可能。</p>
				<p>线粒体遗传病的诊断比一般遗传病困难更大。第74届欧洲神经肌肉病中心（ENMC）关于线粒体病的专题讨论会就母系遗传的线粒体病达成共识，基因检测对线粒体遗传病的临床应用具有重要的指导意义。</p>
	    	</c:when>
	    	<c:otherwise>
	    		<p>体质现象是人类生命活动的一种重要表现形式，是在先天禀赋和后天获得的基础上所形成的形态结构、生理功能和心理状态方面综合的、相对稳定的固有特质。由于先天禀赋的不同，后天条件的多样性，自然与社会环境的差异，以及疾病、药物等因素的影响，使个体体质具有不同于他人的特征，即体质具有个体差异性。由先天性因素决定的体质属于个体的遗传性特异体质，例如细菌、病毒、寄生虫等病原体感染类疾病的易感性，抵抗性和遗传毒性效应等，这些特异性体质会影响人类的生活方式以及疾病的健康诊治等。首度基因FD-Exome检测，精确解释遗传特异性体质差异，诠释您的与众不同！</p>
	    	</c:otherwise>
	    </c:choose>
    </div>
</div>

<div class="wrap re-wrap">
    <h1 class="big-title big-font">检测结果汇总</h1>
    	<input type="hidden" name="urlType" value="diseaseRiskAndIndividualConstitution"/>
	    <div id="page">
	    	<c:choose>
	    		<%-- 遗传性肿瘤,重大遗传疾病--%>
	    		<c:when test="${scrIllType eq sessionScope.scrIllTypeArray[0] or scrIllType eq sessionScope.scrIllTypeArray[1]}">
	    			<table class="title-garden-table table1" cellspacing="0" cellpadding="0">
						<thead>
							<tr><th><c:if test="${scrIllType ne '其他个体体质' }">疾病名称</c:if><c:if test="${scrIllType eq '其他个体体质' }">类别</c:if></th><th>检测结果</th></tr>
						</thead>
						<tbody>
							<c:forEach items="${result.pageInfo.list }" var="temp">
							   <tr><td><span style="display:none;">${temp.screenName}</span>
							   <c:set var="screenName" value="${temp.screenName }" scope="session"></c:set>
							   <c:choose>
							   	<c:when test='${session.screenName=="慢性进行性外侧眼肌麻痹"||session.screenName=="卒中样发作和线粒体糖尿病伴耳聋" }'>
							   		${temp.screenName}
							   	</c:when>
							   	<c:when test="${temp.scrIllTypeDetail eq temp.screenName }">
							   		${temp.screenName}
							   	</c:when>
							   	<c:when test="${fn:contains(temp.screenName, ',') || temp.screenType eq param.scrIllType || empty temp.scrIll}">
							   		<a href="${ctx }/exome/jbscDet1?testContent=${temp.screenName}" style="text-decoration: underline;">${temp.screenName}</a>
							   	</c:when>
							   	<c:otherwise>
							   		<a href="${ctx }/exome/jbscDet1?testContent=${temp.scrIll}" style="text-decoration: underline;">${temp.scrIll}</a>
							   	</c:otherwise>
							   </c:choose>
							   <%-- ${temp.scrIllTypeDetail eq temp.screenName },${fn:contains(temp.screenName, ',') || temp.screenType eq param.scrIllType},${empty temp.scrIll} --%>
							    </td>
							    <td <c:if test="${temp.screenResult ne '阴性' and temp.screenResult ne '未见线粒体致病性变异'}">style="color:#DC143C;"</c:if> >${temp.screenResult}</td></tr>
						    </c:forEach>
						</tbody>
					</table>
	    		</c:when>
	    		<%--单基因遗传病--%>
	    		<c:when test="${scrIllType eq sessionScope.scrIllTypeArray[2]}">
	    			<table class="title-garden-table table1" cellspacing="0" cellpadding="0">
						<thead>
							<tr><th>疾病分类</th><th>疾病名称</th><th>检测基因</th><th>检测结果</th></tr>
						</thead>
						<tbody>
							<c:forEach items="${result.pageInfo.list }" var="temp">
							   <tr><td>${temp.screenType }</td><td>${temp.screenName }</td><td>${temp.screenGene }</td>
							    <td <c:if test="${temp.screenResult ne '阴性' and temp.screenResult ne '未见线粒体致病性变异'}">style="color:#DC143C;"</c:if> >${temp.screenResult}</td></tr>
						    </c:forEach>
						</tbody>
					</table>
	    		</c:when>
	    		<%--其他遗传性疾病--%>
	    		<c:when test="${scrIllType eq sessionScope.scrIllTypeArray[3]}">
	    			<table class="title-garden-table table1" cellspacing="0" cellpadding="0">
						<thead>
							<tr><th>疾病分类</th><th>疾病名称</th><th>检测结果</th></tr>
						</thead>
						<tbody>
							<c:forEach items="${result.pageInfo.list }" var="temp">
							   <tr><td>${temp.screenType }</td><td><a href="${ctx }/exome/jbscDet1?testContent=${temp.screenName}" style="text-decoration: underline;">${temp.screenName}</a></td>
							    <td <c:if test="${temp.screenResult ne '阴性' and temp.screenResult ne '未见线粒体致病性变异'}">style="color:#DC143C;"</c:if> >${temp.screenResult}</td></tr>
						    </c:forEach>
						</tbody>
					</table>
	    		</c:when>
	    		<%--线粒体遗传疾病--%>
	    		<c:when test="${scrIllType eq sessionScope.scrIllTypeArray[4]}">
	    			<table class="title-garden-table table1" cellspacing="0" cellpadding="0">
						<thead>
							<tr><th>疾病名称</th><th>疾病简称</th><th>检测结果</th></tr>
						</thead>
						<tbody>
							<c:forEach items="${result.pageInfo.list }" var="temp">
							   <tr><td>${temp.screenName }</td>
							   	<td>${temp.mShortName }</td>
							    <td <c:if test="${temp.screenResult ne '阴性' and temp.screenResult ne '未见线粒体致病性变异'}">style="color:#DC143C;"</c:if> >${temp.screenResult}</td></tr>
						    </c:forEach>
						</tbody>
					</table>
	    		</c:when>
	    		<%--个体体质--%>
	    		<c:otherwise>
	    			<table class="title-garden-table table1" cellspacing="0" cellpadding="0">
						<thead>
							<tr><th>类别</th><th>病原体名称</th><th>易患风险（ 低<img src="${ctx }/static/img/admin/reportPrint/pic/low_.png"/>正常<img src="${ctx }/static/img/admin/reportPrint/pic/normal_.png"/> 高<img src="${ctx }/static/img/admin/reportPrint/pic/high_.png"/>）</th></tr>
						</thead>
						<tbody>
					   <c:forEach items="${pageInfo.list }" var="temp">
					        <tr><td>${temp.type}</td>
					        <td><span style="display:none;">${temp.selfName}</span>
					        <form method="post" action="${ctx }/exome/jktzDet" style="display: inline-block;vertical-align: top;">
						<input type="hidden" name="testContent" value="${temp.selfName}">
						<input type="hidden" name="data1" class="data1">
						<input type="hidden" name="data2" class="data2">
						<input type="hidden" name="data3" class="data3">
					    <input type="hidden" name="data4" class="data4">
						<input type="submit" class="value" value="${temp.selfName}"/>
						</form>
					       </td><td>
					       		<c:choose>
									<c:when test="${fn:contains(temp.result, '低')}">
										<img alt="${temp.result }" src="${ctx}/static/img/admin/reportPrint/pic/low.png">
									</c:when>
									<c:when test="${fn:contains(temp.result, '正常')}">
										<img alt="${temp.result }" src="${ctx}/static/img/admin/reportPrint/pic/normal.png">
									</c:when>
									<c:when test="${fn:contains(temp.result, '高') || fn:contains(temp.result, '好') || fn:contains(temp.result, '强')}">
										<img alt="${temp.result }" src="${ctx}/static/img/admin/reportPrint/pic/high.png">
									</c:when>
								</c:choose>
					       </td></tr></c:forEach>
					       </tbody>
					</table>
	    		</c:otherwise>
	    	</c:choose>
			<%@ include file="../common/page.jsp" %>
	    </div>
    <div class="fanhui">
       <a href="${ctx }/exome/showFirst?collInfoid=${collInfo.collInfoId}&urlType=home"><img src="${ctx }/static/img/admin/reportPrint/pic/fanhui.png" onclick="return $('#fanhui').submit();"/></a>
       <div>返回首页</div>
    </div>
</div>
<form method="post" action="${ctx }/exome/showFirst?urlType=home"  id="fanhui" style="display:none;"><input type="text" name="collInfoid" id="collInfoid" value="${collInfo.collInfoId}"></form>
<%@ include file="../common/bottom.jsp"%>
<script src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
<script src="${ctx}/static/javascript/common/base.js"></script>
<script src="${ctx}/static/javascript/services/user.js"></script>
<script src="${ctx}/static/javascript/services/pages.js"></script>
</body>
</html>