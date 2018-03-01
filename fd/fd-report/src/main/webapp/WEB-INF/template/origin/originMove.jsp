<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<title>祖源迁徒</title>
<link href="${ctx}/static/css/origin.css?@@rev=hash" rel="stylesheet">
</head>
<body>
	<%@ include file="../exome/exome_top.jsp"%>
    <div class="summary">
	    <c:if test="${collInfo.sex ne '女'}">
    	    <a href="${ctx}/origin/move?urlType=origin&data=father" class="title-btn <c:if test="${ 'father' eq dataType }"> title-btn-active </c:if>">父系祖源分析<span class="triangle"></span></a>
        </c:if>
        <a href="${ctx}/origin/move?urlType=origin&data=mother" class="title-btn <c:if test="${ 'mother' eq dataType }"> title-btn-active </c:if>">母系祖源分析<span class="triangle"></span></a>
        <div class="summary-detail" style="<c:if test="${ 'mother' eq dataType }"> background-image:none; </c:if>">
            <c:if test="${ 'father' eq dataType }"> 
                <h1 class="detail-title">常染色体和X染色体遗传自父母双方，会被重组所打乱，而Y染色体上主干的非重组区呈严格父系遗传，并且Y染色体对漂变非常敏感，容易形成群体特异性多态标记，从而包含更多的关于群体历史的信息。Y染色体的这些特点使其成为研究人类进化和迁徙最强有力的工具之一。<br/>非洲人是人类的大本营，今天，所有人类的Y染色体单倍体类型都能在非洲找到。而非洲以外的居民，他们都是一支出非洲居民的后裔。</h1>
                <p>现代人种通过Y染色体追溯可分为：<br/>黄种基因：N（极北基因）、O（东亚-南亚基因）<br/>棕种基因：C（东北亚-澳洲基因）、D（矮黑人基因）<br/>白种基因：F（斯里兰卡基因）、G（亚美尼亚基因）、<br/>H（印度-斯里兰卡H基因）、I（北欧基因）、<br/>J（阿拉伯-犹太基因）、K（新几内亚K基因）、<br/>L（印度-斯里兰卡L基因）、M（新几内亚M基因）、<br/>R1a（阿尔泰/印欧东支基因）、R1b（西欧/印欧西支基因）<br/>黑人基因：A（东非-南非基因）、RxR1（中非R基因）、B（中非B基因）、ExE3b（非洲基因）<br/>科普特-柏柏尔基因：E3b（东非-北非基因）<br/>印第安基因：Q（美洲基因）</p>
            </c:if>
            <c:if test="${ 'mother' eq dataType }">
                <h1 class="detail-title">线粒体DNA是严格母系遗传，具有高拷贝数，无重组和高突变率等特性，使它成为反映人群母系进化的理想标记，利用线粒体DNA上的突变，研究者们构建了人类线粒体序列的系统进化树，并定义线粒体单倍型和单倍群，通过世界范围内线粒体单倍群的分布就可以描绘出现代人群母系祖先迁徙的路线。<br/>线粒体DNA单倍群用字母A、B、C、CZ、D、E、F、G、H、pre-HV、HV、I、J、pre-JT、 JT、K、L0、L1、L2、L3、L4、L5、L6、M、N、O、P、Q、R、S、T、U、UK、V、W、X、Y和Z来标记。</h1>
                <p>线粒体DNA的支系分布是具有地域特异性的：<br/>非洲大陆特异地单倍群 L 比欧亚人群中发现的类型都要古老。<br/>东亚北方主要由A、C、D4、D5、G、M8、 M9、N9、Z支系组成<br/>东亚南方主要由B4、B5a、F、M7、R9等单倍群组成<br/>其中东亚特异的A、B、R9、N9单倍群属于N分支； C、D、G、M7、M8、M9等单倍群属于M分支。</p>
            </c:if>
            <c:if test="${ 'father' eq dataType }"> <span class="photo-note">世界Y染色体单倍型分布</span> </c:if>
        </div>
    </div>

    <div class="map-summary">
        <h1 class="big-title">
        <c:if test="${ 'father' eq dataType }">祖源迁徒路径</c:if>
        <c:if test="${ 'mother' eq dataType }">祖源迁徙区域分布</c:if>
        </h1>
        <c:if test="${ 'father' eq dataType }"> 
            <span class="guide"><i class="guide-icon"></i>父系祖源迁徙路径</span>
        </c:if>
    </div>

    <c:if test="${ 'mother' eq dataType }">
        <div class="world-map">
            <c:forEach items="${showArea }" var="showArea" varStatus="status">
            	<c:if test="${!empty showArea }">
            		<img src="${ctx}/static/img/map/${showArea }.png" alt="">
            	</c:if>
            </c:forEach>
        </div>
    </c:if>
    
    <c:if test="${ 'father' eq dataType }"> 
    	<c:forEach items="${paths }" var="path" varStatus="status">
    		<c:if test="${status.last }">
	        	<img alt="" src="${ctx }/static/img/map/ypath/${path }.png" class="ypath">
	        </c:if>	
    	</c:forEach>
    </c:if>
    
    <ul class="explain">
        <c:if test="${ 'father' eq dataType }"> 
            <li><h2>Y染色体支系：</h2><span class="green">${originMove.haplogroup}</span><!-- ,属于单倍群<span class="green">O</span>下面的分支</li> -->
            <li><h2>迁徒路径：</h2><span class="line">
			<c:forEach items="${paths }" var="pin" varStatus="stat">
	            <c:if test="${!stat.last }">${pin } → </c:if>
	            <c:if test="${stat.last }">${pin } </c:if>
			</c:forEach>
			</span><span class="line">
				<c:forEach items="${paths }" var="desc" varStatus="stat">
					<c:if test="${stat.first and !empty desc }">从</c:if>
		            <c:if test="${!stat.last and !empty desc }">${desc }到 </c:if>
		            <c:if test="${stat.last and !empty desc }">${desc }</c:if>
				</c:forEach>
			</span></li>
        </c:if>
        <c:if test="${ 'mother' eq dataType }">
            <li><h2>线粒体支系：</h2><span class="green">${originMove.haplogroup}</span><!-- ，属于单倍群<span class="green"> N </span>下面的分支</li> -->
            <li><h2>迁徒路径：</h2><span class="line">${fn:replace(originMove.path, "->", "→")}</span></li>
            <li><h2>区域分布：</h2><span class="line">${fn:substring(originMove.introduce, 0, fn:length(originMove.introduce)-1) }</span></li>
        </c:if>
    </ul>

	<%@ include file="../common/bottom.jsp"%>
	<!--# mergeTo:${ctx}/static/js/originMove.js -->
		<!-- build:js ../../static/js/originMove.js -->
		<script replace="gulp" src="${ctx}/static/plugin/jquery/2.1.4/jquery.min.js"></script>
		<script replace="gulp" src="${ctx}/static/javascript/common/base.js"></script>
		<script replace="gulp" src="${ctx}/static/javascript/services/user.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>