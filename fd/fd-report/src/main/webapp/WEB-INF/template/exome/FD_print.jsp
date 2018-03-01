<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>FD-180</title>
    <link href="${ctx }/static/css/admin/reportPrint/tumour_base.css" rel="stylesheet"> 
    <style>
        #ude1 p,#ude1 span,#ude1 pre{font-size:100% !important;line-height:2em !important;}
        #ude1{margin:auto;width: 1300px;}
        .analysis table tr:nth-last-of-type(1) td,.analysis table tr:nth-last-of-type(2) td,
        .analysis table tr:nth-last-of-type(3) td,.analysis table tr:nth-last-of-type(4) td,
        .analysis table tr:nth-last-of-type(5) td{text-align:left;height:34px;padding-left:10px;}
        #ude2 p,#ude2 span,#ude2 pre{font-size:100% !important;line-height:2em !important;}
        #ude2{margin:auto;width: 1300px;}
        .catalogue_{width:1200px;}
</style>
</head>
<body>
<div style="padding:680px 180px 1px 800px;" class="catalogue_mulu">
    <div style="font-size: 260%;font-weight: bold;color: #DC143C;">目<span style="margin-left: 20px;">录</span></div>
    <hr style="box-shadow: 3px 7px 1px #C0C0C0;border: 2px solid #DC143C;width:580px;">
    <a href="#basic_information"><div class="indexing"><img src="${ctx }/static/img/admin/reportPrint/pic/book.png"><span>基本信息</span><span class="pages_number basic_information_mulu">0</span></div></a>
    <a href="#gather"><div class="indexing"><img src="${ctx }/static/img/admin/reportPrint/pic/book.png"><span>检测结果汇总</span><span class="pages_number gather_mulu">0</span></div></a>
    <a href="#target"><div class="indexing"><img src="${ctx }/static/img/admin/reportPrint/pic/book.png"><span>靶向用药提示</span><span class="pages_number target_mulu">0</span></div></a>
    <a href="#fda"><div class="indexing"><img src="${ctx }/static/img/admin/reportPrint/pic/book.png"><span>CFDA/FDA批准用于${collInfo.ill}药物</span><span class="pages_number fda_mulu">0</span></div></a>
    <a href="#chemotherapy"><div class="indexing"><img src="${ctx }/static/img/admin/reportPrint/pic/book.png"><span>化疗用药提示</span><span class="pages_number chemotherapy_mulu">0</span></div></a>
    <a href="#variation"><div class="indexing"><img src="${ctx }/static/img/admin/reportPrint/pic/book.png"><span>变异汇总</span><span class="pages_number variation_mulu">0</span></div></a>
    <s:set name="varName" value="#request.varDrugResult.varName" scope="session"></s:set>
	<s:if test='#session.varName!=""'>
    <a href="#soma"><div class="indexing"><img src="${ctx }/static/img/admin/reportPrint/pic/book.png"><span>重要体细胞变异与用药解析</span><span class="pages_number soma_mulu">0</span></div></a></s:if>
    <a href="#susceptibility"><div class="indexing"><img src="${ctx }/static/img/admin/reportPrint/pic/book.png"><span>遗传易感基因变异解析</span><span class="pages_number susceptibility_mulu">0</span></div></a>
    <a href="#high_frequency"><div class="indexing"><img src="${ctx }/static/img/admin/reportPrint/pic/book.png"><span>高频突变基因列表</span><span class="pages_number high_frequency_mulu">0</span></div></a>
    <a href="#peculiar"><div class="indexing"><img src="${ctx }/static/img/admin/reportPrint/pic/book.png"><span>患者特异性胚细胞基因变异列表</span><span class="pages_number peculiar_mulu">0</span></div></a>
    <a href="#chemical_drug"><div class="indexing"><img src="${ctx }/static/img/admin/reportPrint/pic/book.png"><span>化药相关位点检测</span><span class="pages_number chemical_drug_mulu">0</span></div></a>
     <s:if test='pathwayList1.size()!=0'>
    <a href="#bx"><div class="indexing"><img src="${ctx }/static/img/admin/reportPrint/pic/book.png"><span>靶向突变基因信号通路解析</span><span class="pages_number bx_mulu">0</span></div></a></s:if>
    <a href="#appendix4_1"><div class="indexing"><img src="${ctx }/static/img/admin/reportPrint/pic/book.png"><span>附录&nbsp;FD-180检测panel简介</span><span class="pages_number appendix_mulu">0</span></div></a>
</div>
<div style="padding-top: 20px;" class="honorific">
    <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
    <input type="hidden" name="collInfoId" id="collInfoId" value="${collInfo.collInfoId}" />
    <div style="width: 1200px;margin:34px auto 0;line-height: 2.5em;font-size:100%;">尊敬的<span style="text-decoration: underline;">&nbsp&nbsp${collInfo.patient}&nbsp&nbsp</span> <s:set name="sex" value="#request.collInfo.sex" scope="session"></s:set>
    <s:if test='#session.sex=="男"'>先生：</s:if><s:if test='#session.sex=="女"'>女士：</s:if></div>
    <div class="mainbody">您好！</div>
    <div class="mainbody">我们已经对您的送检样本完成了全部检测。感谢您对首度基因的关注与信赖！希望我们的检测结果能对您的治疗有所帮助！</div>
    <div class="mainbody">首度基因自主开发的FD-180基因测序项目，是基于高通量测序平台，采用目标区域捕获技术，可一次性平行检测约180个癌症相关基因的全外显子，并通过比对分析得到基因的点突变、插入、缺失、拷贝数变化、结构变异等多种信息。FD-180旨在通过精确捕捉癌症患者的基因变异信息，结合肿瘤基因组学、药物基因组学、以及现阶段最新临床研究成果，全面绘制患者特异性癌症基因变异频谱，针对重要变异位点进行详细解读，并且推荐相关临床用药。</div>
    <div class="mainbody">在此特别提醒您注意，由于技术发展的局限性、个体之间存在的生物学差异，以及您的检测项目并未涵盖所有的检测层面等多种原因，我们的评估结论和用药建议仅针对您申请表上的检测内容和本次检测样本得出，其中，用药建议来源于最新的研究报道，仅供参考，具体治疗方案请您遵从医嘱。</div>
    <div class="mainbody">若您对检测结果有任何疑问，请于收到报告7个工作日内与我们联系。同时可将您的宝贵意见或建议及时反馈给我们。我们的服务电话是0512-6298-7012（周一至周五，9:00--17:30），我们将竭诚为您服务！</div>
    <div style="margin: 150px 0 100px 1150px;font-family: sans-serif;font-size: 150%;">首度基因</div>
    <div class="footer">地址：苏州市工业园区星湖街218号生物纳米园B8栋5楼</div>
    <div class="footer">电话：0512-6298-7012</div>
    <div class="footer">网址：www.shoudujiyin.com</div>
</div>
<div class="basic_information" id="basic_information">
    <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
    <div class="catalogue_"><img src="${ctx }/static/img/admin/reportPrint/pic/4-1-1.png"  class="catalogue"><h1 style="color:rgb(247,150,70);">基本信息</h1></div>
     <table cellspacing="0" style="table-layout:fixed;" class="first">
     <tr><td style="word-break:break-all;width:670px;">文库编号：<span style="font-weight: normal;">${collInfo.bookCodeTemp}</span></td><td style="word-break:break-all;width:610px;">送检单位：<span style="font-weight: normal;">${collInfo.sendCom}</span></td></tr>
     </table>
     <table cellspacing="0" style="table-layout:fixed;" class="second">
        <tr><td>姓名：<span style="font-weight: normal;">${collInfo.patient}</span></td><td>性别：<span style="font-weight: normal;">${collInfo.sex}</span></td><td>年龄：<span style="font-weight: normal;">${collInfo.age}</span></td></tr>
        <tr><td style="word-break:break-all;">肿瘤类型：<span style="font-weight: normal;" title="${testIll1}">${testIll1}</span></td><td>TNM分期：<span style="font-weight: normal;">${collInfo.stage}</span></td><td>肿瘤状态：<span style="font-weight: normal;">${collInfo.orig}</span></td></tr>
        <tr><td colspan="3">临床诊断：<span style="font-weight: normal;">${collInfo.judge}</span></td></tr>
        <tr><td colspan="3">个人病史及药物史：<span style="font-weight: normal;">${collInfo.otherIll}</span></td></tr>
        <tr><td colspan="3">家族史：<span style="font-weight: normal;">${collInfo.family}</span></td></tr>
    </table>
    <table cellspacing="0" class="third">
        <tr><td>样本类型：<span style="font-weight: normal;">${collInfo.sampTypeTemp}</span></td><td>检测项目：<span style="font-weight: normal;">${collInfo.testTypeTemp}</span></td></tr>
        <tr><td colspan="2">检测技术：<span style="font-weight: normal;">${collInfo.testProInfoTestSkill}</span></td></tr>
        <tr><td colspan="2">测序平台：<span style="font-weight: normal;">${collInfo.flat}</span></td></tr>
        <tr><td >测序数据量：<span style="font-weight: normal;">${comSize.data_sizeTemp}</span></td><td>平均测序深度：<span style="font-weight: normal;">${comSize.depthTemp}X</span></td></tr>
        <tr><td >覆盖度：<span style="font-weight: normal;">${comSize.coverageTemp}</span></td><td>Q30：<span style="font-weight: normal;">&gt;${comSize.q30Temp}</span></td></tr>
    </table>
    <div style="width: 1300px;margin:auto;font-size:80%;margin-top:50px;">注： 基因检测结果准确性受样本核酸质量的影响巨大。您此次送检 FFPE 样本质控结果为<span style="text-decoration: underline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>类。</div>
    <div style="width: 1300px;margin:auto;font-size:80%;font-weight:bold;margin-top:30px;">FFPE 样本 DNA 质控分类：</div>
    <table cellspacing="0" class="forth">
        <tr><td>类别</td><td>总量(ng)</td><td>主带长度(bp)</td><td>肿瘤细胞占比</td><td>结论</td><td>检测结果可信度</td></tr>
        <tr><td>A</td><td>≥550</td><td>≥2000</td><td>≥20%</td><td>满足 2 次或 2 次以上建库需求</td><td>检测结果可靠</td></tr>
        <tr><td>B</td><td>300~550</td><td>1000~2000</td><td>≥20%</td><td>满足 1 次但不足 2 次建库需求</td><td>检测结果可靠</td></tr>
        <tr><td>C</td><td colspan="3">除 A, B, D 类以外的类别</td><td>可风险建库，但不保证测序质量</td><td style="color: red;">检测结果不可靠</td></tr>
        <tr><td>D</td><td>＜50</td><td>＜300</td><td>＜5%</td><td>不满足建库需求</td><td style="color: red;">检测结果极不可靠</td></tr>
    </table>
</div>
<div class="gather" id="gather" style="position:relative;">
    <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
    <div class="catalogue_"><img src="${ctx }/static/img/admin/reportPrint/pic/5_1_1.png"  class="catalogue"><h1 style="color:rgb(247,150,70);">检测结果汇总</h1></div>
    <table cellspacing="0">
       <tr><td>此样本检测包含约180个癌症相关基因的全外显子，</td></tr>
       <tr><td>共检出致病性变异（somatic variation）<span style="text-decoration: underline;">&nbsp${testResultSum.testnum1}&nbsp</span>个，遗传易感基因变异（germline variation）<span style="text-decoration: underline;">&nbsp${testResultSum.testnum2}&nbsp</span>个；</td></tr>
       <tr><td>其中，<span style="text-decoration: underline;">&nbsp${testResultSum.testnum3}&nbsp</span>个基因变异有用药提示，共涉及<span style="text-decoration: underline;">&nbsp${testResultSum.testnum4}&nbsp</span>种上市靶向药物，<span style="text-decoration: underline;">&nbsp${testResultSum.testnum5}&nbsp</span>种临床试验期药物。</td></tr>
       <tr><td>FDA/CFDA治疗<span style="text-decoration: underline;">&nbsp${collInfo.ill}&nbsp</span>的药物总共有<span style="text-decoration: underline;">&nbsp${testResultSum.testnum7}&nbsp</span>种，根据本次基因检测结果，<span style="text-decoration: underline;">&nbsp${testResultSum.testnum8}&nbsp</span>种药物推荐使用，</td></tr>
       <tr><td><span style="text-decoration: underline;">&nbsp${testResultSum.testnum9}&nbsp</span>种药物不推荐使用，<span style="text-decoration: underline;">&nbsp${testResultSum.testnum10}&nbsp</span>种药物需加测后指导，<span style="text-decoration: underline;">&nbsp${testResultSum.testnum11}&nbsp</span>种药物可选择使用，另外根据本次基</td></tr>
       <tr><td>因检测结果给您推荐了<span style="text-decoration: underline;">&nbsp${testResultSum.testnum12}&nbsp</span>种联合用药的治疗方案。</td></tr>
       <tr><td>本次检测化药相关位点 <span style="text-decoration: underline;">&nbsp85&nbsp</span>个，涉及化疗药物/疗法<span style="text-decoration: underline;">&nbsp30&nbsp</span>个。</td></tr>
       <tr><td>具体药物信息详见“<span style="color:rgb(155,187,89);font-weight:bold;">靶向/化疗用药提示</span>”部分，基因变异信息参见“<span style="color:rgb(75,172,198);font-weight:bold;">变异汇总</span>”部分。</td></tr>
    </table>
</div>
<div class="target" id="target">
    <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
    <div class="catalogue_"><img src="${ctx }/static/img/admin/reportPrint/pic/7_1_1.png"  class="catalogue"><h1 style="color:rgb(155,187,89);">靶向用药提示</h1></div>
    <div style="width: 1300px;margin:auto;line-height:2.5em;">${remark.remark1}</div>
    <div style="width: 1300px;margin:auto;line-height:2.5em;">具体${collInfo.ill}临床用药请参照下页‘CFDA/FDA批准用于${collInfo.ill}药物’表格。</div>
     <table cellspacing="0" class="target1" id="target1">    
        <tr><td>基因变异类型</td><td><div>FDA批准药物</div><div>（患者肿瘤类型）</div></td><td><div>FDA批准药物</div><div>（其它肿瘤/靶点）</div></td><td>临床试验期药物</td></tr>   
         <s:if test="drugUseList.size()!=0"> 
        <c:forEach items="${drugUseList }" var="temp">
        <tr><td rowspan="2">${temp.genVarType}</td><td>${temp.FDAAllowDrug1}</td><td>${temp.FDAAllowDrug2}</td><td rowspan="2">${temp.clinicalTryDrug}</td></tr> 
         <tr><td style="font-weight:normal;text-align:center;">${temp.FDAAllowDrug3}</td><td style="border-right: 2px solid rgb(194,214,155) !important;">${temp.FDAAllowDrug4}</td></tr>         
        </c:forEach></s:if>
        <s:else> <tr><td rowspan="2">--</td><td>--</td><td>--</td><td rowspan="2">--</td></tr> 
         <tr><td style="font-weight:normal;text-align:center;">--</td><td style="border-right: 2px solid rgb(194,214,155) !important;">--</td></tr></s:else>
        <!-- <tr><td colspan="4" style="font-size:25px;">此表格提示药物依据：明确临床试验结果/少数病例/部分体外试验/动物肿瘤模型；<div>以上结果仅供医生参考，具体用药方案请遵从医嘱。</div></td></tr>  -->
    </table>
    <div style="width: 1300px;margin:auto;text-indent:2em;line-height:2.5em;">${remark.remark2}</div>
    <table cellspacing="0" style="margin-top:40px;" class="target2">   
    </table>
  <script src="${ctx }/static/js/admin/reportPrint/jQuery.js"></script>
<script>

  $(document).ready(function(){
//自动获取开始
var target2=document.getElementsByClassName("target2")[0];
var target1=document.getElementsByClassName("target1")[0];
var target3=document.getElementsByClassName("target3")[0];
var aa_length=document.getElementsByClassName("target2")[0].rows.length;
var bb_length=document.getElementsByClassName("target1")[0].rows.length;
var cc_length=document.getElementsByClassName("target3")[0].rows.length;
var flag_annotation=1;
for(var i=2;i<=bb_length;i++){
    if (cc_length==0){break;}
    if(i%2==0){
        var bb_suzhu1=target1.rows[i-1].cells[1].innerText.toString();
        if(bb_suzhu1!=""){
            var bb_suzhu=bb_suzhu1.trim().split(/、|\(|\)|\（|\）|\,|\，|\s|与/);
        }else{
            var bb_suzhu=bb_suzhu1;
        }
        var bb_suzhu_length=bb_suzhu.length;
        for(var j=1;j<=cc_length;j++) {
            var cc_zh1 = target3.rows[j-1].cells[0].innerText;
            var cc_zh = cc_zh1.trim().split(/\（/)[0];
            for (k = 0; k < bb_suzhu_length; k++) {
                if (cc_zh==bb_suzhu[k]) {
                    if(flag_annotation==1){
                        var newtr=document.createElement("tr");
                        var newtd=document.createElement("td");
                        newtd.setAttribute("colspan","3");
                        newtd.style.backgroundColor="rgb(214,227,188)";
                        var newspan1=document.createElement("span");
                        newspan1.style.fontWeight="bold";
                        var myText = document.createTextNode("注释：");
                        newspan1.appendChild(myText);
                        newtd.appendChild(newspan1);

                        var myText = document.createTextNode("上表所述基因变异详见“");
                        newtd.appendChild(myText);

                        var newspan1=document.createElement("span");
                        newspan1.style.color="rgb(75,172,198)";
                        newspan1.style.fontWeight="bold";
                        var myText = document.createTextNode("变异汇总");
                        newspan1.appendChild(myText);
                        newtd.appendChild(newspan1);

                        var myText = document.createTextNode("”部分；靶向药物解析详情、更多临床试验期药物详见“");
                        newtd.appendChild(myText);

                        var newspan1=document.createElement("span");
                        newspan1.style.color="rgb(75,172,198)";
                        newspan1.style.fontWeight="bold";
                        var myText = document.createTextNode("重要体细胞变异与用药解析");
                        newspan1.appendChild(myText);
                        newtd.appendChild(newspan1);

                        var myText = document.createTextNode("”部分。");
                        newtd.appendChild(myText);
                        newtr.appendChild(newtd);
                        document.getElementsByClassName("target2")[0].appendChild(newtr);
                        $(".target .target2").css({"border":"2px solid rgb(194,214,155)"});
                        flag_annotation=0;
                    }
                    var newtr=document.createElement("tr");
                    var newtd=document.createElement("td");
                    var newspan1=document.createElement("span");
                    newspan1.style.fontWeight="bold";
                    var myText = document.createTextNode("药物名称：");
                    newspan1.appendChild(myText);
                    newtd.appendChild(newspan1);
                    var newspan1=document.createElement("span");
                    newtd.appendChild(newspan1);
                    newtr.appendChild(newtd);

                    var newtd=document.createElement("td");
                    var newspan1=document.createElement("span");
                    newspan1.style.fontWeight="bold";
                    var myText = document.createTextNode("商品名：");
                    newspan1.appendChild(myText);
                    newtd.appendChild(newspan1);
                    var newspan1=document.createElement("span");
                    newtd.appendChild(newspan1);
                    newtr.appendChild(newtd);

                    var newtd=document.createElement("td");
                    var newspan1=document.createElement("span");
                    newspan1.style.fontWeight="bold";
                    var myText = document.createTextNode("推荐购买地：");
                    newspan1.appendChild(myText);
                    newtd.appendChild(newspan1);
                    var newspan1=document.createElement("span");
                    newtd.appendChild(newspan1);
                    newtr.appendChild(newtd);

                    document.getElementsByClassName("target2")[0].appendChild(newtr);

                    var newtr=document.createElement("tr");
                    var newtd=document.createElement("td");
                    newtd.setAttribute("colspan","3");
                    var newspan1=document.createElement("span");
                    newspan1.style.fontWeight="bold";
                    var myText = document.createTextNode("FDA批准适应症：");
                    newspan1.appendChild(myText);
                    newtd.appendChild(newspan1);
                    var newspan1=document.createElement("span");
                    newtd.appendChild(newspan1);
                    newtr.appendChild(newtd);

                    document.getElementsByClassName("target2")[0].appendChild(newtr);

                    var target2=document.getElementsByClassName("target2")[0];
                    var target3=document.getElementsByClassName("target3")[0];
                    var target2_tr_length=target2.rows.length;
                    target2.rows[target2_tr_length-2].cells[0].getElementsByTagName("span")[1].innerText=target3.rows[j-1].cells[0].innerText;
                    target2.rows[target2_tr_length-2].cells[1].getElementsByTagName("span")[1].innerText=target3.rows[j-1].cells[1].innerText;
                    target2.rows[target2_tr_length-2].cells[2].getElementsByTagName("span")[1].innerText=target3.rows[j-1].cells[2].innerText;
                    target2.rows[target2_tr_length-1].cells[0].getElementsByTagName("span")[1].innerText=target3.rows[j-1].cells[3].innerText;
                }
            }
        }
        var bb_suzhu1=target1.rows[i-1].cells[2].innerText.toString();
        if(bb_suzhu1!=""){
            var bb_suzhu=bb_suzhu1.trim().split(/、|\(|\)|\（|\）|\,|\，|\s|与/);
        }else{
            var bb_suzhu=bb_suzhu1;
        }
        var bb_suzhu_length=bb_suzhu.length;
        for(var j=1;j<=cc_length;j++) {
            var target2=document.getElementsByClassName("target2")[0];
            var target3=document.getElementsByClassName("target3")[0];
            var cc_zh1 = target3.rows[j-1].cells[0].innerText;
            var cc_zh = cc_zh1.trim().split(/\（/)[0];
            for (k = 0; k < bb_suzhu_length; k++) {
                if (cc_zh==bb_suzhu[k]) {
                    if(flag_annotation==1){
                        var newtr=document.createElement("tr");
                        var newtd=document.createElement("td");
                        newtd.setAttribute("colspan","3");
                        newtd.style.backgroundColor="rgb(214,227,188)";
                        var newspan1=document.createElement("span");
                        newspan1.style.fontWeight="bold";
                        var myText = document.createTextNode("注释：");
                        newspan1.appendChild(myText);
                        newtd.appendChild(newspan1);

                        var myText = document.createTextNode("上表所述基因变异详见“");
                        newtd.appendChild(myText);

                        var newspan1=document.createElement("span");
                        newspan1.style.color="rgb(75,172,198)";
                        newspan1.style.fontWeight="bold";
                        var myText = document.createTextNode("变异汇总");
                        newspan1.appendChild(myText);
                        newtd.appendChild(newspan1);

                        var myText = document.createTextNode("”部分；靶向药物解析详情、更多临床试验期药物详见“");
                        newtd.appendChild(myText);

                        var newspan1=document.createElement("span");
                        newspan1.style.color="rgb(75,172,198)";
                        newspan1.style.fontWeight="bold";
                        var myText = document.createTextNode("重要体细胞变异与用药解析");
                        newspan1.appendChild(myText);
                        newtd.appendChild(newspan1);

                        var myText = document.createTextNode("”部分。");
                        newtd.appendChild(myText);
                        newtr.appendChild(newtd);
                        document.getElementsByClassName("target2")[0].appendChild(newtr);
                        $(".target .target2").css({"border":"2px solid rgb(194,214,155)"});
                        flag_annotation=0;
                    }
                    var newtr=document.createElement("tr");
                    var newtd=document.createElement("td");
                    var newspan1=document.createElement("span");
                    newspan1.style.fontWeight="bold";
                    var myText = document.createTextNode("药物名称：");
                    newspan1.appendChild(myText);
                    newtd.appendChild(newspan1);
                    var newspan1=document.createElement("span");
                    newtd.appendChild(newspan1);
                    newtr.appendChild(newtd);

                    var newtd=document.createElement("td");
                    var newspan1=document.createElement("span");
                    newspan1.style.fontWeight="bold";
                    var myText = document.createTextNode("商品名：");
                    newspan1.appendChild(myText);
                    newtd.appendChild(newspan1);
                    var newspan1=document.createElement("span");
                    newtd.appendChild(newspan1);
                    newtr.appendChild(newtd);

                    var newtd=document.createElement("td");
                    var newspan1=document.createElement("span");
                    newspan1.style.fontWeight="bold";
                    var myText = document.createTextNode("推荐购买地：");
                    newspan1.appendChild(myText);
                    newtd.appendChild(newspan1);
                    var newspan1=document.createElement("span");
                    newtd.appendChild(newspan1);
                    newtr.appendChild(newtd);

                    document.getElementsByClassName("target2")[0].appendChild(newtr);

                    var newtr=document.createElement("tr");
                    var newtd=document.createElement("td");
                    newtd.setAttribute("colspan","3");
                    var newspan1=document.createElement("span");
                    newspan1.style.fontWeight="bold";
                    var myText = document.createTextNode("FDA批准适应症：");
                    newspan1.appendChild(myText);
                    newtd.appendChild(newspan1);
                    var newspan1=document.createElement("span");
                    newtd.appendChild(newspan1);
                    newtr.appendChild(newtd);

                    document.getElementsByClassName("target2")[0].appendChild(newtr);

                    var target2=document.getElementsByClassName("target2")[0];
                    var target3=document.getElementsByClassName("target3")[0];
                    var target2_tr_length=target2.rows.length;
                    target2.rows[target2_tr_length-2].cells[0].getElementsByTagName("span")[1].innerText=target3.rows[j-1].cells[0].innerText;
                    target2.rows[target2_tr_length-2].cells[1].getElementsByTagName("span")[1].innerText=target3.rows[j-1].cells[1].innerText;
                    target2.rows[target2_tr_length-2].cells[2].getElementsByTagName("span")[1].innerText=target3.rows[j-1].cells[2].innerText;
                    target2.rows[target2_tr_length-1].cells[0].getElementsByTagName("span")[1].innerText=target3.rows[j-1].cells[3].innerText;
                }
            }
        }
    }
}
//自动获取结束


String.prototype.trim=function() {
    return this.replace(/(^\s*)|(\s*$)/g,'');
};
var target1=document.getElementsByClassName("target1")[0];
len=target1.rows.length;
len1=len;
flag=0;
len2=2;
for(var i=len1-1;i>=len2-1;i=i-2){
    if((target1.rows[i-1].cells[1].innerText.trim()=="")&&(target1.rows[i-1].cells[2].innerText.trim()=="")){
        target1.rows[i-1].cells[1].innerText=target1.rows[i].cells[0].innerText;
        target1.rows[i-1].cells[2].innerText=target1.rows[i].cells[1].innerText;
        target1.rows[i].style.display="none";
        target1.rows[i-1].cells[0].rowSpan = 1;
        target1.rows[i-1].cells[3].rowSpan = 1;
        flag=1;
    }else{
        if((target1.rows[i-1].cells[1].innerText.trim()=="")&&(target1.rows[i].cells[1].innerText.trim()=="")){
            target1.rows[i-1].cells[1].innerText=target1.rows[i].cells[0].innerText;
            target1.rows[i].style.display="none";
            target1.rows[i-1].cells[0].rowSpan = 1;
            target1.rows[i-1].cells[3].rowSpan = 1;
        } else{
            if(target1.rows[i].cells[0].innerText.trim()==""){
                if(target1.rows[i-1].cells[2].innerText.trim()==""){
                    target1.rows[i-1].cells[2].innerText=target1.rows[i].cells[1].innerText;
                    target1.rows[i].style.display="none";
                    target1.rows[i-1].cells[0].rowSpan = 1;
                    target1.rows[i-1].cells[3].rowSpan = 1;
                }else{
                    if(target1.rows[i].cells[1].innerText.trim()==""){
                        target1.rows[i].style.display="none";
                        target1.rows[i-1].cells[0].rowSpan = 1;
                        target1.rows[i-1].cells[3].rowSpan = 1;
                    }
                }
            }
        }
    }
}
var newtr=document.createElement("tr");
var newtd=document.createElement("td");
newtd.setAttribute("colspan","4");
newtd.style.fontSize='25px';
var myText = document.createTextNode("此表格提示药物依据：明确临床试验结果/少数病例/部分体外试验/动物肿瘤模型；");
newtd.appendChild(myText);
var newdiv=document.createElement("div");
var myText = document.createTextNode("以上结果仅供医生参考，具体用药方案请遵从医嘱。");
newdiv.appendChild(myText);
newtd.appendChild(newdiv);
newtr.appendChild(newtd);
target1.getElementsByTagName("tbody")[0].appendChild(newtr);

});
  </script>
  <table class="target3" style="display:none;">
    <c:forEach items="${commentSumList }" var="temp" >
           <tr>
           <td>${temp.drugName}</td>
           <td>${temp.goodsName}</td>
           <td>${temp.recomBuy}</td>
           <td>${temp.FDAApprovedInd}</td>
           </tr>
           </c:forEach></table>
  </div>
<div class="fda fda_mulu_aa" id="fda" style="width:1300px;margin-left:110px;">
    <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
    <div class="catalogue_"><img src="${ctx }/static/img/admin/reportPrint/pic/cfda.png"  class="catalogue"><h1 style="color:#93B64E;">CFDA/FDA批准用于${collInfo.ill}药物</h1></div>
    <table cellspacing="0">
        <tr style="height:0;"> 
     <th style="width:30%;"></th> 
      <th style="width:70%;"></th> 
     </tr> 
       <tr><td colspan="2">依据本次基因检测结果，推荐使用治疗${collInfo.ill}药物</td></tr>
       <tr><td>药物名称</td><td>药物信息</td></tr>
       <s:if test='cfdaCommentList1.size()!=0'>
        <c:forEach items="${cfdaCommentList1 }" var="temp" >
       <tr><td>${temp.drugName1}</td><td>
       <table>
           <tr><td>商品名：<span>${temp.goodsName1}</span></td><td>推荐购买地：<span>${temp.recomBuy1}</span></td></tr>
           <tr><td colspan="2">FDA批准适应症：</td></tr>
           <tr><td colspan="2">${temp.FDAApprovedInd1}</td></tr>
       </table>
       </td></tr></c:forEach></s:if>
       <s:else><tr><td>--</td><td style="text-align:center;">--</td></tr></s:else>
    </table>
    <table cellspacing="0">
        <tr style="height:0;"> 
     <th style="width:30%;"></th> 
      <th style="width:70%;"></th> 
     </tr> 
       <tr><td colspan="2">依据本次基因检测结果，不推荐使用治疗${collInfo.ill}药物</td></tr>
       <tr><td>药物名称</td><td>药物信息</td></tr>
        <s:if test='cfdaCommentList2.size()!=0'>
        <c:forEach items="${cfdaCommentList2 }" var="temp" >
       <tr><td>${temp.drugName2}</td><td>
       <table>
           <tr><td>商品名：<span>${temp.goodsName2}</span></td><td>推荐购买地：<span>${temp.recomBuy2}</span></td></tr>
           <tr><td colspan="2">FDA批准适应症：</td></tr>
           <tr><td colspan="2">${temp.FDAApprovedInd2}</td></tr>
       </table>
       </td></tr></c:forEach></s:if>
       <s:else><tr><td>--</td><td style="text-align:center;">--</td></tr></s:else>
    </table>
    <table cellspacing="0">
        <tr style="height:0;"> 
     <th style="width:30%;"></th> 
      <th style="width:70%;"></th> 
     </tr> 
       <tr><td colspan="2">依据本次基因检测结果，需加测后指导的${collInfo.ill}药物</td></tr>
       <tr><td>药物名称</td><td>药物信息</td></tr>
         <s:if test='cfdaCommentList3.size()!=0'>
        <c:forEach items="${cfdaCommentList3 }" var="temp" >
       <tr><td>${temp.drugName3}</td><td>
       <table>
           <tr><td>商品名：<span>${temp.goodsName3}</span></td><td>推荐购买地：<span>${temp.recomBuy3}</span></td></tr>
           <tr><td colspan="2">FDA批准适应症：</td></tr>
           <tr><td colspan="2">${temp.FDAApprovedInd3}</td></tr>
       </table>
       </td></tr></c:forEach>
       </s:if>
       <s:else><tr><td>--</td><td style="text-align:center;">--</td></tr></s:else>
    </table>
    <table cellspacing="0">
        <tr style="height:0;"> 
     <th style="width:30%;"></th> 
      <th style="width:70%;"></th> 
     </tr> 
       <tr><td colspan="2">可选择的${collInfo.ill}药物</td></tr>
       <tr><td>药物名称</td><td>药物信息</td></tr>
       <s:if test='cfdaCommentList4.size()!=0'>
        <c:forEach items="${cfdaCommentList4 }" var="temp" >
       <tr><td>${temp.drugName4}</td><td>
       <table>
           <tr><td>商品名：<span>${temp.goodsName4}</span></td><td>推荐购买地：<span>${temp.recomBuy4}</span></td></tr>
           <tr><td colspan="2">FDA批准适应症：</td></tr>
           <tr><td colspan="2">${temp.FDAApprovedInd4}</td></tr>
       </table>
       </td></tr></c:forEach> </s:if>
       <s:else><tr><td>--</td><td style="text-align:center;">--</td></tr></s:else>
    </table>
</div>
<div class="chemotherapy" id="chemotherapy">
    <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
    <div class="catalogue_"><img src="${ctx }/static/img/admin/reportPrint/pic/7_1_1.png"  class="catalogue"><h1 style="color:rgb(155,187,89);">化疗用药提示</h1></div>
   <table cellspacing="0">
       <tr><td colspan="4">${collInfo.ill}化疗用药提示</td></tr>
        <tr><td>推荐程度</td><td>药物名称</td><td>药物敏感性预测</td><td>毒副作用风险预测</td></tr>
        <c:forEach items="${drugAssTipList1 }" var="temp">
        <tr><td>${temp.recom}</td><td>${temp.drug}</td><td>${temp.sensitivity}</td><td>${temp.virulence}</td></tr>
        </c:forEach>
        <tr>
        <td colspan="4" style="text-align:left;padding-left:6px;">
        <div><span style="font-weight: bold;">注释：</span>‘*’表示没有药物敏感性位点或毒副作用位点等的相关资料，不进行临床指导。</div><!--
          <div style="margin-left:77px;margin-top:10px;">‘—’表示未匹配上已知基因型。</div>
             --><div style="margin-left:77px;margin-top:10px;">此表格依据本次检测数据评判，仅供医生参考，具体用药方案请遵医嘱。</div>
             <div style="margin-left:77px;margin-top:10px;font-weight:bold;">化疗药物用药提示总表，详见化药相关位点检测汇总表</div>
        </td>
        </tr>
    </table>    
</div>
<div class="hlzb" id="hlzb">
    <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
    <table cellspacing="0">
    <tr><td colspan="3">化疗用药提示总表</td></tr>
    <tr><td>药物名称</td><td>药物有效性和代谢速率判定</td><td>药物毒性判定</td></tr>
     <c:forEach items="${cheDrugTipList }" var="temp">
        <tr><td>${temp.drug}</td><td>${temp.sensitivity}</td><td>${temp.virulence}</td></tr>
        </c:forEach>
     <tr><td colspan="3">
        <div><span style="font-weight:bold;">注释：</span> ‘*’表示没有药物敏感性位点或毒副作用位点的相关资料，不进行临床指导。</div>
        <div>此表格依据本次检测数据评判，仅供医生参考，具体用药方案请遵医嘱。</div>
        <div>上述<span style="color: red">标红药物</span>表明该药物的敏感性或毒性的判断需检测mRNA表达水平或蛋白表达水平，但本次FD-180未做mRNA水平检测，部分判断可能不准确。</div>
        </td></tr>
    </table>
</div>
<script>
$(document).ready(function(){
var disease=[],length= 0,rows=1;
var chemotherapy_table=document.getElementById("chemotherapy").getElementsByTagName("table")[0];
var length=chemotherapy_table.rows.length;
for(i=3;i<=length-1;i++){
    disease.push(chemotherapy_table.rows[i-1].cells[0].innerText);
}
if(length>3){
    for(i=length-4;i>0;i--){
        if(disease[i]==disease[i-1]){
            chemotherapy_table.rows[i+2].cells[0].style.display="none";
            rows++;
        }
        else{
            chemotherapy_table.rows[i+2].cells[0].rowSpan = rows;
            rows=1;
        }
    }
    chemotherapy_table.rows[2].cells[0].rowSpan = rows;
}
});
</script>
<div class="variation" id="variation">
    <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
        <div class="catalogue_"><img src="${ctx }/static/img/admin/reportPrint/pic/9_1_1.png"  class="catalogue"><h1 style="color:rgb(75,172,198);">变异汇总</h1></div>
     <table cellspacing="0" class="first"  id="variation1">
        <tr><td colspan="6">致病性变异SNP（体细胞）</td></tr>
        <tr><td>基因</td><td>变异类型</td><td>碱基变异</td><td>氨基酸变异</td><td>突变频率</td><td>测序质量</td></tr>
                <c:forEach items="${sumVarImpList }" var="temp">
        <!--<span style="color:#E36C0A;font-weight:bold;">-->
        <tr><td>${temp.sumgene}</td><td>${temp.varType}</td><td>${temp.baseVar}</td><td>${temp.animoVar}</td><td>${temp.mutFre}</td><td>${temp.cxzl}</td></tr>
        <input type="hidden" name="variation_type1" value="${temp.sumgene}">
        <input type="hidden" name="cxzl" value="${temp.cxzl}">
        </c:forEach>
    </table>
         <table cellspacing="0" class="first"  id="variation4">
        <tr><td colspan="4">致病性变异CNV（体细胞）</td></tr>
        <tr><td>基因</td><td>拷贝数变化</td><td>倍数</td><td>测序质量</td></tr>
         <c:forEach items="${cnvList }" var="temp">
         <tr><td>${temp.gene}</td><td>${temp.copychange}</td><td>${temp.multi}</td><td>${temp.quality}</td></tr>
         </c:forEach>
    </table>
         <table cellspacing="0" class="first"  id="variation3">
        <tr><td colspan="4">致病性变异DNA重排（体细胞）</td></tr>
        <tr><td>重排基因</td><td>融合基因</td><td>突变频率</td><td>测序质量</td></tr>
         <c:forEach items="${dnaList }" var="temp">
         <tr><td>${temp.cpgene}</td><td>${temp.rhgene}</td><td>${temp.dnaratio}</td><td>${temp.quality}</td></tr>
         </c:forEach> 
    </table>
    <div style="width: 1300px;margin:auto;line-height:2.5em;">${remark.remark3}</div>
    <table cellspacing="0" class="first" style="margin-top:40px;" id="variation2">
        <tr><td colspan="5">遗传易感基因变异</td></tr>
        <tr><td>基因</td><td>碱基变异</td><td>氨基酸变异</td><td>纯合/杂合</td><td>相关疾病</td></tr>
        <c:forEach items="${gaSumVarImpList }" var="temp">
         <s:if test="#temp.flag1==1">
        <tr><td style="color:#E36C0A;">${temp.gagene}</td></s:if>
        <s:else><td>${temp.gagene}</td></s:else>
        <td>${temp.gabaseVar}</td><td>${temp.gaanimoVar}</td><td>${temp.mixif}</td><td>${temp.relaill}</td></tr>
        <input type="hidden" name="variation_type2" value="${temp.gagene}">
        </c:forEach>        
    </table>
    <table cellspacing="0" style="margin-top:40px;" class="second">
        <tr><td colspan="2"><span style="font-weight: bold;">注释：</span>本次检测只涉及<span style="text-decoration: underline;">DNA层面</span>变异筛查，未包含RNA或蛋白等其他层面检测。<span style="color:#E36C0A;font-weight:bold;">橘色标记基因有用药解析。
</span></td></tr>
        <tr><td>碱基变异：</td><td>是指该基因DNA分子的改变情况。</td></tr>
        <tr><td>氨基酸变异：</td><td>是指该基因编码的氨基酸链的改变情况。</td></tr>
        <tr><td>变异类型：</td><td><div>nonsynonymous--非同义突变；stoploss--终止码缺失；stopgain--终止码获得；</div><div>frameshift
            insertion--移码插入；frameshift deletion—移码缺失；</div><div>nonframeshift deletion--非移码缺失；nonframeshift insertion--非移码插入。
        </div></td></tr>
        <tr><td>突变频率：</td><td>是指在检测样本的该位点所有等位基因中，突变的等位基因占比（相比于野生型等位基因）。</td></tr>
        <tr><td>测序质量：</td><td>高质量：DNA正负链均检测到两次或两次以上变异；常规：若不满足高质量条件则为常规测序质量。</td></tr>
        <tr><td>纯合/杂合突变：</td><td><div>纯合突变：两条染色体的等位基因均发生突变；</div><div>杂合突变：只有一条染色体上的等位基因发生突变；</div><div>疑似纯合突变：检测到两次或两次以上相同等位基因突变，但无法确定是否在同一条染色体上。</div></td></tr>
    </table>
</div>

	<s:if test='#session.varName!=""'>
<div class="soma" id="soma">
    <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
    <div class="catalogue_" style="width:1200px;"><img src="${ctx }/static/img/admin/reportPrint/pic/12_1_1.png"  class="catalogue"><h1 style="color:rgb(0,176,240);">重要体细胞变异与用药解析</h1></div>
    <div id="ude1" style="width:1200px;">${varDrugResult.varName}</div>
</div></s:if>
<div class="susceptibility" id="susceptibility">
    <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
    <div class="catalogue_"><img src="${ctx }/static/img/admin/reportPrint/pic/12_1_1.png"  class="catalogue"><h1 style="color:rgb(0,176,240);">遗传易感基因变异解析</h1></div>
    <div style="margin: 0 0 60px 100px;font-weight: bold;">常见癌种遗传易感基因检测</div>
      <table cellspacing="0">
       <div class="susceptibility" id="susceptibility">
        <tr><td>肿瘤名称</td><td>检测基因</td><td>变异基因</td></tr>
        <s:set name="sex" value="#request.collInfo.sex" scope="session"></s:set>
       <s:if test='#session.sex=="女"'>
        <tr><td>乳腺癌</td><td><pre><div style="margin-top:-28px;">APC  ATM  BRCA1  BRCA2  BRIP1  CHEK2  NBN  </pre></div><div style="margin-top:-14px;margin-bottom:-28px;"><pre>PALB2  PTEN RB1  STK11  TP53</pre></div></td><td>${genSusGeneParse.gene1}</td></tr>
        <tr><td>卵巢癌</td><td><pre>BRCA1  BRCA2  MLH1  MSH2  MSH6  NBN   PMS1 PMS2</pre></td><td>${genSusGeneParse.gene2}</td></tr>
        <tr><td>子宫内膜癌</td><td><pre>MLH1  MSH2  MSH6  PMS1  PMS2 PTEN</pre></td><td>${genSusGeneParse.gene3}</td></tr>
        </s:if>
        <s:elseif test='#session.sex=="男"'>
        <tr><td>前列腺癌</td><td><pre>BRCA1  BRCA2  CHEK2  SKT11 TP53</pre></td><td>${genSusGeneParse.gene4}</td></tr></s:elseif>
        <s:else>
         <tr><td>乳腺癌</td><td><pre><div style="margin-top:-28px;">APC  ATM  BRCA1  BRCA2  BRIP1  CHEK2  NBN  </pre></div><div style="margin-top:-14px;margin-bottom:-28px;"><pre>PALB2  PTEN RB1  STK11  TP53</pre></div></td><td>${genSusGeneParse.gene1}</td></tr>
        <tr><td>卵巢癌</td><td><pre>BRCA1  BRCA2  MLH1  MSH2  MSH6  NBN   PMS1 PMS2</pre></td><td>${genSusGeneParse.gene2}</td></tr>
        <tr><td>子宫内膜癌</td><td><pre>MLH1  MSH2  MSH6  PMS1  PMS2 PTEN</pre></td><td>${genSusGeneParse.gene3}</td></tr>
        <tr><td>前列腺癌</td><td><pre>BRCA1  BRCA2  CHEK2  SKT11 TP53</pre></td><td>${genSusGeneParse.gene4}</td></tr></s:else>
        <tr><td>胃癌</td><td><pre>CDH1  MLH1  MSH2  MSH6  PMS2</pre></td><td>${genSusGeneParse.gene5}</td></tr>
        <tr><td>胃肠道间质瘤</td><td><pre>KIT  PDGFRA</pre></td><td>${genSusGeneParse.gene6}</td></tr>
        <tr><td>肾癌</td><td><pre>ATM  FH  FLCN  HNF1A  MET  TSC1  TSC2  VHL</pre></td><td>${genSusGeneParse.gene7}</td></tr>
        <tr><td>多发性内分泌瘤</td><td><pre>CDKN1B  MEN1  RET</pre></td><td>${genSusGeneParse.gene8}</td></tr>
        <tr><td>甲状腺癌</td><td><pre>CDKN1B  MEN1  PRKAR1A  RET</pre></td><td>${genSusGeneParse.gene9}</td></tr>
        <tr><td>甲状腺旁癌</td><td><pre>CDC73  MEN1</pre></td><td>${genSusGeneParse.gene10}</td></tr>
        <tr><td>黑色素瘤</td><td><pre>CDK4  CDKN2A  DDB2  HRAS  XPC</pre></td><td>${genSusGeneParse.gene11}</td></tr>
        <tr><td>胰腺癌</td><td><pre>APC  BRCA2  CDKN2A  MEN1  PALB2  STK11</pre></td><td>${genSusGeneParse.gene12}</td></tr>
        <tr><td>结直肠癌</td><td><div style="margin-top:-28px;"><pre>APC  AXIN2  BMPR1A  ERCC2  MLH1  MSH2  MSH6</pre></div><div style="margin-top:-14px;margin-bottom:-28px;"><pre>MUTYH  PMS1  PMS2  SMAD4  STK11 TP53</pre></div></td><td>${genSusGeneParse.gene13}</td></tr>
        <tr><td>肺癌</td><td><pre>HRAS  STK11  XPA  XPC</pre></td><td>${genSusGeneParse.gene14}</td></tr>
        <tr><td>肝癌</td><td><pre>GPC3  HNF1</pre></td><td>${genSusGeneParse.gene15}</td></tr>
        <tr><td>软骨肉瘤</td><td><pre>EXT1  EXT2  WRN</pre></td><td>${genSusGeneParse.gene16}</td></tr>
        <tr><td>视网膜母细胞瘤</td><td><pre>RB1</pre></td><td>${genSusGeneParse.gene17}</td></tr>
        <tr><td>髓母细胞瘤</td><td><pre>NBN  PTCH1  SUFU</pre></td><td>${genSusGeneParse.gene18}</td></tr>
        <tr><td>嗜铬细胞瘤/副神经节瘤</td><td><pre>NF1  RET  SDHAF2  SDHB  SDHC  SDHD  VHL</pre></td><td>${genSusGeneParse.gene19}</td></tr>
    </table>
</div>
<s:set name="jxwkl" value="#request.jxwkl" scope="session"></s:set>
<s:if test='varAnaList.size()!=0||#session.jxwkl=="1"'>
<div class="analysis">
    <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
    <div  style="width: 1200px;margin:40px auto 30px;font-weight: 700;">变异解析</div>
    <s:if test='varAnaList.size()!=0'>
    <table cellspacing="0">
        <tr><td>基因</td><td>相关疾病</td><td>碱基变异</td><td>氨基酸变异</td><td>变异类型</td><td>是否致病</td></tr>
        <c:forEach items="${varAnaList }" var="temp">
        	<tr><td>${temp.anaGene}</td><td>${temp.anaIll}</td><td>${temp.anaJj}</td><td>${temp.anaAj}</td><td>${temp.anaType}</td><td>${temp.anaDie}</td></tr>
        </c:forEach>
        <tr><td style="font-weight:bold;" colspan="6">注释：</td></tr>
        <tr><td>碱基变异：</td><td colspan="5">是指该基因DNA分子的改变情况。</td></tr>
        <tr><td>氨基酸变异：</td><td colspan="5">是指该基因编码的氨基酸链的改变情况。</td></tr>
        <tr><td>变异类型：</td><td colspan="5"><div>是指该基因突变途径。</div><div>nonsynonymous--非同义突变；stoploss--终止码缺失；stopgain--终止码获得；</div><div>frameshift insertion--移码插入；frameshift deletion—移码缺失；</div><div>nonframeshift deletion--非移码缺失；nonframeshift insertion--非移码插入。</div></td></tr>
    </table></s:if>
      <div id="ude2">${varAnaDet.anaDet}</div>
</div></s:if>
<div class="high_frequency" id="high_frequency">
    <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
     <div class="catalogue_" style="width:1200px;"><img src="${ctx }/static/img/admin/reportPrint/pic/9_1_1.png"  class="catalogue"><h1 style="color:#FF9966">高频突变基因列表</h1></div>
     <s:set name="Ill" value="#request.collInfo.Ill" scope="session"></s:set>
      <s:set name="Ill1" value="#request.collInfo.testIll" scope="session"></s:set>
       <s:if test='#session.Ill=="paget病"'>
	    <table cellspacing="0">
      <tr><td colspan="3">Paget病高频突变基因</td></tr>
      <tr><td>检测基因</td><td>检测内容</td><td>检测结果</td></tr>
      <tr><td>AKT1</td><td>活化点突变</td><td>${highFreGeneTest.testResult1}</td></tr>
<tr><td>CCND1</td><td>高表达</td><td>${highFreGeneTest.testResult2}</td></tr>
<tr><td>CDH1</td><td>启动子甲基化</td><td>${highFreGeneTest.testResult3}</td></tr>
<tr><td>GCDFP15（PIP）</td><td>高表达</td><td>${highFreGeneTest.testResult4}</td></tr>
<tr><td>HER2</td><td>高表达</td><td>${highFreGeneTest.testResult5}</td></tr>
<tr><td>MUC1</td><td>高表达</td><td>${highFreGeneTest.testResult6}</td></tr>
<tr><td>MUC2</td><td>高表达</td><td>${highFreGeneTest.testResult7}</td></tr>
<tr><td>MUC5AC</td><td>高表达</td><td>${highFreGeneTest.testResult8}</td></tr>
<tr><td>PIK3CA</td><td>活化点突变</td><td>${highFreGeneTest.testResult9}</td></tr>
<tr><td>PTEN</td><td>失活突变</td><td>${highFreGeneTest.testResult10}</td></tr>
<tr><td>RAF</td><td>活化点突变</td><td>${highFreGeneTest.testResult11}</td></tr>
<tr><td>RAS</td><td>活化点突变</td><td>${highFreGeneTest.testResult12}</td></tr>
<tr><td>TP53</td><td>失活突变</td><td>${highFreGeneTest.testResult13}</td></tr>
    </table></s:if>
     <s:elseif test='#session.Ill1=="非小细胞肺癌"||#session.Ill1=="La-肺腺癌lung adenocarcinoma"||#session.Ill1=="肺鳞癌"||#session.Ill1=="大细胞癌"'>
    <table cellspacing="0">
      <tr><td colspan="3">非小细胞肺癌(NSCLC)高频突变基因</td></tr>
      <tr><td>检测基因</td><td>检测内容</td><td>检测结果</td></tr>
<tr><td rowspan="2">EGFR</td><td>活化突变</td><td>${highFreGeneTest.testResult1}</td></tr>
<tr><td>扩增</td><td>${highFreGeneTest.testResult2}</td></tr>
<tr><td>AKT1</td><td>活化点突变</td><td>${highFreGeneTest.testResult3}</td></tr>
<tr><td>ALK</td><td>融合</td><td>${highFreGeneTest.testResult4}</td></tr>
<tr><td>BRAF</td><td>活化点突变</td><td>${highFreGeneTest.testResult5}</td></tr>
<tr><td>DDR2</td><td>活化点突变</td><td>${highFreGeneTest.testResult6}</td></tr>
<tr><td rowspan="3">FGFR1</td><td>扩增</td><td>${highFreGeneTest.testResult7}</td></tr>
<tr><td>活化点突变</td><td>${highFreGeneTest.testResult8}</td></tr>
<tr><td>融合</td><td>${highFreGeneTest.testResult9}</td></tr>
<tr><td rowspan="2">ERBB2</td><td>扩增</td><td>${highFreGeneTest.testResult10}</td></tr>
<tr><td>活化点突变</td><td>${highFreGeneTest.testResult11}</td></tr>
<tr><td>KRAS</td><td>活化点突变</td><td>${highFreGeneTest.testResult12}</td></tr>
<tr><td>MAP2K1</td><td>活化点突变</td><td>${highFreGeneTest.testResult13}</td></tr>
<tr><td>MET</td><td>扩增</td><td>${highFreGeneTest.testResult14}</td></tr>
<tr><td>NRAS</td><td>活化点突变</td><td>${highFreGeneTest.testResult15}</td></tr>
<tr><td>PIK3CA</td><td>活化点突变</td><td>${highFreGeneTest.testResult16}</td></tr>
<tr><td>PTEN</td><td>失活突变</td><td>${highFreGeneTest.testResult17}</td></tr>
<tr><td rowspan="2">RET</td><td>融合</td><td>${highFreGeneTest.testResult18}</td></tr>
<tr><td>活化点突变</td><td>${highFreGeneTest.testResult19}</td></tr>
<tr><td>ROS1</td><td>融合</td><td>${highFreGeneTest.testResult20}</td></tr></td></tr>
    </table></s:elseif>
     <s:elseif test='#session.Ill=="肺癌"'>
	<table cellspacing="0">
      <tr><td colspan="3">肺癌高频突变基因</td></tr>
      <tr><td>检测基因</td><td>检测内容</td><td>检测结果</td></tr>
<tr><td>EGFR</td><td>活化突变</td><td>${highFreGeneTest.testResult1}</td></tr>
<tr><td>AKT1</td><td>活化点突变</td><td>${highFreGeneTest.testResult2}</td></tr>
<tr><td>ALK</td><td>融合</td><td>${highFreGeneTest.testResult3}</td></tr>
<tr><td>BRAF</td><td>活化点突变</td><td>${highFreGeneTest.testResult4}</td></tr>
<tr><td>DDR2</td><td>活化点突变</td><td>${highFreGeneTest.testResult5}</td></tr>
<tr><td rowspan="3">FGFR1</td><td>扩增</td><td>${highFreGeneTest.testResult6}</td></tr>
<tr><td>活化点突变</td><td>${highFreGeneTest.testResult7}</td></tr>
<tr><td>融合</td><td>${highFreGeneTest.testResult8}</td></tr>
<tr><td rowspan="2">ERBB2</td><td>扩增</td><td>${highFreGeneTest.testResult9}</td></tr>
<tr><td>活化点突变</td><td>${highFreGeneTest.testResult10}</td></tr>
<tr><td>KRAS</td><td>活化点突变</td><td>${highFreGeneTest.testResult11}</td></tr>
<tr><td>MAP2K1</td><td>活化点突变</td><td>${highFreGeneTest.testResult12}</td></tr>
<tr><td>MET</td><td>扩增</td><td>${highFreGeneTest.testResult13}</td></tr>
<tr><td>NRAS</td><td>活化点突变</td><td>${highFreGeneTest.testResult14}</td></tr>
    </table></s:elseif>
     <s:elseif test='#session.Ill=="肝癌"'>
	<table cellspacing="0">
      <tr><td colspan="3">肝癌高频突变基因</td></tr>
      <tr><td>检测基因</td><td>检测内容</td><td>检测结果</td></tr>
      <tr><td>CDKN2A</td><td>失活突变</td><td>${highFreGeneTest.testResult1}</td></tr>
<tr><td>RB1</td><td>失活突变</td><td>${highFreGeneTest.testResult2}</td></tr>
<tr><td>CCND1</td><td>活化点突变</td><td>${highFreGeneTest.testResult3}</td></tr>
<tr><td>CTNNB1</td><td>活化点突变</td><td>${highFreGeneTest.testResult4}</td></tr>
<tr><td>AXIN2</td><td>失活突变</td><td>${highFreGeneTest.testResult5}</td></tr>
<tr><td>TP53</td><td>失活突变</td><td>${highFreGeneTest.testResult6}</td></tr>
</table></s:elseif>
     <s:elseif test='#session.Ill=="黑色素瘤"'>
	<table cellspacing="0">
      <tr><td colspan="3">黑色素瘤（Melanoma）高频突变基因</td></tr>
      <tr><td>检测基因</td><td>检测内容</td><td>检测结果</td></tr>
      <tr><td>BRAF</td><td>活化点突变</td><td>${highFreGeneTest.testResult1}</td></tr>
<tr><td>CTNNB1</td><td>活化点突变</td><td>${highFreGeneTest.testResult2}</td></tr>
<tr><td>GNA11</td><td>活化点突变</td><td>${highFreGeneTest.testResult3}</td></tr>
<tr><td>GNAQ</td><td>活化点突变</td><td>${highFreGeneTest.testResult4}</td></tr>
<tr><td rowspan="2">KIT</td><td>活化点突变</td><td>${highFreGeneTest.testResult5}</td></tr>
<tr><td>扩增</td><td>${highFreGeneTest.testResult6}</td></tr>
<tr><td>MAP2K1</td><td>活化点突变</td><td>${highFreGeneTest.testResult7}</td></tr>
<tr><td>NF1</td><td>失活突变</td><td>${highFreGeneTest.testResult8}</td></tr>
<tr><td>NRAS</td><td>活化点突变</td><td>${highFreGeneTest.testResult9}</td></tr>
</table></s:elseif>
     <s:elseif test='#session.Ill=="肠癌"'>
<table cellspacing="0">
      <tr><td colspan="3">结直肠癌高频突变基因</td></tr>
      <tr><td>检测基因</td><td>检测内容</td><td>检测结果</td></tr>
      <tr><td>AKT1</td><td>活化点突变</td><td>${highFreGeneTest.testResult1}</td></tr>
<tr><td>BRAF</td><td>活化点突变</td><td>${highFreGeneTest.testResult2}</td></tr>
<tr><td>KRAS</td><td>活化点突变</td><td>${highFreGeneTest.testResult3}</td></tr>
<tr><td>NRAS</td><td>活化点突变</td><td>${highFreGeneTest.testResult4}</td></tr>
<tr><td>PIK3CA</td><td>活化点突变</td><td>${highFreGeneTest.testResult5}</td></tr>
<tr><td>PTEN</td><td>失活突变</td><td>${highFreGeneTest.testResult6}</td></tr>
<tr><td>SMAD4</td><td>失活点突变</td><td>${highFreGeneTest.testResult7}</td></tr>
</table></s:elseif>
     <s:elseif test='#session.Ill=="胶质瘤"'>
<table cellspacing="0">
      <tr><td colspan="3">脑胶质瘤分子分型相关基因</td></tr>
      <tr><td>检测基因</td><td>检测内容</td><td>检测结果</td></tr>
      <tr><td>IDH1</td><td>R132</td><td>${highFreGeneTest.testResult1}</td></tr>
<tr><td>IDH2</td><td>R140、R172</td><td>${highFreGeneTest.testResult2}</td></tr>
<tr><td>1p19q</td><td>染色体缺失</td><td>${highFreGeneTest.testResult3}</td></tr>
<tr><td>MGMT</td><td>启动子区域甲基化</td><td>${highFreGeneTest.testResult4}</td></tr>
<tr><td>EGFR</td><td>扩增</td><td>${highFreGeneTest.testResult5}</td></tr>
<tr><td>EGFR</td><td>活化点突变</td><td>${highFreGeneTest.testResult6}</td></tr>
<tr><td>EGFRvIII</td><td>2-7号外显子缺失</td><td>${highFreGeneTest.testResult7}</td></tr>
<tr><td>PTEN</td><td>失活突变</td><td>${highFreGeneTest.testResult8}</td></tr>
<tr><td>TP53</td><td>热点突变</td><td>${highFreGeneTest.testResult9}</td></tr>
<tr><td>BRAF</td><td>融合</td><td>${highFreGeneTest.testResult10}</td></tr>
<tr><td>BRAF</td><td>活化点突变</td><td>${highFreGeneTest.testResult11}</td></tr>
<tr><td>KRAS</td><td>活化点突变</td><td>${highFreGeneTest.testResult12}</td></tr>
<tr><td>PIK3CA</td><td>活化点突变</td><td>${highFreGeneTest.testResult13}</td></tr>
<tr><td>Ki-67</td><td>表达量上升</td><td>${highFreGeneTest.testResult14}</td></tr>
<tr><td>TERT</td><td>启动子区C228、C250</td><td>${highFreGeneTest.testResult15}</td></tr>
<tr><td>ATRX</td><td>扩增</td><td>${highFreGeneTest.testResult16}</td></tr>
<tr><td>CIC</td><td>失活突变</td><td>${highFreGeneTest.testResult17}</td></tr>
<tr><td>FUBP1</td><td>失活突变</td><td>${highFreGeneTest.testResult18}</td></tr>
<tr><td>H3F3A</td><td>K27M、G34</td><td>${highFreGeneTest.testResult19}</td></tr>
<tr><td>NF1</td><td>失活突变</td><td>${highFreGeneTest.testResult20}</td></tr>
<tr><td>CDKN2A</td><td>失活突变</td><td>${highFreGeneTest.testResult21}</td></tr>
<tr><td>CDK4</td><td>扩增</td><td>${highFreGeneTest.testResult22}</td></tr>
<tr><td>RB1</td><td>失活突变</td><td>${highFreGeneTest.testResult23}</td></tr>   
</table></s:elseif>
     <s:elseif test='#session.Ill=="乳腺癌"'>
<table cellspacing="0">
      <tr><td colspan="3">乳腺癌高频突变基因检测</td></tr>
      <tr><td>检测基因</td><td>检测内容</td><td>检测结果</td></tr>
      <tr><td rowspan="2">AKT1</td><td>活化点突变</td><td>${highFreGeneTest.testResult1}</td></tr>
<tr><td>扩增</td><td>${highFreGeneTest.testResult2}</td></tr>
<tr><td rowspan="2">AR</td><td>失活点突变</td><td>${highFreGeneTest.testResult3}</td></tr>
<tr><td>活化点突变</td><td>${highFreGeneTest.testResult4}</td></tr>
<tr><td rowspan="2">ERBB2</td><td>扩增</td><td>${highFreGeneTest.testResult5}</td></tr>
<tr><td>活化点突变</td><td>${highFreGeneTest.testResult6}</td></tr>
<tr><td>ESR1</td><td>表达</td><td>${highFreGeneTest.testResult7}</td></tr>
<tr><td>FGFR1</td><td>扩增</td><td>${highFreGeneTest.testResult8}</td></tr>
<tr><td>FGFR2</td><td>扩增</td><td>${highFreGeneTest.testResult9}</td></tr>
<tr><td>PGR</td><td>表达</td><td>${highFreGeneTest.testResult10}</td></tr>
<tr><td>PIK3CA</td><td>活化点突变</td><td>${highFreGeneTest.testResult11}</td></tr>
<tr><td>PTEN</td><td>失活突变</td><td>${highFreGeneTest.testResult12}</td></tr>      
</table></s:elseif>
     <s:elseif test='#session.Ill=="胃癌"'>
<table cellspacing="0">
      <tr><td colspan="3">胃癌高频突变基因检测</td></tr>
      <tr><td>检测基因</td><td>检测内容</td><td>检测结果</td></tr>
      <tr><td rowspan="2">ERBB2</td><td>活化位点突变</td><td>${highFreGeneTest.testResult1}</td></tr>
<tr><td>拷贝数增加</td><td>${highFreGeneTest.testResult2}</td></tr>
<tr><td>KARS</td><td>活化位点突变</td><td>${highFreGeneTest.testResult3}</td></tr>
<tr><td>PIK3CA</td><td>活化位点突变</td><td>${highFreGeneTest.testResult4}</td></tr>
<tr><td>TP53</td><td>失活点突变</td><td>${highFreGeneTest.testResult5}</td></tr>
<tr><td>CDH1</td><td>失活突变</td><td>${highFreGeneTest.testResult6}</td></tr>
<tr><td rowspan="2">ERBB3</td><td>活化位点突变</td><td>${highFreGeneTest.testResult7}</td></tr>
<tr><td>拷贝数增加</td><td>${highFreGeneTest.testResult8}</td></tr>
<tr><td>PTEN</td><td>失活突变</td><td>${highFreGeneTest.testResult9}</td></tr>
<tr><td>JAK2</td><td>活化位点突变</td><td>${highFreGeneTest.testResult10}</td></tr>
<tr><td>MLH1</td><td>失活突变</td><td>${highFreGeneTest.testResult11}</td></tr>
<tr><td>CDKN2A</td><td>失活突变</td><td>${highFreGeneTest.testResult12}</td></tr>
</table></s:elseif>
     <s:elseif test='#session.Ill=="子宫内膜癌"'>
<table cellspacing="0">
      <tr><td colspan="3">子宫内膜癌高频突变基因检测</td></tr>
      <tr><td>检测基因</td><td>检测内容</td><td>检测结果</td></tr>
      <tr><td rowspan="2">ERBB2</td><td>扩增</td><td>${highFreGeneTest.testResult1}</td></tr>
<tr><td>活化点突变</td><td>${highFreGeneTest.testResult2}</td></tr>
<tr><td>KRAS</td><td>活化点突变</td><td>${highFreGeneTest.testResult3}</td></tr>
<tr><td>FGFR2</td><td>活化点突变</td><td>${highFreGeneTest.testResult4}</td></tr>
<tr><td>CTNNB1</td><td>活化点突变</td><td>${highFreGeneTest.testResult5}</td></tr>
<tr><td>PIK3CA</td><td>活化点突变</td><td>${highFreGeneTest.testResult6}</td></tr>
<tr><td>PIK3R1</td><td>活化点突变</td><td>${highFreGeneTest.testResult7}</td></tr>
<tr><td rowspan="2">PTEN</td><td>表达</td><td>${highFreGeneTest.testResult8}</td></tr>
<tr><td>活化点突变</td><td>${highFreGeneTest.testResult9}</td></tr>
<tr><td>CDKN2A</td><td>表达</td><td>${highFreGeneTest.testResult10}</td></tr>
<tr><td>TP53</td><td>活化点突变</td><td>${highFreGeneTest.testResult11}</td></tr>
</table></s:elseif>
 <s:elseif test='#session.Ill=="食管癌"'>
<table cellspacing="0">
        <tr><td colspan="3">食管癌高频突变基因检测</td></tr>
        <tr><td>检测基因</td><td>检测内容</td><td>检测结果</td></tr>
        <tr><td>TP53</td><td>失活位点突变</td><td>${highFreGeneTest.testResult1}</td></tr>
        <tr><td>SMAD4</td><td>失活位点突变</td><td>${highFreGeneTest.testResult2}</td></tr>
		<tr><td>PIK3CA</td><td>活化位点突变</td><td>${highFreGeneTest.testResult3}</td></tr>
		<tr><td>KRAS</td><td>活化位点突变</td><td>${highFreGeneTest.testResult4}</td></tr>
		<tr><td>ARID1A</td><td>失活位点突变</td><td>${highFreGeneTest.testResult5}</td></tr>
		<tr><td>CDKN2A</td><td>失活位点突变</td><td>${highFreGeneTest.testResult6}</td></tr>
		<tr><td>ELMO1</td><td>活化位点突变</td><td>${highFreGeneTest.testResult7}</td></tr>
		<tr><td rowspan="2">PAK1</td><td>扩增</td><td>${highFreGeneTest.testResult8}</td></tr>
		<tr><td>活化位点突变</td><td>${highFreGeneTest.testResult9}</td></tr>
		<tr><td>SMARCA4</td><td>失活点突变</td><td>${highFreGeneTest.testResult10}</td></tr>
</table></s:elseif>
 <s:elseif test='#session.Ill=="卵巢癌"'>
<table cellspacing="0">
        <tr><td colspan="3">卵巢癌高频突变基因检测</td></tr>
        <tr><td>检测基因</td><td>检测内容</td><td>检测结果</td></tr>
        <tr><td>BRAF</td><td>活化突变</td><td>${highFreGeneTest.testResult1}</td></tr>
    	<tr><td>KRAS</td><td>活化突变</td><td>${highFreGeneTest.testResult2}</td></tr>
    	<tr><td>PIK3CA</td><td>活化突变</td><td>${highFreGeneTest.testResult3}</td></tr>
    	<tr><td>PTEN</td><td>失活突变</td><td>${highFreGeneTest.testResult4}</td></tr>
</table></s:elseif>
 <s:elseif test='#session.Ill=="肾癌"'>
<table cellspacing="0">
        <tr><td colspan="3">肾癌高频突变基因检测</td></tr>
        <tr><td>检测基因</td><td>检测内容</td><td>检测结果</td></tr>
        <tr><td>VHL</td><td>失活突变</td><td>${highFreGeneTest.testResult1}</td></tr>
    	<tr><td>BAP1</td><td>失活突变</td><td>${highFreGeneTest.testResult2}</td></tr>
</table></s:elseif>
 <s:elseif test='#session.Ill=="胰腺癌"'>
<table cellspacing="0">
        <tr><td colspan="3">胰腺癌高频突变基因检测</td></tr>
        <tr><td>检测基因</td><td>检测内容</td><td>检测结果</td></tr>
        <tr><td>KRAS</td><td>活化点突变</td><td>${highFreGeneTest.testResult1}</td></tr>
    	<tr><td>TP53</td><td>失活突变</td><td>${highFreGeneTest.testResult2}</td></tr>
    	<tr><td>CDKN2A</td><td>失活突变</td><td>${highFreGeneTest.testResult3}</td></tr>
    	<tr><td>SMAD4</td><td>失活突变</td><td>${highFreGeneTest.testResult4}</td></tr>
</table></s:elseif>
<div style="width: 1300px;margin:auto;font-size:75%;line-height:2.1em;">注释：高频突变基因是指经临床研究结果统计，患者肿瘤类型中较常出现的与肿瘤发生和进展密切相关的突变基因。</div>
</div>
<div class="peculiar" id="peculiar">
    <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
    <div class="catalogue_" style="width:1200px;"><img src="${ctx }/static/img/admin/reportPrint/pic/bt.png"  class="catalogue"><h1 style="color:#C2D69B">患者特异性胚细胞基因变异列表</h1></div>
    <table cellspacing="0">
    <tr><td colspan="5">患者特异性基因变异</td></tr>
    <tr><td>基因</td><td>变异类型</td><td>碱基变异</td><td>氨基酸变异</td><td>变异种类</td></tr>
      <c:forEach items="${specGeneList }" var="temp">
    <tr><td>${temp.specName}</td><td>${temp.specType}</td><td>${temp.specGj}</td><td>${temp.specAj}</td><td>${temp.specKind}</td></tr>
    </c:forEach>
    </table>
    <div style="font-weight:bold;width: 1300px;margin:auto;font-size:25px;line-height:1.9em;">备注：患者胚细胞变异表示该变异为患者先天携带的遗传性变异。</div>
    <!--<div style="text-decoration: underline;width: 1300px;margin:auto;line-height:2em;font-size:120%;">*该表包含患者肿瘤细胞的特异性基因变异，建议患者定期采用FD<span style="color:rgb(255,0,0);text-decoration:underline;">产品体检检测项目</span>用于监测所有与癌症相关的致病性和非致病性突变，动态监测病情，提前预知肿瘤的复发与转移。</div>
--></div>
<div class="chemical_drug" id="chemical_drug">
    <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
     <div class="catalogue_" style="width:1200px;"><img src="${ctx }/static/img/admin/reportPrint/pic/9_1_1.png"  class="catalogue"><h1 style="color:rgb(75,172,198);">化药相关位点检测</h1></div>
   <table cellspacing="0" id="aa" cellpadding="0">
        <tr><td colspan="6">化药相关位点检测</td></tr>
        <tr><td>药物类别</td><td>检测基因</td><td>检测位点</td><td>级别</td><td>基因型</td><td>用药提示</td></tr>
        <c:forEach items="${cheDrugGeneList }" var="temp">
        <tr><td >${temp.drug}</td><td>${temp.gene}</td><td>${temp.locus}</td><td>${temp.level}</td><td>${temp.genotype}</td><td style="width: 100px;word-wrap: break-word; word-break: break-all; ">${temp.hint}</td></tr>
         <input type="hidden" name="drug" value="${temp.drug}">
         <input type="hidden" name="gene" value="${temp.gene}">
        </c:forEach>
       <tr><td colspan="6" style="text-align:left;padding-left:10px;"><div><span style="font-weight:bold;">注释：</span>‘*’表示没有药物敏感性位点或毒副作用位点的相关资料，不进行临床指导。</div>
       <div>‘—’表示未匹配上已知基因型。</div>
       <div>@’表示该位点检测到基因型，但与已知基因型不匹配</div></td></tr>
    </table>
</div>
<div class="chemical_drug_zs" id="chemical_drug_zs">
<img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
    <table cellspacing="0" cellpadding="0">
        <tr><td>级别划分</td><td>注释<span style="font-weight:normal;">（依据 PharmGKB网站：http://www.pharmgkb.org/page/clinAnnLevels）</span></td></tr>
        <tr><td>Level 1A</td><td>基于被医学会认可的指南或经由某些重大卫生系统的认可</td></tr>
        <tr><td>Level 1B</td><td>基于多项统计显著的研究</td></tr>
        <tr><td>Level 2A</td><td>基于多项重复研究，因此药效关系很有可能是有意义的</td></tr>
        <tr><td>Level 2B</td><td>基于多项重复研究，但某些可能无统计显著性或样本数量少</td></tr>
        <tr><td>Level 3</td><td>仅基于1项有显著差异的研究（未重复）或多项研究但缺乏明显药效关联性</td></tr>
        <tr><td>Level 4</td><td>注释仅基于少量病例、非权威研究或体外的分子功能研究；</td></tr>
    </table>
    <div style="width: 1300px;margin:auto;margin-top:30px;line-height:2em;font-size:80%;" id="chemical_drug_bz">备注：部分化疗药物的敏感性与毒性的判断还需要检测mRNA表达水平或蛋白表达水平，本次FD-180检测只涉及DNA层面，未包含RNA或蛋白等其它层面检测，下表列出了mRNA表达水平未检测的相关化疗药物。这些药物的敏感性可能和上表不符。</div>
   <table cellspacing="0" class="chemical_drug134" cellpadding="0" id="chemical_drug134">
       <tr><td>化药名称</td><td>检测基因</td><td>检测项目</td><td>检测结果</td></tr>
<tr><td>铂类（顺铂/卡铂/奥沙利铂）</td><td>ERCC1</td><td>mRNA表达水平</td><td>未检测</td></tr>
<tr><td>铂类（顺铂/卡铂/奥沙利铂）</td><td style="border-right:2px solid rgb(194,214,155) !important;">BRCA1</td><td>mRNA表达水平</td><td>未检测</td></tr>
<tr><td>氟尿嘧啶</td><td>TYMS</td><td>mRNA表达水平</td><td>未检测</td></tr>
<tr><td>蒽环类药物</td><td>TOP2A</td><td>mRNA表达水平</td><td>未检测</td></tr>
<tr><td>吉西他滨</td><td>RRM1</td><td>mRNA表达水平</td><td>未检测</td></tr>
<tr><td>紫杉醇</td><td>TUBB3</td><td>mRNA表达水平</td><td>未检测</td></tr>
<tr><td>紫杉醇</td><td>STMN1</td><td>mRNA表达水平</td><td>未检测</td></tr>
<tr><td>紫杉醇</td><td>BRCA1</td><td>mRNA表达水平</td><td>未检测</td></tr>
<tr><td>卡培他滨</td><td>TYMS</td><td>mRNA表达水平</td><td>未检测</td></tr>
<tr><td>培美曲塞</td><td>TYMS</td><td>mRNA表达水平</td><td>未检测</td></tr>
<tr><td>依托泊苷</td><td>TOP2A</td><td>mRNA表达水平</td><td>未检测</td></tr>
    </table>
</div>
<div class="mcjs" id="mcjs">
    <img src="${ctx }/static/img/admin/reportPrint/pic/head.png"/>
    <div style="margin-top: 190px;margin-left: 110px;font-weight: bold;font-size:120%;"><span style="text-decoration: underline;">名词解释</span>：</div>
    <ol>
        <li>移植物抗宿主病风险：指受体接受移植后，供体中的 T 淋巴细胞对受体抗原的免疫反应增强，对受体
            靶细胞进行攻击。</li>
        <li>中性粒细胞减少风险：指血液中中性粒细胞数目异常减少，中性粒细胞是机体抵御急性细菌和某些真
            菌感染的主要防线，中性粒细胞减少增加了病人感染的风险。</li>
        <li>血液学毒性：血液学毒性最常见的表现为白细胞中的中性粒细胞，血小板的下降，有时也可有血红蛋
            白的降低。</li>
        <li>周围神经病变：是由感觉丧失，肌肉无力与萎缩，腱反射的减退以及血管运动症状中的一种或多种症
            状形成的综合征。</li>
        <li>手足综合症：手掌-足底感觉迟钝或化疗引起的肢端红斑，临床主要表现为指(趾)热、痛、红斑性肿胀，
            严重者发展至脱屑、溃疡和剧烈疼痛。</li>
        <li>神经毒性：指化疗药物的使用对神经系统不同部位的损伤。</li>
        <li>输液不良反应：输液不良反应主要包括药物不良反应，静脉炎、热源反应等。</li>
    </ol>
</div>
<s:if test='pathwayList1.size()!=0'>
<div class="hz" id="hz">
    <img src="${ctx }/static/img/admin/reportPrint/pic/head.png"/>
    <div class="catalogue_"><img src="${ctx }/static/img/admin/reportPrint/pic/12_1_1.png"  class="catalogue"><h1 style="color:#FF9999">靶向突变基因信号通路解析</h1></div>
    <table cellspacing="0">
        <tr><td colspan="4">靶向突变基因信号通路信息汇总</td></tr>
        <tr><td>信号通路类型</td><td>通路基因数目</td><td>突变基因数目</td><td>突变比例</td></tr>
       <c:forEach items="${pathwayList }" var="temp">
        	<tr><td >${temp.pathClass}</td><td >${temp.pathGene}</td><td>${temp.pathChange}</td><td>${temp.pathRatio}</td></tr>
        	</c:forEach>
    </table>
</div>

<div class="bx" id="bx">
        <img src="${ctx }/static/img/admin/reportPrint/pic/head.png"/>
        <!--细胞表面激酶受体-->
        <div class="model1">
            <div class="sTitle"><img src="${ctx }/static/img/admin/reportPrint/pic/12-2.png" width="63" height="63"/><div>细胞表面激酶受体</div></div>
            <div class="xbbmjmst-content  clearFloat">
            <div><table cellpadding="0" cellspacing="0">
            <tr><td>基因</td><td>氨基酸变异</td><td>突变频率</td></tr>
            <c:forEach items="${pathwayList1 }" var="temp">
        	<tr><td >${temp.pathGene}</td><td>${temp.pathChange}</td><td>${temp.pathRatio}</td></tr>
        	</c:forEach>
        	</table></div>
        	<div><img src="${ctx }/static/img/admin/reportPrint/pic/jmst-1.png" width="639" height="284"/><img src="${ctx }/static/img/admin/reportPrint/pic/jimeishouti_2.png" width="627" height="1076"/></div>
            </div>
        </div>
</div>
        <!--MAP信号通路-->
        <div class="model2">
            <div class="mapk">
                <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
                <div class="sTitle"><img src="${ctx }/static/img/admin/reportPrint/pic/12-2.png" width="63" height="63"/><div>MAP信号通路</div></div>
            </div>
            <div class="mapk-content  clearFloat">
                <div>
                    <img src="${ctx }/static/img/admin/reportPrint/pic/mapk-1.png" width="642" height="340"/>
                    <table cellpadding="0" cellspacing="0">
                        <tr><td>基因</td><td>变异类型</td><td>突变频率</td></tr>
                        <c:forEach items="${pathwayList2 }" var="temp">
        				<tr><td >${temp.pathGene}</td><td>${temp.pathChange}</td><td>${temp.pathRatio}</td></tr>
        				</c:forEach>
                    </table>
                </div>
                <div><img src="${ctx }/static/img/admin/reportPrint/pic/mapk-2.png" width="686" height="1164"/></div>
            </div>
        </div>

        <!--PI3K信号通路-->
        <div class="model3">
            <div class="PI3K">
                <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
				<div class="sTitle"><img src="${ctx }/static/img/admin/reportPrint/pic/12-2.png" width="63" height="63"/><div>PI3K信号通路</div></div>
            </div>
            <div class="PI3K-content">
                <div class="clearFloat">
                <div><table cellpadding="0" cellspacing="0">
                        <tr><td>基因</td><td>氨基酸变异</td><td>突变频率</td></tr>
                        <c:forEach items="${pathwayList3 }" var="temp">
        				<tr><td >${temp.pathGene}</td><td>${temp.pathChange}</td><td>${temp.pathRatio}</td></tr>
        				</c:forEach>
                    </table></div>  
                    <img src="${ctx }/static/img/admin/reportPrint/pic/PI3K-1.png" width="455" height="522"/>
                </div>
                <div> <img src="${ctx }/static/img/admin/reportPrint/pic/PI3K-2.png" width="1149" height="1035"/></div>
            </div>
        </div>

        <!--JAK/STAT信号通路-->
        <div class="model4">
            <div class="jak">
                <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
                <div class="sTitle"><img src="${ctx }/static/img/admin/reportPrint/pic/12-2.png" width="63" height="63"/><div>JAK/STAT信号通路</div></div>
            </div>
            <div class="jak-content  clearFloat">
                <div>
                    <img src="${ctx }/static/img/admin/reportPrint/pic/JAK-1.png" width="582" height="454"/>
                    <table cellpadding="0" cellspacing="0">
                        <tr><td>基因</td><td>变异类型</td><td>突变频率</td></tr>
                        <c:forEach items="${pathwayList4 }" var="temp">
        				<tr><td >${temp.pathGene}</td><td>${temp.pathChange}</td><td>${temp.pathRatio}</td></tr>
        				</c:forEach>
                    </table>
                </div>
                <div><img src="${ctx }/static/img/admin/reportPrint/pic/JAK-2.png" width="592" height="1017"/></div>
            </div>
        </div>

        <!--DNA修复通路-->
        <div class="model5">
            <div class="dna">
                <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
                <div class="sTitle"><img src="${ctx }/static/img/admin/reportPrint/pic/12-2.png" width="63" height="63"/><div>DNA修复通路</div></div>
            </div>
            <div class="dna-content  clearFloat">
                <div>
                    <table cellpadding="0" cellspacing="0">
                        <tr><td>基因</td><td>氨基酸变异</td><td>突变频率</td></tr>
                       <c:forEach items="${pathwayList5 }" var="temp">
        				<tr><td >${temp.pathGene}</td><td>${temp.pathChange}</td><td>${temp.pathRatio}</td></tr>
        				</c:forEach>
                    </table>
                </div>
                <div><img src="${ctx }/static/img/admin/reportPrint/pic/DNA-1.png" width="626" height="450"/><img src="${ctx }/static/img/admin/reportPrint/pic/DNA-2.png" width="606" height="1045"/></div>
            </div>
        </div>

        <!--细胞周期-->
        <div class="model6">
            <div class="xibao">
                <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
                <div class="sTitle"><img src="${ctx }/static/img/admin/reportPrint/pic/12-2.png" width="63" height="63"/><div>细胞周期</div></div>
            </div>
            <div class="xibao-content">
                <div  style="clearFloat">
                    <img src="${ctx }/static/img/admin/reportPrint/pic/xibao-1.png" width="499" height="527"/>
                    <div><table cellpadding="0" cellspacing="0">
                        <tr><td>基因</td><td>变异类型</td><td>突变频率</td></tr>
                        <c:forEach items="${pathwayList6 }" var="temp">
        				<tr><td >${temp.pathGene}</td><td>${temp.pathChange}</td><td>${temp.pathRatio}</td></tr>
        				</c:forEach>
                    </table></div>
                 
                </div>
                <div><img src="${ctx }/static/img/admin/reportPrint/pic/xibao-2.png" width="1093" height="989"/></div>
            </div>
        </div>

        <!--融合激酶-->
        <div class="model7">
            <div class="rhjm">
                <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
                <div class="sTitle"><img src="${ctx }/static/img/admin/reportPrint/pic/12-2.png" width="63" height="63"/><div>融合激酶</div>
                </div>
            </div>
            <div class="rhjm-content clearFloat">
                <div>
                    <img src="${ctx }/static/img/admin/reportPrint/pic/jihemei-1.png"/>
                    <table cellpadding="0" cellspacing="0">
                        <tr><td>基因</td><td>氨基酸变异</td><td>突变频率</td></tr>
                        <c:forEach items="${pathwayList7 }" var="temp">
        				<tr><td >${temp.pathGene}</td><td>${temp.pathChange}</td><td>${temp.pathRatio}</td></tr>
        				</c:forEach>
                    </table>
                </div>
                <div><img src="${ctx }/static/img/admin/reportPrint/pic/jihemei-2.png" width="586" height="1000"/></div>
            </div>
        </div>

        <!--Hedgehog通路-->
        <div class="model8">
            <div class="Hedgehog">
                <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
                <div class="sTitle"><img src="${ctx }/static/img/admin/reportPrint/pic/12-2.png" width="63" height="63"/><div>Hedgehog通路</div></div>
            </div>
            <div class="Hedgehog-content">
                <div class="clearFloat">
                    <img src="${ctx }/static/img/admin/reportPrint/pic/Hedgehog-1.png" width="681" height="370"/>
                    <div><table cellpadding="0" cellspacing="0">
                        <tr><td>基因</td><td>变异类型</td><td>突变频率</td></tr>
                        <c:forEach items="${pathwayList8 }" var="temp">
        				<tr><td >${temp.pathGene}</td><td>${temp.pathChange}</td><td>${temp.pathRatio}</td></tr>
        				</c:forEach>
                    </table></div>
                    
                </div>
                <div><img src="${ctx }/static/img/admin/reportPrint/pic/Hedgehog-2.png" width="1180" height="1059"/></div>
            </div>
        </div>

        <!--染色质重构-->
        <div class="model9">
            <div class="rszcg">
                <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
                <div class="sTitle"><img src="${ctx }/static/img/admin/reportPrint/pic/12-2.png" width="63" height="63"/><div>染色质重构</div></div>
            </div>
            <div class="rszcg-content">
                <div class="clearFloat">
                    <table cellpadding="0" cellspacing="0">
                        <tr><td>基因</td><td>变异类型</td><td>突变频率</td></tr>
                        <c:forEach items="${pathwayList9 }" var="temp">
        				<tr><td >${temp.pathGene}</td><td>${temp.pathChange}</td><td>${temp.pathRatio}</td></tr>
        				</c:forEach>
                    </table>
                    <img src="${ctx }/static/img/admin/reportPrint/pic/ransezhi-1.png" width="540" height="323"/>
                </div>
                <div><img src="${ctx }/static/img/admin/reportPrint/pic/ransezhi-2.png" width="1177" height="1056"/></div>
            </div>
        </div>

        <!--激素及受体-->
        <div class="model10">
            <div class="jisu">
                <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
                <div class="sTitle">
                    <img src="${ctx }/static/img/admin/reportPrint/pic/12-2.png" width="63" height="63"/>
                    <div>激素及受体</div>
                </div>
            </div>
            <div class="jisu-content  clearFloat">
                <div>
                    <img src="${ctx }/static/img/admin/reportPrint/pic/jisu-1.png" width="607" height="324"/>
                    <table cellpadding="0" cellspacing="0">
                        <tr><td>基因</td><td>氨基酸变异</td><td>突变频率</td></tr>
                        <c:forEach items="${pathwayList10 }" var="temp">
        				<tr><td >${temp.pathGene}</td><td>${temp.pathChange}</td><td>${temp.pathRatio}</td></tr>
        				</c:forEach>
                    </table>
                </div>
                <div>
                    <img src="${ctx }/static/img/admin/reportPrint/pic/jisu-2.png" width="697" height="1199"/>
                </div>
            </div>
        </div>

        <!--免疫检查点-->
        <div class="model11">
            <div class="mianyi">
                <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
                <div class="sTitle">
                    <img src="${ctx }/static/img/admin/reportPrint/pic/12-2.png" width="63" height="63"/>
                    <div>免疫检查点</div>
                </div>
            </div>
            <div class="mianyi-content  clearFloat">
                <div>
                    <img src="${ctx }/static/img/admin/reportPrint/pic/mianyi-1.png" width="578" height="459"/>
                    <table cellpadding="0" cellspacing="0">
                        <tr><td>基因</td><td>氨基酸变异</td><td>突变频率</td></tr>
                        <c:forEach items="${pathwayList11 }" var="temp">
        				<tr><td >${temp.pathGene}</td><td>${temp.pathChange}</td><td>${temp.pathRatio}</td></tr>
        				</c:forEach>
                    </table>
                </div>
                <div>
                    <img src="${ctx }/static/img/admin/reportPrint/pic/mianyi-2.png" width="699" height="1207"/>
                </div>
            </div>
        </div>

        <!--WNT信号通路-->
        <div class="model12">
            <div class="Wnt">
                <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
                <div class="sTitle">
                    <img src="${ctx }/static/img/admin/reportPrint/pic/12-2.png" width="63" height="63"/>
                    <div>WNT信号通路</div>
                </div>
            </div>
            <div class="Wnt-content">
                <div class="clearFloat">
                    <img src="${ctx }/static/img/admin/reportPrint/pic/Wnt-1.png" width="581" height="335"/>
                    <div><table cellpadding="0" cellspacing="0">
                        <tr><td>基因</td><td>变异类型</td><td>突变频率</td></tr>
                       <c:forEach items="${pathwayList12 }" var="temp">
        				<tr><td >${temp.pathGene}</td><td>${temp.pathChange}</td><td>${temp.pathRatio}</td></tr>
        				</c:forEach>
                    </table></div>
                    
                </div>
                <div>
                    <img src="${ctx }/static/img/admin/reportPrint/pic/Wnt-2.png" width="1179" height="1059"/>
                </div>
            </div>
        </div>

        <!--G蛋白偶联受体介导的信号通路-->
        <div class="model13">
            <div class="Gdanbai">
                <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
                <div class="sTitle">
                    <img src="${ctx }/static/img/admin/reportPrint/pic/12-2.png" width="63" height="63"/>
                    <div>G蛋白偶联受体介导的信号通路</div>
                </div>
            </div>
            <div class="Gdanbai-content  clearFloat">
                <div>
                    <img src="${ctx }/static/img/admin/reportPrint/pic/Gdanbai.png" width="664" height="420"/>
                    <table cellpadding="0" cellspacing="0">
                        <tr><td>基因</td><td>氨基酸变异</td><td>突变频率</td></tr>
                        <c:forEach items="${pathwayList13 }" var="temp">
        				<tr><td >${temp.pathGene}</td><td>${temp.pathChange}</td><td>${temp.pathRatio}</td></tr>
        				</c:forEach>
                    </table>
                </div>
                <div>
                    <img src="${ctx }/static/img/admin/reportPrint/pic/Gdanbai-2.png" width="607" height="1040"/>
                </div>
            </div>
        </div>

        <!--细胞能量代谢-->
        <div class="model14">
            <div class="xibaodaixie">
                <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
                <div class="sTitle">
                    <img src="${ctx }/static/img/admin/reportPrint/pic/12-2.png" width="63" height="63"/>
                    <div>细胞能量代谢</div>
                </div>
            </div>
            <div class="xibaodaixie-content">
                <div class="clearFloat">
                    <img src="${ctx }/static/img/admin/reportPrint/pic/xibaodaixie-1.png" width="619" height="343"/>
                    <div><table cellpadding="0" cellspacing="0">
                        <tr><td>基因</td><td>变异类型</td><td>突变频率</td></tr>
                        <c:forEach items="${pathwayList14 }" var="temp">
        				<tr><td >${temp.pathGene}</td><td>${temp.pathChange}</td><td>${temp.pathRatio}</td></tr>
        				</c:forEach>
                    </table></div>
                    
                </div>
                <div>
                    <img src="${ctx }/static/img/admin/reportPrint/pic/xibaodaixie-2.png" width="1179" height="1062"/>
                </div>
            </div>
        </div>

        <!--TGF-β通路-->
        <div class="model15">
            <div class="TGF">
                <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
                <div class="sTitle">
                    <img src="${ctx }/static/img/admin/reportPrint/pic/12-2.png" width="63" height="63"/>
                    <div>TGF-β通路</div>
                </div>
            </div>
            <div class="TGF-div1">
                <img src="${ctx }/static/img/admin/reportPrint/pic/TGF-1.png" width="1184" height="254"/>
            </div>
            <table cellpadding="0" cellspacing="0" class="TGF_table">
                <tr><td>基因</td><td>变异类型</td><td>突变频率</td></tr>
               <c:forEach items="${pathwayList15 }" var="temp">
        				<tr><td >${temp.pathGene}</td><td>${temp.pathChange}</td><td>${temp.pathRatio}</td></tr>
        				</c:forEach>
            </table>
            <div class="TGF-div2">
                <img src="${ctx }/static/img/admin/reportPrint/pic/TGF-2.png" width="1184" height="1047"/>
            </div>
        </div>

        <!--凋亡-->
        <div class="model16">
            <div class="diaowang">
                <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
                <div class="sTitle">
                    <img src="${ctx }/static/img/admin/reportPrint/pic/12-2.png" width="63" height="63"/>
                    <div>凋亡</div>
                </div>
            </div>
            <div class="diaowang-div1">
                <img src="${ctx }/static/img/admin/reportPrint/pic/diaowang-1.png" width="1166" height="209"/>
            </div>
            <table cellpadding="0" cellspacing="0" class="diaowang_table">
                <tr><td>基因</td><td>变异类型</td><td>突变频率</td></tr>
                <c:forEach items="${pathwayList16 }" var="temp">
        				<tr><td >${temp.pathGene}</td><td>${temp.pathChange}</td><td>${temp.pathRatio}</td></tr>
        				</c:forEach>
            </table>
            <div class="diaowang-div2">
                <img src="${ctx }/static/img/admin/reportPrint/pic/diaowang-2.png" width="1178" height="1058"/>
            </div>
        </div>


        <div class="model17">
            <!--转录调节因子-->
            <div class="zhuanlu">
                <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
                <div class="sTitle">
                    <img src="${ctx }/static/img/admin/reportPrint/pic/12-2.png" width="63" height="63"/>
                    <div>转录调节因子</div>
                </div>
            </div>
            <div class="zhuanlu-div1">
                <img src="${ctx }/static/img/admin/reportPrint/pic/zhuanlu-1.png" width="1184" height="206"/>
            </div>
            <table cellpadding="0" cellspacing="0" class="zhuanlu_table">
                <tr><td>基因</td><td>变异类型</td><td>突变频率</td></tr>
                <c:forEach items="${pathwayList17 }" var="temp">
        				<tr><td >${temp.pathGene}</td><td>${temp.pathChange}</td><td>${temp.pathRatio}</td></tr>
        				</c:forEach>
            </table>
            <!--黏附素-->
            <div class="nfs">
                <div class="sTitle">
                    <img src="${ctx }/static/img/admin/reportPrint/pic/12-2.png" width="63" height="63"/>
                    <div>黏附素</div>
                </div>
            </div>
            <div class="nfs-div1">
                <img src="${ctx }/static/img/admin/reportPrint/pic/CDH1.png" width="1184" height="126"/>
            </div>
            <table cellpadding="0" cellspacing="0" class="nfs_table">
                <tr><td>基因</td><td>变异类型</td><td>突变频率</td></tr>
                <c:forEach items="${pathwayList18 }" var="temp">
        				<tr><td >${temp.pathGene}</td><td>${temp.pathChange}</td><td>${temp.pathRatio}</td></tr>
        				</c:forEach>
            </table>
            <!--非受体蛋白酪氨酸激酶-->
            <div class="feishouti">
                <div class="sTitle">
                    <img src="${ctx }/static/img/admin/reportPrint/pic/12-2.png" width="63" height="63"/>
                    <div>非受体蛋白酪氨酸激酶</div>
                </div>
            </div>
            <div class="feishouti-div1">
                <img src="${ctx }/static/img/admin/reportPrint/pic/feishouti.png" width="1182" height="160"/>
            </div>
            <table cellpadding="0" cellspacing="0" class="nfs_table">
                <tr><td>基因</td><td>变异类型</td><td>突变频率</td></tr>
                <c:forEach items="${pathwayList19 }" var="temp">
        				<tr><td >${temp.pathGene}</td><td>${temp.pathChange}</td><td>${temp.pathRatio}</td></tr>
        				</c:forEach>
            </table>
        </div>

        <!--其它-->
        <div class="model18">
            <div class="other">
                <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
                <div class="sTitle">
                    <img src="${ctx }/static/img/admin/reportPrint/pic/12-2.png" width="63" height="63"/>
                    <div>其它</div>
                </div>
            </div>
            <table cellpadding="0" cellspacing="0" class="other_table">
                <tr><td>基因</td><td>变异类型</td><td>突变频率</td></tr>
                <c:forEach items="${pathwayList20 }" var="temp">
        				<tr><td >${temp.pathGene}</td><td>${temp.pathChange}</td><td>${temp.pathRatio}</td></tr>
        				</c:forEach>
            </table>
            <div class="zhu">
                注：附录2中的各表仅列出了患者体细胞突变中的外显子区域非同义突变，其他类型的未列出。
            </div>
        </div>
</s:if>
    
        <!--盖章处-->
        <div class="last">
            <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
            <div>
                本检测只对本次样品负责，若您对检测结果有任何疑问，请于收到报告7个工作日内与我们联系。
            </div>
            <div>
                <p>检测日期：</p>
                <p>审核日期：</p>
            </div>
            <div>
                盖章处：<img src="${ctx }/static/img/admin/reportPrint/pic/zhang.png"/>
            </div>
        </div>

<div class="appendix4_1" id="appendix4_1">
   <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
  <!--<ul style="margin-top:110px;margin-bottom:60px;"><li style="margin-left:150px;list-style-type: square;font-size:120%;"><h1 style="font-weight:normal;font-size:100%;">附录4</h1></li></ul>  --> 
   <div class="title">首度基因FD-180检测panel简介</div><h1 style="color:#fff;font-size:1px;">首度基因FD-180检测panel简介</h1>
   <div class="small_title small_title1">第一部分&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;79个遗传易感基因</div>
   <div class="small_title small_title2">什么是遗传易感性基因？与我们的健康有什么关系？</div>
   <div class="p p1">所谓易感基因,是指在适宜的环境刺激下能够编码遗传性疾病或获得疾病易感性的基因。如果您携带遗传易感基因的致病突变，则您患相应肿瘤的风险就会大大增加。并且，您的子女也将有一定的可能性遗传您的肿瘤易感基因突变。进行肿瘤遗传易感基因检测，能够提前知晓自身患癌风险，采取早期预防措施，制定肿瘤风险管理方案，最大程度上降低您患癌的可能性。</div>
   <div class="p">本次FD-180检测，依据Cosmic数据库记录，从高频到低频，共筛选出与肿瘤最为相关的79个遗传易感基因，包含乳腺癌、卵巢癌、结直肠癌、前列腺癌、胃癌等多种肿瘤。FD-180检测能够最全面、最有效地为您找到癌症发生的致病原因，了解自身基因缺陷，解析多种肿瘤的患病风险，为遗传性肿瘤的预防和早期干预提供可靠保障。</div>
   <table cellspacing="0">
<tr><td>肿瘤名称</td><td>检测基因</td></tr>
<tr><td>乳腺癌</td><td>APC&nbsp;&nbsp;&nbsp;ATM&nbsp;&nbsp;&nbsp;BRCA1&nbsp;&nbsp;&nbsp;BRCA2&nbsp;&nbsp;&nbsp;BRIP1&nbsp;&nbsp;&nbsp;CHEK2&nbsp;&nbsp;&nbsp;NBN&nbsp;&nbsp;&nbsp;PALB2&nbsp;&nbsp;&nbsp;PTEN&nbsp;&nbsp;&nbsp;RB1&nbsp;&nbsp;&nbsp;STK11&nbsp;&nbsp;&nbsp;TP53</td></tr>
<tr><td>卵巢癌</td><td>BRCA1&nbsp;&nbsp;&nbsp;BRCA2&nbsp;&nbsp;&nbsp;MLH1&nbsp;&nbsp;&nbsp;MSH2&nbsp;&nbsp;&nbsp;MSH6&nbsp;&nbsp;&nbsp;NBN&nbsp;&nbsp;&nbsp; PMS1&nbsp;&nbsp;&nbsp;PMS2</td></tr>
<tr><td>子宫内膜癌</td><td>MLH1&nbsp;&nbsp;&nbsp;MSH2&nbsp;&nbsp;&nbsp;MSH6&nbsp;&nbsp;&nbsp;PMS1&nbsp;&nbsp;&nbsp;PMS2&nbsp;&nbsp;&nbsp;PTEN</td></tr>
<tr><td>前列腺癌</td><td>BRCA1&nbsp;&nbsp;&nbsp;BRCA2&nbsp;&nbsp;&nbsp;CHEK2&nbsp;&nbsp;&nbsp;SKT11&nbsp;&nbsp;&nbsp;TP53</td></tr>
<tr><td>胃癌</td><td>CDH1&nbsp;&nbsp;&nbsp;MLH1&nbsp;&nbsp;&nbsp;MSH2&nbsp;&nbsp;&nbsp;MSH6&nbsp;&nbsp;&nbsp;PMS2</td></tr>
<tr><td>胃肠道间质瘤</td><td>KIT&nbsp;&nbsp;&nbsp;PDGFRA</td></tr>
<tr><td>肾癌</td><td>ATM&nbsp;&nbsp;&nbsp;FH&nbsp;&nbsp;&nbsp;FLCN&nbsp;&nbsp;&nbsp;HNF1A&nbsp;&nbsp;&nbsp;MET&nbsp;&nbsp;&nbsp;TSC1&nbsp;&nbsp;&nbsp;TSC2&nbsp;&nbsp;&nbsp;VHL</td></tr>
<tr><td>多发性内分泌瘤</td><td>CDKN1B&nbsp;&nbsp;&nbsp;MEN1&nbsp;&nbsp;&nbsp;RET</td></tr>
<tr><td>甲状腺癌</td><td>CDKN1B&nbsp;&nbsp;&nbsp;MEN1&nbsp;&nbsp;&nbsp;PRKAR1A&nbsp;&nbsp;&nbsp;RET</td></tr>
<tr><td>甲状腺旁癌</td><td>CDC73&nbsp;&nbsp;&nbsp;MEN1</td></tr>
<tr><td>黑色素瘤</td><td>CDK4&nbsp;&nbsp;&nbsp;CDKN2A&nbsp;&nbsp;&nbsp;DDB2&nbsp;&nbsp;&nbsp;HRAS&nbsp;&nbsp;&nbsp;XPC</td></tr>
<tr><td>胰腺癌</td><td>APC&nbsp;&nbsp;&nbsp;BRCA2&nbsp;&nbsp;&nbsp;CDKN2A&nbsp;&nbsp;&nbsp;MEN1&nbsp;&nbsp;&nbsp;PALB2&nbsp;&nbsp;&nbsp;STK11</td></tr>     
   </table>
    </div>
    <div class="appendix4_1_1">
    <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
    <table cellspacing="0">
    <tr><td>结直肠癌</td><td>APC&nbsp;&nbsp;&nbsp;AXIN2&nbsp;&nbsp;&nbsp;BMPR1A&nbsp;&nbsp;&nbsp;ERCC2&nbsp;&nbsp;&nbsp;MLH1&nbsp;&nbsp;&nbsp;MSH2&nbsp;&nbsp;&nbsp;MSH6&nbsp;&nbsp;&nbsp;MUTYH&nbsp;&nbsp;&nbsp;PMS1&nbsp;&nbsp;&nbsp;PMS2&nbsp;&nbsp;&nbsp;SMAD4&nbsp;&nbsp;&nbsp;STK11&nbsp;&nbsp;&nbsp;TP53</td></tr>
<tr><td>肺癌</td><td>HRAS&nbsp;&nbsp;&nbsp;STK&nbsp;&nbsp;&nbsp;XPA&nbsp;&nbsp;&nbsp;XPC</td></tr>
<tr><td>肝癌</td><td>GPC3&nbsp;&nbsp;&nbsp;HNF1</td></tr>
<tr><td>软骨肉瘤</td><td>EXT1&nbsp;&nbsp;&nbsp;EXT2&nbsp;&nbsp;&nbsp;WRN</td></tr>
<tr><td>视网膜母细胞瘤</td><td>RB1</td></tr>
<tr><td>髓母细胞瘤</td><td>NBN&nbsp;&nbsp;&nbsp;PTCH1&nbsp;&nbsp;&nbsp;SUFU</td></tr>
<tr><td>嗜铬细胞瘤/副神经节瘤</td><td>NF1&nbsp;&nbsp;&nbsp;RET&nbsp;&nbsp;&nbsp;SDHAF2&nbsp;&nbsp;&nbsp;SDHB&nbsp;&nbsp;&nbsp;SDHC&nbsp;&nbsp;&nbsp;SDHD&nbsp;&nbsp;&nbsp;VHL</td></tr>
    </table>
    </div>
    <div class="appendix4_2">
   <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
   <div class="small_title small_title1">第二部分&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;89个药物靶点基因及所有有用药指导的基因融合情况</div>
   <div class="small_title small_title2">什么是靶向药物？FD-180能够为患者靶向治疗带来怎样的指导？</div>
   <div class="p p1">分子靶向治疗是针对已知的明确致癌位点（该位点可能是肿瘤细胞内的蛋白，也可能是一个基因片段）从而设计的治疗药物，该靶向药物进入患者体内就会特异性结合致癌位点，通过相互作用杀死特定的肿瘤细胞而不伤害患者自身的正常组织。由于靶向药物作用机理的特异性，靶点基因的突变情况将对靶向治疗的效果有着很大的影响。因此，在治疗之前，对患者自身的基因情况进行分析就显得非常重要。</div>
   <div class="p">本次FD-180检测，依据FDA靶向药物说明书，以及MCG、PCT、NCBI等相关文献积累，筛选出89个靶向用药位点以及所有有用药指导的融合基因用药位点（FD-180产品已涵盖所有药物靶点基因在DNA层面上的全部融合变异），综合各项检测结果，为您推荐最为合适的靶向药物。</div>
   <table cellspacing="0">
      <tr><td colspan="8">89个药物靶点基因总表</td></tr>     
      <tr><td>ABL1</td><td>CCND1</td><td>EGFR</td><td>FLT4</td><td>JAK2</td><td>MYCN</td><td>PTEN</td><td>TNK2</td></tr>
<tr><td>AKT1</td><td>CD274</td><td>EPHA2</td><td>FRK</td><td>JAK3</td><td>NF1</td><td>PTK6</td><td>TP53</td></tr>
<tr><td>ALK</td><td>CDK4</td><td>ERBB2</td><td>GNA11</td><td>KDR</td><td>NRAS</td><td>PTPN11</td><td>TSC1</td></tr>
<tr><td>AR</td><td>CDK6</td><td>ERBB3</td><td>GNAQ</td><td>KIT</td><td>NTRK1</td><td>RAF1</td><td>TSC2</td></tr>
<tr><td>ARAF</td><td>CDKN2A</td><td>ERBB4</td><td>HCK</td><td>KRAS</td><td>PDGFRA</td><td>RET</td><td>VEGFA</td></tr>
<tr><td>AXL</td><td>CRLF2</td><td>ESR1</td><td>HRAS</td><td>LCK</td><td>PDGFRB</td><td>ROS1</td><td>VEGFA</td></tr>
<tr><td>BAP1</td><td>CSF1R</td><td>FGFR1</td><td>IDH1</td><td>LYN</td><td>PGR</td><td>SMAD4</td><td>VEGFA</td></tr>
<tr><td>BLK</td><td>CTLA4</td><td>FGFR2</td><td>IDH2</td><td>MAP2K1</td><td>PIK3CA</td><td>SMO</td><td>VEGFA</td></tr>
<tr><td>BRAF</td><td>CTNNB1</td><td>FGFR3</td><td>IGF1R</td><td>MAP2K2</td><td>PIK3CD</td><td>SRC</td><td>VEGFA</td></tr>
<tr><td>BRCA1</td><td>DDR1</td><td>FGFR4</td><td>INSR</td><td>MAP3K8</td><td>PIK3R1</td><td>STK11</td><td>VEGFA</td></tr>
<tr><td>BRCA2</td><td>DDR2</td><td>FLT1</td><td>ITK</td><td>MET</td><td>PLCG2</td><td>TEK</td><td>VEGFA</td></tr>
<tr><td>BTK</td><td>DNMT3A</td><td>FLT3</td><td>JAK1</td><td>MTOR</td><td>PTCH1</td><td>TNFSF11</td><td>VEGFA</td></tr>
      
   </table>
   <table cellspacing="0">
      <tr><td colspan="7">常见融合基因列表</td></tr> 
      <tr><td>BCR-ABL1</td><td>CD74-ROS1</td><td>EML4-ALK</td><td>FIP1L1-PDGFRA</td><td>KIF5B-RET</td><td>NPM1-ALK</td><td>ZMYM2-FGFR1</td></tr>
      
      </table>
   </div>
   <div class="appendix4_2 appendix4_2_2">
   <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
   <div class="p p2">FD-180将综合不同癌种基因靶点的突变，表达量及融合情况，给出针对该癌种的最佳靶向药物治疗方案。同时，FD-180检测也会全面覆盖其他癌种的药物靶点，为您找到任何跨适应症的可行治疗方案。</div>
      <table cellspacing="0">
      <col style="width:15%;"/>
        <col style="width:85%;"/>
      <tr><td colspan="2">五大常见癌种的药物靶点基因列表</td></tr> 
<tr><td rowspan="3">肺癌</td><td>基因突变：BRAF&nbsp;&nbsp;&nbsp;EGFR&nbsp;&nbsp;&nbsp;ERBB2&nbsp;&nbsp;&nbsp;KRAS&nbsp;&nbsp;&nbsp;MEK1&nbsp;&nbsp;&nbsp;MET&nbsp;&nbsp;&nbsp;NRAS&nbsp;&nbsp;&nbsp;PIK3CA&nbsp;&nbsp;&nbsp;PTEN</td></tr>
<tr><td>拷贝数变异：BIM&nbsp;&nbsp;&nbsp;EGFR&nbsp;&nbsp;&nbsp;FGFR1&nbsp;&nbsp;&nbsp;FGFR2&nbsp;&nbsp;&nbsp;FGFR3&nbsp;&nbsp;&nbsp;FLT1&nbsp;&nbsp;&nbsp;FLT3&nbsp;&nbsp;&nbsp;FLT4&nbsp;&nbsp;&nbsp;KDR&nbsp;&nbsp;&nbsp;PDGFRA&nbsp;&nbsp;&nbsp;PDGFRB&nbsp;&nbsp;&nbsp;PDL1&nbsp;&nbsp;&nbsp;VEGF</td></tr>
<tr><td>基因融合：ALK&nbsp;&nbsp;&nbsp;NTRK1&nbsp;&nbsp;&nbsp;ROS1</td></tr>
<tr><td rowspan="2">肠癌</td><td>基因突变：BRAF&nbsp;&nbsp;&nbsp;EGFR&nbsp;&nbsp;&nbsp;ERBB2&nbsp;&nbsp;&nbsp;FLT3&nbsp;&nbsp;&nbsp;KIT&nbsp;&nbsp;&nbsp;KRAS&nbsp;&nbsp;&nbsp;MET&nbsp;&nbsp;&nbsp;NRAS&nbsp;&nbsp;&nbsp;PIK3CA&nbsp;&nbsp;&nbsp;PTEN&nbsp;&nbsp;&nbsp;RETTSC1&nbsp;&nbsp;&nbsp;TSC2</td></tr>
<tr><td>拷贝数变异：EGFR&nbsp;&nbsp;&nbsp;FLT1&nbsp;&nbsp;&nbsp;FLT4&nbsp;&nbsp;&nbsp;KDR&nbsp;&nbsp;&nbsp;PDGFRA&nbsp;&nbsp;&nbsp;PDGFRB&nbsp;&nbsp;&nbsp;VEGF</td></tr>
<tr><td rowspan="2">胃癌</td><td>基因突变：ERBB2&nbsp;&nbsp;&nbsp;HGF&nbsp;&nbsp;&nbsp;MET&nbsp;&nbsp;&nbsp;PIK3CA&nbsp;&nbsp;&nbsp;PTEN</td></tr>
<tr><td>拷贝数变异：ERBB2&nbsp;&nbsp;&nbsp;KDR</td></tr>
<tr><td rowspan="2">肝癌</td><td>基因突变：BRAF&nbsp;&nbsp;&nbsp;FGFR2&nbsp;&nbsp;&nbsp;HRAS&nbsp;&nbsp;&nbsp;KIT&nbsp;&nbsp;&nbsp;KRAS&nbsp;&nbsp;&nbsp;NRAS&nbsp;&nbsp;&nbsp;PDGFRA&nbsp;&nbsp;&nbsp;RET</td></tr>
<tr><td>拷贝数变异：FLT1&nbsp;&nbsp;&nbsp;FLT3&nbsp;&nbsp;&nbsp;FLT4&nbsp;&nbsp;&nbsp;KDR&nbsp;&nbsp;&nbsp;PDGFRA</td></tr>
<tr><td rowspan="2" style="border-bottom:none;">乳腺癌</td><td>基因突变：CCND1&nbsp;&nbsp;&nbsp;CDK4&nbsp;&nbsp;&nbsp;CDK6&nbsp;&nbsp;&nbsp;CDKN2A&nbsp;&nbsp;&nbsp;EGFR&nbsp;&nbsp;&nbsp;ERBB2&nbsp;&nbsp;&nbsp;ESR1&nbsp;&nbsp;&nbsp;FGFR1&nbsp;&nbsp;&nbsp;FGFR2&nbsp;&nbsp;&nbsp;HGF&nbsp;&nbsp;&nbsp;MET&nbsp;&nbsp;&nbsp;PIK3CA&nbsp;&nbsp;&nbsp;PTEN&nbsp;&nbsp;&nbsp;TSC1&nbsp;&nbsp;&nbsp;TSC2</td></tr>
<tr><td>拷贝数变异：ER&nbsp;&nbsp;&nbsp;ERBB2&nbsp;&nbsp;&nbsp;ESR1</td></tr>     
      </table>
         <div class="small_title small_title1">药物靶点基因变异与用药指导示例</div>
   <div class="small_title small_title3">ALK与用药</div>
   <div class="p p1">ALK最早是在间变性大细胞淋巴瘤(anap1astic large cell lymphoma, ALCL)的一个亚型中被发现，并因此得名。研究表明，ALK主要表达于发育中的中枢和外周神经系统，说明ALK在神经系统的正常发育和功能方面发挥作用[PMID:15583856]。此外，ALK易位在肿瘤的发生、发展过程中也起到了关键作用。</div>
   <div class="p">2007年Soda等人首次在肺癌发现具有转化活性的EML4（棘皮动物微管结合蛋白4）-ALK基因重排现象，促使肺癌发生和进展[PMID:17625570]。EML4和ALK两个基因分别位于人类2号染色体的p21带和p23带，基因重排由2号染色体短臂插入引起，形成新的融合蛋白EML4-ALK。目前已有超过20种不同的ALK易位形式在多种癌症中被发现，如图1所示。</div>
   </div>
   <div class="appendix4_2">
   <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
   <div class="p p2">EML4-ALK基因重排，又叫ALK阳性（ALK+），主要发生在非小细胞肺癌（NSCLC）中，约占3%-7%[PMID: 22311682]；在腺癌、年轻患者（<60岁）以及不吸烟的人群中发生率较高。尽管ALK阳性NSCLC在肺癌中的比例很低，但在我国每年新发病例数仍然接近35000例。Soda等人的另一项研究表明，EML4-ALK可诱导肺癌的发生；对ALK阳性的NSCLC小鼠给予ALK酪氨酸激酶抑制剂（tyrosine kinase inhibitor, TKI）后，肿瘤可迅速消退[PMID: 19064915]。</div>
   <img src="${ctx }/static/img/admin/reportPrint/pic/appendix4_2_3.png">
   <div class="tply">图片来源：https://www.mycancergenome.org/content/disease/lung-cancer/alk/66/</div>
   <div class="p p1">克唑替尼是一种口服型小分子ATP竞争性的ALK抑制剂，它可以抑制c-Met激酶，破坏c-Met的信号转导通路，进而抑制ALK融合基因，达到抑制肿瘤细胞生长的效果。已有研究证实，是否存在EML4-ALK融合基因与克唑替尼的疗效密切相关[PMID:23639470]。因此，对肺癌患者的EML4-ALK融合基因检测具有十分重要的意义。</div>
   <div class="p">尽管ALK阳性 NSCLC患者对克唑替尼获益明显，但大部分患者往往在1-2年内出现耐药，且中枢神经系统的复发进展较为常见[PMID: 21502504]。针对耐药机制主要有两个方面：</div>
   <div class="p">1.ALK继发性耐药突变</div>
   <div class="p">ALK继发性耐药突变约占37%，主要包括ALK激酶区突变（28%）和ALK拷贝数扩增（9%）。ALK激</div>
   </div>
   <div class="appendix4_2">
   <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
   <div class="p p2 p3">酶区的多种突变可引发克唑替尼耐药，如L1196M、L1152R、 G1202R、G1269A、1151Tins、S1206Y、C1156Y、F1174C、D1203N等；其中较为常见的为L1196M，它是一种类似于EGFR T790M的看家基因突变。针对这种耐药突变，可以选择第二代ALK抑制剂，如已上市的艾乐替尼（alectinib）、色瑞替尼（ceritinib）以及在临床试验期的AP26113进行治疗。</div>
   <div class="p">2.驱动基因转换</div>
   <div class="p">ALK阳性的肿瘤细胞主要通过ALK及其下游信号通路来控制肿瘤细胞的生长和迁移。当该信号通路被阻断以后，肿瘤细胞则会通过转换驱动基因来激活其他的信号通路。针对这种耐药情况，需通过基因检测，寻找其他驱动基因突变，进行靶向药物联合抑制或化疗联合抑制治疗。</div>
   <div class="p">随着ALK检测的大范围开展，研究还发现了ALK与EGFR双突变的病例[PMID:24443522; 22104224]，临床上这些双突变的患者对EGFR-TKI及ALK-TKI均可能有疗效，可针对基因检测情况选择不同的治疗方案。而对于病理而言，EGFR与ALK的基因检测对指导临床靶向用药具有重要意义，为患者的个体化治疗提供更多的选择机会。</div>
   <div class="small_title small_title3">KRAS与用药</div>
   <div class="p p1">RAS基因家族与人类肿瘤相关的基因有三种--HRAS、KRAS和NRAS，分别定位于11、12和1号染色体上。KRAS基因编码具有GTP酶活性、分子量为21kD的RAS蛋白，又称为p21蛋白。该基因是EGFR信号通路中的一个关键的下游信号分子，也是RAS基因家族中对人类肿瘤影响最大的基因，对细胞的生长存活和分化等功能具有重要的影响。KRAS基因突变后导致其编码的p21蛋白GTP酶活性降低，从而使得信号传导一直处于激活状态，持续刺激细胞的生长、发育、增殖，最终引发肿瘤。</div>
   <div class="p">大约1/3的人类恶性肿瘤中发现了ＲAS基因突变，其中第12、13、61位密码子突变最为常见。在肺腺癌中90%的RAS基因突变为KRAS突变，并且NSCLC中近97%KRAS突变发生在12（80%~90%）或13（5%~12%）位密码子上[PMID: 20108024]；而肺鳞癌中KRAS突变比较罕见[PMID: 12460918; 20108024]。此外，KRAS基因突变可以引起 EGFＲ 信号通路的配体非依赖性持续性激活， 进而导致 EGFＲ-TKI 原发性耐药[PMID: 20680106]，同时也与多种化疗方案的耐药性相关。因此，在TKIs治疗前进行KRAS基因突变筛查对指导肿瘤患者个体化用药非常重要。</div>
   </div>
   <div class="appendix4_2">
   <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
   <img src="${ctx }/static/img/admin/reportPrint/pic/appendix4_2_5.png">
   <div class="p p1">近年来，KRAS基因突变患者的治疗困局正在逐步打破，主要的治疗策略包括：抑制KRAS，抑制KRAS膜定位、抑制KRAS下游信号通路，以及抑制KRAS突变协同致死基因[1]。</div>
   <div class="p">安卓健是针对RAS的靶向抗癌药物，已获获准通过用于治疗肝癌的孤儿药认证。该药目前正在非小细胞肺癌临床二期试验，很可能在不久的将来打破NSCLC患者出现KRAS突变后无针对性药物的局面。</div>
   <div class="p">安卓健在癌细胞里扮演蛋白质脂肪酸转移酵素抑制剂(protein farnesyltransferase inhibitor, FTI)的角色（作用机制如下图），通过抑制Ras的活性，进而影响其下游讯息传递因子，包括抑制PI3K的表现量与降低Akt的磷酸化程度；以及活化AMPK促使TSC1/TSC2结合更紧密，大大的降低mTORC1的活性，开启癌细胞的自噬作用机制；安卓健亦活化MEK1/ERK1/2的路径，此一路径亦会加乘癌细胞的自噬作用机制；另外，安卓健亦会使粒线体(mitochondrion)不稳定，降低Bcl-2、Bcl-XL与MCl-1的蛋白质量，此现象能诱发癌细胞走向程序性凋亡的路径。安卓健能同时诱导癌细胞启动自噬作用与程序性凋亡的机制，实验室的细胞毒性测试亦指出安卓健对多数的癌细胞(脑癌、淋巴癌、血癌、肺腺癌、乳癌、肝癌、胰脏癌、胃癌、直肠癌、摄护腺癌与膀胱癌等)都有毒杀效果(杀伤效应)。</div>
   <div class="p">此外，由于索拉菲尼在KRAS/ＲAF/MEK/ERK通路上的作用，有研究显示，KRAS基因突变的患者可能受益于索拉非尼，而这部分患者往往对EGFR-TKI的治疗效果不理想[PMID: 24166906]。另一项研究结果显示，10例携带KRAS基因突变的晚期NSCLC患者接受索拉非尼治疗后，9例得到了疾病控制[PMID:20421765]，证明索拉菲尼对治疗KRAS突变的NSCLC具有一定疗效。</div>
   </div>
   <div class="appendix4_3">
   <img src="${ctx }/static/img/admin/reportPrint/pic/head.png">
   <div class="small_title small_title1">第三部分&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;26个化药相关基因</div>
   <div class="p p1">大量临床研究证实，在肿瘤细胞中，与化疗药物作用有效性或者代谢相关的基因，其突变情况会对化疗疗效有着重要影响，检测相关基因的变异情况是选择化疗药物的必要依据。</div>
   <div class="p">本次FD-180检测，依据PGKB数据库，筛选出与肿瘤化药敏感性/毒副反应相关的26个基因，共涉及30种化疗药物及方案，为医生设计化疗或组合治疗时提供一定的药物敏感性及毒副反应建议。</div>
   <table cellspacing="0">
      <tr><td colspan="8">26个化药相关基因列表</td></tr>
      <tr><td>ABCB1</td><td>ATIC</td><td>CBR3</td><td>CDA</td><td>CYP3A4</td><td>CYP2C8</td><td>CYP2C19</td><td>CYP2D6</td></tr>
<tr><td>CYP19A1</td><td>C8orf34</td><td>DPYD</td><td>ERCC1</td><td>ERCC2</td><td>GSTP1</td><td>MTHFR</td><td>MTRR</td></tr>
<tr><td>NQO1</td><td>RRM1</td><td>SLIT1</td><td>SOD2</td><td>TP53</td><td>TPMT</td><td>TYMS</td><td>UGT1A1</td></tr>
<tr><td>UGT1A9</td><td>UMPS</td><td>XRCC1</td><td>XPC</td><td></td><td></td><td></td><td></td></tr>     
   </table>
   <table cellspacing="0">
   <col style="width:15%;"/>
        <col style="width:85%;"/>
      <tr><td colspan="2">五大常见癌种的化疗药物基因</td></tr>
      <tr><td colspan="2" class="azlx">肺癌</td></tr>
      <tr><td>化药相关基因</td><td>ABCB1&nbsp;&nbsp;&nbsp;AXIN2&nbsp;&nbsp;&nbsp;C8orf34&nbsp;&nbsp;&nbsp;CDA&nbsp;&nbsp;&nbsp;CYP2C19&nbsp;&nbsp;&nbsp;CYP2C8&nbsp;&nbsp;&nbsp;CYP3A4&nbsp;&nbsp;&nbsp;DPYD&nbsp;&nbsp;&nbsp;ERCC1&nbsp;&nbsp;&nbsp;ERCC2&nbsp;&nbsp;&nbsp;ERCC4&nbsp;&nbsp;&nbsp;ESR1&nbsp;&nbsp;&nbsp;ESR2&nbsp;&nbsp;&nbsp;GSTP1&nbsp;&nbsp;&nbsp;MTHFR&nbsp;&nbsp;&nbsp;PIK3CA&nbsp;&nbsp;&nbsp;SLIT1&nbsp;&nbsp;&nbsp;SOD2&nbsp;&nbsp;&nbsp;TYMS&nbsp;&nbsp;&nbsp;UGT1A1&nbsp;&nbsp;&nbsp;UGT1A9&nbsp;&nbsp;&nbsp;VEGFA&nbsp;&nbsp;&nbsp;XPA&nbsp;&nbsp;&nbsp;XPC</td></tr>
      <tr><td>化疗药物列表</td><td>顺铂、卡铂、培美曲塞、多西他赛、依托泊苷、紫杉醇、吉西他滨、伊立替康</td></tr>
      <tr><td colspan="2" class="azlx">肠癌</td></tr>
      <tr><td>化药相关基因</td><td>ABCB1&nbsp;&nbsp;&nbsp;C8orf34&nbsp;&nbsp;&nbsp;CDA&nbsp;&nbsp;&nbsp;DPYD&nbsp;&nbsp;&nbsp;ERCC1&nbsp;&nbsp;&nbsp;ERCC2&nbsp;&nbsp;&nbsp;UGT1A1&nbsp;&nbsp;&nbsp;UGT1A9&nbsp;&nbsp;&nbsp;VEGFA</td></tr>
      <tr><td>化疗药物列表</td><td>伊立替康、卡培他滨、奥沙利铂、FOLFOX、CapeOX(卡培他滨+奥沙利铂)</td></tr>
      <tr><td colspan="2" class="azlx">胃癌</td></tr>
      <tr><td>化药相关基因</td><td>ABCB1&nbsp;&nbsp;&nbsp;AXIN2&nbsp;&nbsp;&nbsp;C8orf34&nbsp;&nbsp;&nbsp;CCND1&nbsp;&nbsp;&nbsp;CDA&nbsp;&nbsp;&nbsp;CYP2C8&nbsp;&nbsp;&nbsp;CYP3A4&nbsp;&nbsp;&nbsp;DPYD&nbsp;&nbsp;&nbsp;EGFR&nbsp;&nbsp;&nbsp;ERCC1&nbsp;&nbsp;&nbsp;ERCC2&nbsp;&nbsp;&nbsp;ERCC4&nbsp;&nbsp;&nbsp;ESR1&nbsp;&nbsp;&nbsp;GSTP1&nbsp;&nbsp;&nbsp;MTHFR&nbsp;&nbsp;&nbsp;PIK3CA&nbsp;&nbsp;&nbsp;SOD2&nbsp;&nbsp;&nbsp;TYMS&nbsp;&nbsp;&nbsp;UGT1A1&nbsp;&nbsp;&nbsp;UGT1A9&nbsp;&nbsp;&nbsp;XPA&nbsp;&nbsp;&nbsp;XPC</td></tr>
      <tr><td>化疗药物列表</td><td>顺铂、卡铂、紫杉醇、伊立替康、卡培他滨、多西他赛、 奥沙利铂、氟尿嘧啶、依托泊苷</td></tr>
      <tr><td colspan="2" class="azlx">肝癌</td></tr>
      <tr><td>化药相关基因</td><td>ABCB1&nbsp;&nbsp;&nbsp;CCND1&nbsp;&nbsp;&nbsp;CDA&nbsp;&nbsp;&nbsp;EGFR&nbsp;&nbsp;&nbsp;ERCC1&nbsp;&nbsp;&nbsp;ERCC2&nbsp;&nbsp;&nbsp;ERCC4&nbsp;&nbsp;&nbsp;ESR1&nbsp;&nbsp;&nbsp;ESR2&nbsp;&nbsp;&nbsp;GSTP1&nbsp;&nbsp;&nbsp;PIK3CA&nbsp;&nbsp;&nbsp;TYMS&nbsp;&nbsp;&nbsp;XPA&nbsp;&nbsp;&nbsp;XPC</td></tr>
      <tr><td>化疗药物列表</td><td>吉西他滨、顺铂、氟尿嘧啶</td></tr>
   </table> 
   </div>
   <div class="appendix4_3_2">
   <table cellspacing="0">
   <col style="width:15%;"/>
        <col style="width:85%;"/>
   <tr><td colspan="2" class="azlx">乳腺癌</td></tr>
      <tr><td>化药相关基因</td><td>ABCB1&nbsp;&nbsp;&nbsp;AXIN2&nbsp;&nbsp;&nbsp;CCND1&nbsp;&nbsp;&nbsp;CDA&nbsp;&nbsp;&nbsp;CYP19A1&nbsp;&nbsp;&nbsp;CYP2A6&nbsp;&nbsp;&nbsp;CYP2C19&nbsp;&nbsp;&nbsp;CYP2C8&nbsp;&nbsp;&nbsp;CYP3A4&nbsp;&nbsp;&nbsp;DPYD&nbsp;&nbsp;&nbsp;EGFR&nbsp;&nbsp;&nbsp;ERCC1&nbsp;&nbsp;&nbsp;ERCC2&nbsp;&nbsp;&nbsp;ERCC4&nbsp;&nbsp;&nbsp;ESR1&nbsp;&nbsp;&nbsp;ESR2&nbsp;&nbsp;&nbsp;GSTP1&nbsp;&nbsp;&nbsp;MTHFR&nbsp;&nbsp;&nbsp;MTRR&nbsp;&nbsp;&nbsp;PIK3CA&nbsp;&nbsp;&nbsp;SLIT1&nbsp;&nbsp;&nbsp;SOD2&nbsp;&nbsp;&nbsp;TYMS&nbsp;&nbsp;&nbsp;VEGFA&nbsp;&nbsp;&nbsp;XPA&nbsp;&nbsp;&nbsp;XPC</td></tr>
      <tr><td>化疗药物列表</td><td>卡培他滨、多西他赛、顺铂、卡铂、紫杉醇、依托泊苷、吉西他滨、阿霉素、5氟尿嘧啶、环磷酰胺、甲氨喋呤</td></tr>
   </table>
   </div>
<script src="${ctx }/static/plugin/jquery/1.11.3/jquery.min.js"></script>
<script src="${ctx }/static/js/admin/reportPrint/tumour_base.js"></script>
<script src="${ctx }/static/js/admin/reportPrint/view.js"></script>
<script src="${ctx }/static/js/admin/reportPrint/tumour_180_view.js"></script>
<script>
String.prototype.trim=function() {
    return this.replace(/(^\s*)|(\s*$)/g,'');
}
var high_frequency_gene=document.getElementsByClassName("high_frequency")[0].getElementsByTagName("table")[0];
high_frequency_length=high_frequency_gene.rows.length;
for(i=3;i<=high_frequency_length;i++){
    var patt = new RegExp('^未');
    var length=high_frequency_gene.rows[i-1].cells.length;
    str1=high_frequency_gene.rows[i-1].cells[length-1].innerText;
    str=str1.trim();
    if(!patt.test(str)){
        var length=high_frequency_gene.rows[i-1].cells.length;
        high_frequency_gene.rows[i-1].cells[length-1].style.color='#E36C0A';
        if(length==3){
            high_frequency_gene.rows[i-1].cells[0].style.color='#E36C0A';
        }else{
            for(j=i-1;j>=3;j--){
                var length1=high_frequency_gene.rows[j-1].cells.length;
                if(length1==3){
                    high_frequency_gene.rows[j-1].cells[0].style.color='#E36C0A';
                    break;
                }
            }
        }
    }
}

var str="";
var ude1=document.getElementById("ude1");
if(ude1){
var str1_nostyle=ude1.getElementsByTagName("span");
var str1_nostyle_length=str1_nostyle.length;
var str1=[];
for(i=0;i<str1_nostyle_length;i++){
    if(str1_nostyle[i].style.fontSize=='15px'&&str1_nostyle[i].style.fontFamily=="'微软雅黑','sans-serif'"&&str1_nostyle[i].style.color=='#E36C0A'){
        str1.push(str1_nostyle[i]);
    }
}
var length=str1.length;
for(j=0;j<length;j++){
    if(j%2==0){
        str+=str1[j].innerText;
    }
}
var vir_gene=document.getElementsByClassName("variation")[0].getElementsByTagName("table")[0];
vir_gene_length=vir_gene.rows.length;
for(i=3;i<vir_gene_length;i++){
    var patt1=vir_gene.rows[i-1].cells[0].innerText.trim();
    var patt = new RegExp(patt1);
    if(patt.test(str)){
        vir_gene.rows[i-1].cells[0].style.color='#E36C0A';
    }
}
}

var str="";
var ude1=document.getElementById("ude2");
if(ude1){
var str1_nostyle=ude1.getElementsByTagName("span");
var str1_nostyle_length=str1_nostyle.length;
var str1=[];
for(i=0;i<str1_nostyle_length;i++){
    if(str1_nostyle[i].style.fontSize=='15px'&&str1_nostyle[i].style.fontFamily=="'微软雅黑','sans-serif'"&&str1_nostyle[i].style.color=='rgb(227, 108, 10)'){
        str1.push(str1_nostyle[i]);
    }
}
var length=str1.length;
for(j=0;j<length;j++){
    if(j%2==0){
        str+=str1[j].innerText;
    }
}
var vir_gene=document.getElementsByClassName("variation")[0].getElementsByTagName("table")[1];
vir_gene_length=vir_gene.rows.length;
for(i=3;i<=vir_gene_length;i++){
    var patt1=vir_gene.rows[i-1].cells[0].innerText.trim();
    var patt = new RegExp(patt1);
    if(patt.test(str)){
        vir_gene.rows[i-1].cells[0].style.color='#E36C0A';
    }
}
}
</script>
</body>
</html>