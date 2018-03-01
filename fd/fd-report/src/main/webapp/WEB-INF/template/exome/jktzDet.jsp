<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <title></title>
    <link href="${ctx}/static/css/jktzDet.css?rev=@@hash" rel="stylesheet">
</head>
<body>
<div id="nav_id" style="display:none;">${collInfo.collInfoId}</div>
<%@ include file="exome_top.jsp"%>
<div class="jumbotron">
    <h1 class="big-title big-font">${drugName}</h1>
    <div class="acticle">
        <p>${selfTestIntroduce.selfIntroduce }</p>
    </div>
</div>
<div class="wrap re-wrap">
    <h1 class="big-title big-font">检测结果详情</h1>
    <!-- <div class="option">
        <div class="zs">注释：</div><select class="option1">
        <option value="zdnp">@</option>
    </select><div class="option2" >表示该位点检测到基因型，但与已知基因型不匹配</div>
    </div> -->
    <table class="title-garden-table table1" cellspacing="0" cellpadding="0">
		<thead>
			<tr><th>检测基因</th><th>检测位点</th><th>基因型</th><th>易患风险</th></tr>
		</thead>
		<tbody>
    		<c:forEach items="${selfTestDetList }" var="temp">
        		<tr><td><a href="http://www.genecards.org/cgi-bin/carddisp.pl?gene=${temp.gene}" target="_blank" onclick="return (function(){var truthBeTold = window.confirm('你正链接到genecards...');  if(truthBeTold==false){return false;}})()">${temp.gene}</a></td><td class="weidian">${temp.locate}</td><td class="nl">${temp.genetype}</td><td class="nl_a">${temp.risk}</td></tr></c:forEach>
        </tbody>
    </table>
    <div class="table_under"></div>
    <div class="fanhui" onclick="javascript:history.go(-1);">
       <img src="${ctx }/static/img/admin/reportPrint/pic/fanhui.png"/>
       <div>返回上级页面</div>
    </div>
</div>
<%@ include file="../common/bottom.jsp"%>
<script src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
<script src="${ctx}/static/javascript/common/base.js"></script>
<script src="${ctx}/static/javascript/services/user.js"></script>
<script src="${ctx }/static/js/admin/reportPrint/zs.js"></script>
<script>
    $(document).ready(function(){
    var wubianxing_width=$(".wrap .top>div:nth-of-type(1)").outerWidth();
    $(".wrap").css({"background-size":wubianxing_width+'px'});

    
    
    var len=$(".table1 tr").length;
    for(i=2;i<=len;i++){
        str=$(".table1 tr:nth-of-type("+i+") td:nth-of-type(2)").text();
        str_len=str.length;
        str=str.slice(-3,str_len);
        $(".table1 tr:nth-of-type("+i+") td:nth-of-type(2)").text("rs*"+str);
    }
    

    var disease=[],length= 0,rows=1;
    length=$(".table1").find("tr").length;
    for(i=2;i<=length;i++){
    disease.push($(".table1").find("tr:nth-of-type("+i+")").children("td:nth-of-type(1)").text());
    }
    if(length>1){
    	for (var i = length; i > 1; i--) {
            if(i==2){
                border_bottom_none = 2;
            }
            if (disease[i - 3] != disease[i - 2]) {
                border_bottom_none = i;
                break;
            }
        }
    for(i=length-1;i>0;i--){
    if(disease[i]==disease[i-1]){
    $(".table1").find("tr:nth-of-type("+(i+2)+")").children("td:nth-of-type(1)").remove();
    rows++;
    }
    else{
    $(".table1").find("tr:nth-of-type("+(i+2)+")").children("td:nth-of-type(1)").attr({"rowspan":rows});
    rows=1;
    }
    }
    $(".table1").find("tr:nth-of-type(2)").children("td:nth-of-type(1)").attr({"rowspan":rows});
    $(".table1").find("tr:nth-of-type("+border_bottom_none+")").children("td:nth-of-type(1)").css({"border-bottom-left-radius":'9px'});
  }
    
    
var patt = new RegExp('较');
    len=$(".table1 tr").length;
    for(i=2;i<=len;i++){
    	var str = $(".table1 tr:nth-of-type("+i+") td.nl_a").text().trim();
    	if(patt.test(str)){
    		$(".table1 tr:nth-of-type("+i+") td.nl_a").css({"color":"#DC143C"});
    		if($(".table1 tr:nth-of-type("+i+") td:nth-of-type(1) a").length>0){
    			$(".table1 tr:nth-of-type("+i+") td:nth-of-type(1) a").css({"color":"#DC143C"});
    		}else{
    			for(j=i-1;j>=2;j--){
                    if($(".table1 tr:nth-of-type("+j+") td:nth-of-type(1) a").length>0){
                    	$(".table1 tr:nth-of-type("+j+") td:nth-of-type(1) a").css({"color":"#DC143C"});
                        break;
                    }
                }
    		}
    		
        }
    }
    
    $(".fanhui img").click(function(){
        //$("#fanhui").submit();
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