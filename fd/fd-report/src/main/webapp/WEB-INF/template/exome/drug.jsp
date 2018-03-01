<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <title></title>
    <link href="${ctx}/static/css/drug.css?rev=@@hash" rel="stylesheet">
</head>
<body>
<div id="nav_id" style="display:none;">${collInfo.collInfoId}</div>
<%@ include file="exome_top.jsp"%>
<div class="jumbotron">
    <h1 class="big-title big-font">药物风险筛查</h1>
    <div class="acticle">
        <p>“是药三分毒“，药物在治疗疾病的同时，也存在着毒副不良反应。在美国，即使合理使用治疗药物，每年仍有200万以上的住院患者出现严重的不良反应，其中死亡人数约为10万。在上述不良反应中，其中人体遗传基因的多态性占很大一部分原因。</p>
        <p>药物进入人体后，经历吸收、分布、代谢和消除这四个过程后排出体外。进入人体内的药物与其相关药物的转运蛋白、药物代谢酶、药物作用靶点相互作用，完成药物的代谢和动力学过程。因此编码这些代谢酶和靶点蛋白的基因和药物效应密切相关，称为“药物相关基因“。这些药物相关基因发生变异，如缺失、点突变或启动子改变等，就可以引起药物代谢酶、药物作用靶点和药物转运蛋白发生药物反应的遗传差异，从而导致药物在机体内的代谢和药效发生改变，影响药物的治疗效果，甚至产生严重的不良反应，这就是机体多态性造成的药物反应个体差异。</p>
        <p>首度基因的FD-全外显子检测项目包含有20大类合计100多种常用药物的药物相关基因的多态性检测，这些结果可以提示受检者使用某种药物的敏感性和毒副反应。将来受检者进行各种疾病治疗时，医生可以根据本报告所提供的受检者药物敏感性结果来确定更加合理给药方案，从而达到最佳的治疗效果，同时从根本上预防药物不良反应的发生。</p>
    </div>
</div>
<div class="wrap re-wrap">
    <h1 class="big-title big-font">药物风险汇总</h1>
    <div class="option">
        <select class="option0 white-box">
         <option <c:if test="${'' eq param.druType }">selected</c:if> value="">汇总</option>
            <option <c:if test="${'敏感性较高和毒副作用较低的药物' eq param.druType }">selected</c:if> value="敏感性较高和毒副作用较低的药物">敏感性较高和毒副作用较低的药物</option>
            <option <c:if test="${'敏感性较低和毒副作用较高的药物' eq param.druType }">selected</c:if> value="敏感性较低和毒副作用较高的药物">敏感性较低和毒副作用较高的药物</option>
            <option <c:if test="${'敏感性较高和无毒副作用指导的药物' eq param.druType }">selected</c:if> value="敏感性较高和无毒副作用指导的药物">敏感性较高和无毒副作用指导的药物</option>
            <option <c:if test="${'无敏感性指导和毒副作用较高的药物' eq param.druType }">selected</c:if> value="无敏感性指导和毒副作用较高的药物">无敏感性指导和毒副作用较高的药物</option>
            <option <c:if test="${'其他类' eq param.druType }">selected</c:if> value="其他类">其他类</option>
        </select>
        <div class="option12">
             <div class="zs">注释：</div>
             <select class="option1 white-box">
	            <option value="tumour">*</option>
	            <option value="illness">#</option>
	            <option value="single">^</option>
	            <option value="constitution">-</option>
	            <option value="zdnp">@</option>
	        </select>
	        <div class="option2" >没有3级以上的相关资料，不进行临床指导</div>
        </div>
    </div>
    <table class="title-garden-table table1" cellspacing="0" cellpadding="0">
		<thead>
			<tr><th>适应症</th><th>药物通用名</th><th>药物敏感性（ 低<img src="${ctx }/static/img/admin/reportPrint/pic/low_.png"/>中<img src="${ctx }/static/img/admin/reportPrint/pic/normal_.png"/> 高<img src="${ctx }/static/img/admin/reportPrint/pic/high_.png"/>）</th><th>毒副反应风险（ 低<img src="${ctx }/static/img/admin/reportPrint/pic/low_.png"/> 中<img src="${ctx }/static/img/admin/reportPrint/pic/normal_.png"/> 高<img src="${ctx }/static/img/admin/reportPrint/pic/high_.png"/>）</th></tr>
		</thead>
		<tbody>
	        <c:forEach items="${pageInfo.list }" var="temp">
		    <td><span style="display:none;">${temp.indication}</span>
		    <form method="post" action="${ctx }/exome/dxjgDet1" style="display: inline-block;vertical-align: top;">
			<input type="hidden" name="testContent1"  value="${temp.indication}">
			<input type="hidden" name="data1" class="data1"  value="${param.druType }">
			   <input type="hidden" name="pageNum" class="data3" value="${pageInfo.pageNum }">
			<input type="submit" class="value" value="${temp.indication}"/>
			</form>
		    </td>
		     <td class="weidian"><span style="display:none;">${temp.drug}</span>
		       <form method="post" action="${ctx }/exome/dxjgDet2" style="display: inline-block;vertical-align: top;">
				<input type="hidden" name="testContent1"  value="${temp.indication}" >
				<input type="hidden" name="testContent2"  value="${temp.drug}" >
				 <input type="hidden" name="data1" class="data1" value="${param.druType }">
				   <input type="hidden" name="pageNum" class="data3" value="${pageInfo.pageNum }">
				<input type="submit" class="value" value="${temp.drug}"/>
				</form>
		       </td>
		       <td class="nl">
		       		<c:choose>
						<c:when test="${fn:contains(temp.sensitivity, '低') || fn:contains(temp.sensitivity, '较低')}">
							<img alt="${temp.sensitivity}" src="${ctx}/static/img/admin/reportPrint/pic/low.png">
						</c:when>
						<c:when test="${fn:contains(temp.sensitivity, '中等')}">
							<img alt="${temp.sensitivity}" src="${ctx}/static/img/admin/reportPrint/pic/normal.png">
						</c:when>
						<c:when test="${fn:contains(temp.sensitivity, '高') || fn:contains(temp.sensitivity, '好') || fn:contains(temp.sensitivity, '强') || fn:contains(temp.sensitivity, '较高')}">
							<img alt="${temp.sensitivity}" src="${ctx}/static/img/admin/reportPrint/pic/high.png">
						</c:when>
						<c:otherwise>
							${temp.sensitivity}
						</c:otherwise>
					</c:choose>
		       </td>
		       <td>
		       		<c:choose>
						<c:when test="${fn:contains(temp.virulence, '低') || fn:contains(temp.sensitivity, '低')}">
							<img alt="${temp.virulence}" src="${ctx}/static/img/admin/reportPrint/pic/low.png">
						</c:when>
						<c:when test="${fn:contains(temp.virulence, '中') || fn:contains(temp.sensitivity, '中')}">
							<img alt="${temp.virulence}" src="${ctx}/static/img/admin/reportPrint/pic/normal.png">
						</c:when>
						<c:when test="${fn:contains(temp.virulence, '高') || fn:contains(temp.virulence, '好') || fn:contains(temp.virulence, '强') || fn:contains(temp.sensitivity, '高')}">
							<img alt="${temp.virulence}" src="${ctx}/static/img/admin/reportPrint/pic/high.png">
						</c:when>
						<c:otherwise>
							${temp.sensitivity}
						</c:otherwise>
					</c:choose>
		       </td></tr>
		     </c:forEach>
	     </tbody>
	</table>
    <%@ include file="../common/page.jsp" %>
        <div class="yizu"><div>此表格依据本次检测数据评判，仅供医生参考，具体用药方案请遵医嘱。</div></div>
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
	
	 $("table").each(function(){
         var disease=[],length= 0,rows=1;
         length=$(this).find("tr").length;
         for(i=2;i<=length;i++){
             disease.push($(this).find("tr:nth-of-type("+i+")").children("td:nth-of-type(1)").text());
         }
         if(length>1){
             for(i=length-2;i>0;i--){
                 if(disease[i]==disease[i-1]){
                     $(this).find("tr:nth-of-type("+(i+2)+")").children("td:nth-of-type(1)").remove();
                     rows++;
                 }
                 else{
                     $(this).find("tr:nth-of-type("+(i+2)+")").children("td:nth-of-type(1)").attr({"rowspan":rows});
                     rows=1;
                 }
             }
             $(this).find("tr:nth-of-type(2)").children("td:nth-of-type(1)").attr({"rowspan":rows});
         }
         for(i=length;i>0;i--){
         	if($(this).find("tr:nth-of-type("+i+")").children("td").length==4){
         		$(this).find("tr:nth-of-type("+i+")").children("td:nth-of-type(1)").css({"border-bottom-left-radius":"9px"});
         		break;
         	}else{
         		$(this).find("tr:nth-of-type("+i+")").children("td:nth-of-type(1)").css({"border-bottom-left-radius":"0"});
         	}
         }
         for(i=2;i<=length;i++){
 	        if($(this).find("tr:nth-of-type("+i+")").children("td").length==4){
 	            $(this).find("tr:nth-of-type("+i+")").children("td:nth-of-type(2)").css({"border-left":"1px solid #d4d5d8"});
 	        }
 	    }
     });
	
    $(".option0").change(function(event) {
        var druType = $(this).find("option:selected").val();
        window.location.href = base.getUrlParam("druType") != null ? base
                .replaceParamVal(window.location.href, "druType", druType)
                : base.urlUpdateParams(window.location.href, "druType", druType);
    });

	$(".option1").change(function(event) {
        var checkValue=$(".option1").val();
        if(checkValue=="tumour"){
            $(".option2").text("没有3级以上的相关资料，不进行临床指导");
        }
        if(checkValue=="illness"){
            $(".option2").text("经各位点判定，结果不一致，不进行临床指导");
        }
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