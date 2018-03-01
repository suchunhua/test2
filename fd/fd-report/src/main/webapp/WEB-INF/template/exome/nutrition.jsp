<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <title></title>
    <link href="${ctx}/static/css/nutrition.css?rev=@@hash" rel="stylesheet">
</head>
<body>
<div id="nav_id" style="display:none;">${collInfo.collInfoId}</div>
<%@ include file="exome_top.jsp"%>
<div class="jumbotron">
    <h1 class="big-title big-font big-title-orange">营养代谢能力筛查简介</h1>
    <div class="acticle">
        <p>膳食是影响人体健康最重要的环境因素，膳食因素与各种慢性疾病密切相关。随着人类基因组研究的逐步深入，
        基因多态性（polymorphisms）对膳食因素与疾病关系的影响也越来越清楚。首度基因FD-全外显子检测项目包含有人类饮食中
        常见的各种营养元素合计28种，例如酒精、咖啡因、各种稀有金属元素和各种维生素等代谢及吸收能力的检测，检测结果提示受检者
        根据自身个体化的营养敏感及代谢能力来调整个性化膳食，改善生活方式， 藉此达到预防慢性疾病的发生。</p>
    </div>
</div>
<div class="wrap re-wrap">
    <h1 class="big-title big-font big-title-orange">营养代谢能力汇总</h1>
	<table class="title-garden-table table1" cellspacing="0" cellpadding="0">
		<thead>
			<tr><th>代谢类别</th><th>
				代谢能力/需求量（ 低<img
				src="${ctx }/static/img/admin/reportPrint/pic/low_.png" />正常<img
				src="${ctx }/static/img/admin/reportPrint/pic/normal_.png" /> 高<img
				src="${ctx }/static/img/admin/reportPrint/pic/high_.png" />）
			</th></tr>
		</thead>
		<tbody>
			<c:forEach items="${pageInfo.list }" var="temp">
				<tr>
					<td><span style="display: none;">${temp.category}</span>
						<form method="post" action="${ctx }/exome/yydxDet"
							style="display: inline-block; vertical-align: top;" method="post">
							 <input type="hidden" name="testContent" value="${temp.category}" /> 
							 <input type="hidden" name="data3" class="data3"> 
						 	 <input type="hidden" name="data4" class="data4" /> 
							<input type="submit" value="${temp.category}" />
						</form>
					</td>
					<td>
						<c:choose>
							<c:when test="${fn:contains(temp.comprehensive, '低')}">
								<img alt="${temp.comprehensive }" src="${ctx}/static/img/admin/reportPrint/pic/low.png">
							</c:when>
							<c:when test="${fn:contains(temp.comprehensive, '正常')}">
								<img alt="${temp.comprehensive }" src="${ctx}/static/img/admin/reportPrint/pic/normal.png">
							</c:when>
							<c:when test="${fn:contains(temp.comprehensive, '高')}">
								<img alt="${temp.comprehensive }" src="${ctx}/static/img/admin/reportPrint/pic/high.png">
							</c:when>
						</c:choose>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
    <%@ include file="../common/page.jsp" %>
    
        <!-- 20171109会议决定不要这个提示 <div class="yizu"><div>此表格依据本次检测数据评判，仅供医生参考，具体用药方案请遵医嘱。</div></div> -->
        <div class="fanhui">
       <a href="${ctx }/exome/showFirst?collInfoid=${collInfo.collInfoId}&urlType=home"><img src="${ctx }/static/img/admin/reportPrint/pic/fanhui.png"/></a>
       <div>返回首页</div>
    </div>
</div>
 <form method="post" action="${ctx }/exome/showFirst?urlType=home"  id="fanhui" style="display:none;">
	<input type="text" name="collInfoid" id="collInfoid" value="${collInfo.collInfoId}">
	<input type="submit" value="返回" id="fanhui_aa"/>
	</form>
<%@ include file="../common/bottom.jsp"%>
<script src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
<script src="${ctx}/static/javascript/common/base.js"></script>
<script src="${ctx}/static/javascript/services/user.js"></script>
<script src="${ctx }/static/javascript/services/pages.js"></script>
<script>
$(document).ready(function(){
	$(".option").on("change",".option1",function(){
        var checkValue=$(".option1").val();
        if(checkValue=="single"){
            $(".option2").text("检测位点在检测位点在内含子、启动子或基因间等区域，全外检测不能测到");
        }
        if(checkValue=="constitution"){
            $(".option2").text("检测位点在检测位点在外显子区域，但没有测到");
        }
        if(checkValue=="zdnp"){
            $(".option2").text("该位点检测到基因型，但与已知基因型不匹配");
        }
    });
 $(".fanhui img").click(function(){
    	$("#fanhui_aa").click();
    });
    $(".fanhui").mouseenter(function(){
    	$(".fanhui div").show();
    });
    $(".fanhui").mouseleave(function(){
    	$(".fanhui div").hide();
    });
    });
</script>
</body>
</html>