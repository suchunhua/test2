<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<title>FD-Exome疾病风险等级定义</title>
<link rel="stylesheet" href="${ctx}/static/css/exomeBase.css?rev=@@hash">
<style type="text/css">
.fl4{padding-top:1px;}
.fl4 div{font-weight: bold;font-size: 150%;margin: 50px auto;color: #f4ba5d;font-family: sans-serif;}
.fl4 table{border: 2px solid #f4ba5d;text-align: center;margin:auto;font-size:70%;}
.fl4 td{border-bottom: 2px solid #f4ba5d;border-right: 2px solid #f4ba5d;line-height: 1.8em;padding-left: 10px;height: 55px;}
.fl4 td:nth-of-type(1){width: 15%;}
.fl4 tr:nth-of-type(1),.fl4 tr:nth-of-type(2){font-weight: bold;}
.fl4 td:nth-of-type(2){width: 15%;}
.fl4 td:nth-of-type(3){width: 70%;}
.fl4 tr:nth-last-child(1) td,.fl4 tr:nth-last-child(2) td,.fl4 tr:nth-last-child(3) td,.fl4 tr:nth-last-child(4) td,.fl4 tr:nth-last-child(5) td,.fl4 tr:nth-last-child(6) td
,.fl4 tr:nth-last-child(7) td,.fl4 tr:nth-last-child(8) td{background-color:#F4E6C4 }
.fl4_1{padding-top:1px;}
.fl4_1 table{width: 100%;border: 1px solid #f4ba5d;}
.fl4_1 table:nth-of-type(1) td:nth-of-type(1){width: 15%;}
.fl4_1 table:nth-of-type(1) td:nth-of-type(2){width: 15%;}
.fl4_1 table:nth-of-type(1) td:nth-of-type(3){width: 70%;}
.fl4_1 table td{border-bottom: 2px solid #f4ba5d;border-right: 2px solid #f4ba5d;line-height: 1.7em;height: 55px;}
.fl4_1 table:nth-of-type(1) tr:nth-of-type(1) td{text-align: left;font-weight: bold;}
.fl4_1 table:nth-of-type(1) tr:nth-of-type(2) td{font-weight: bold;}
.fl4_all td{border-bottom: 2px solid #f4ba5d;border-right: 2px solid #f4ba5d;line-height: 1.7em;height: 50px;}
.fl4_all tr:nth-of-type(1),.fl4_all tr:nth-of-type(2){font-weight: bold;}
.fl4_all td:nth-of-type(1){width: 25%;}
.fl4_all td:nth-of-type(2){width: 75%;text-align: left;}
</style>
</head>
<body>
	<%@ include file="exome_top.jsp"%>
	<div class="wrap">
		<div class="fl4_wrap">
        <div class="fl4 fl4_page1" id="fl4">
            <div class="fl4_div">附录&nbsp;1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FD-Exome疾病风险等级定义</div><h2 style="color:#fff;display:inline-block;vertical-align:top;font-size: 1px;">附录1</h2>
            <table>
                <tbody><tr><td colspan="3">首度基因依据基因的致病强弱、纯杂合状态以及变异位点情况，综合评判患病风险，具体等级定义如下：</td></tr>
				<tr><td>风险等级</td><td>患病风险</td><td>评判标准示例</td></tr>
        		<tr style="background-color: #F2F2F2"><td>FD-T-1A</td><td>极高</td><td style="text-align: left">受检者检测到有肿瘤易感基因（强致瘤性）变异，且变异记载为明确致病，显性处于杂合状态或隐性处于纯合状态。提示其本人患癌风险极高。</td></tr>
        		<tr style="background-color: #F2F2F2"><td>FD-T-1B</td><td>极高</td><td style="text-align: left">受检者检测到有肿瘤易感基因（中等致瘤性）变异，且变异记载为明确致病，显性处于杂合状态。提示其本人患癌风险极高。</td></tr>
        		<tr style="background-color: #F2F2F2"><td>FD-T-2A</td><td>很高</td><td style="text-align: left">受检者检测到有肿瘤易感基因（强致瘤性）变异，且变异记载为疑似致病，显性处于杂合状态或隐性处于纯合状态。提示其本人患癌风险很高。</td></tr>
        		<tr style="background-color: #F2F2F2"><td>FD-T-2B</td><td>很高</td><td style="text-align: left">受检者检测到有肿瘤易感基因（中等致瘤性）变异，且变异记载为疑似致病，显性处于杂合状态或隐性处于纯合状态。提示其本人患癌风险很高。</td></tr>
        		<tr style="background-color: #F2F2F2"><td>FD-T-3</td><td>增加</td><td style="text-align: left">受检者检测到有肿瘤易感基因（弱致瘤性）变异，且变异记载为明确致病，隐性处于杂合状态提示其本人患癌风险增加。</td></tr>
        		<tr style="background-color: #F2F2F2"><td>FD-T-4</td><td>可能增加</td><td style="text-align: left">受检者检测到有肿瘤易感基因（弱致瘤性）变异，且变异记载为疑似致病，隐性处于杂合状态。提示其本人患癌风险可能增加。</td></tr>
        		<tr style="background-color: #F2F2F2"><td>FD-T-5</td><td>正常</td><td style="text-align: left">受检者未检测到肿瘤相关的致病或疑似致病变异。<br>提示本人的患病风险和正常人一致</td></tr>
        		<tr style="background-color: #F2F2F2"><td colspan="2">患病风险备注</td><td style="text-align: left">患病风险分为5个等级：极高&gt;&gt;很高&gt;增加&gt;可能增加&gt;正常<br>基因变异分为2个等级：明确致病&gt;疑似致病</td></tr>	
        		<tr><td>FD-H-1A</td><td>极高</td><td style="text-align: left">疾病风险为单基因遗传病，受检者携带的基因变异明确记载为致病，处于纯合状态，或显性遗传的杂合状态。提示其本人患病风险极高。</td></tr>
        		<tr><td>FD-H-1B</td><td>很高</td><td style="text-align: left">疾病风险为单基因遗传病，受检者携带的基因变异记载为疑似致病，处于疑似致病的纯合状态，或显性遗传的杂合状态。提示其本人患病风险很高。</td></tr>
        		<tr><td>FD-H-2A</td><td>增加</td><td style="text-align: left">疾病风险为多基因遗传病，受检者携带的基因变异明确记载为致病，处于纯合状态，或显性遗传的杂合状态。多基因遗传病的患病还受环境因素影响，提示其本人患病风险增加。</td></tr>
        		<tr><td>FD-H-2B</td><td>增加</td><td style="text-align: left">疾病风险为多基因遗传病，受检者携带的基因变异记载为疑似致病，处于纯合状态，或显性遗传的杂合状态。多基因遗传病的患病还受环境因素影响，提示其本人患病风险增加。</td></tr>
        		<tr><td>FD-H-3</td><td>可能增加</td><td style="text-align: left">疾病风险为单基因或多基因遗传病，受检者携带的基因变异记载为风险增加，即该基因变异无明确的功能性研究，仅通过人群频率（患病和不患病的两群人）进行对比，结果有统计学差异。提示其本人患病风险可能增加。</td></tr>
            	<tr><td>FD-H-4</td><td>正常</td><td style="text-align: left">疾病风险为单基因或多基因遗传病，受检者携带的基因变异记载为致病或疑似致病，处于非显性遗传的杂合状态。提示本人的患病风险和正常人一致，不处于致病状态。由于存在遗传概率，子女患病风险可能增加。</td></tr>
        		<tr><td>FD-H-5</td><td>较低</td><td style="text-align: left">受检者携带的基因变异状态处于疾病保护状态，提示其本人患病风险较正常人更低。</td></tr>
        		<tr><td colspan="2">致病风险备注</td><td style="text-align: left">患病风险分为7个等级：极高&gt;&gt;很高&gt;增加&gt;可能增加&gt;正常&gt;较低<br>基因变异分为4个等级：明确致病&gt;疑似致病&gt;风险因子&gt;保护</td></tr>
            </tbody></table>
        </div>
    </div>
    <div class="fl4_1_wrap">
        <div class="fl4_1">
              <table>           
                <tbody><tr><td colspan="3">首度基因依据线粒体DNA突变位点、突变率以及变异位点情况，综合评判您的线粒体遗传病患病风险，其等级说明表以及相应的注意事项如下：</td></tr>
				<tr><td>风险等级</td><td>患病风险</td><td>评判标准示例</td></tr>
				<tr style="background-color: #F2F2F2"><td>FD-M-1</td><td>极高</td><td style="text-align: left">线粒体DNA上检测到2个及2个以上的明确致病突变，且突变频率大于80%</td></tr>
				<tr style="background-color: #F2F2F2"><td>FD-M-2</td><td>很高</td><td style="text-align: left">线粒体DNA上检测到1个的明确致病突变，且突变频率大于80%</td></tr>
				<tr style="background-color: #F2F2F2"><td>FD-M-3A</td><td>增加</td><td style="text-align: left">线粒体DNA上检测到1个的明确致病突变，且突变频率小于80%</td></tr>
				<tr style="background-color: #F2F2F2"><td>FD-M-3B</td><td>增加</td><td style="text-align: left">线粒体DNA上检测到1个或多个的疑似致病突变，且突变频率大于80%</td></tr>
				<tr style="background-color: #F2F2F2"><td>FD-M-4</td><td>可能增加</td><td style="text-align: left">线粒体DNA上检测到1个的疑似致病突变，且突变频率小于80%</td></tr>
				<tr style="background-color: #F2F2F2"><td>FD-M-5</td><td>正常</td><td style="text-align: left">线粒体DNA上未检测到致病突变或疑似致病突变</td></tr>
				<tr style="background-color: #F2F2F2"><td colspan="2">患病风险备注</td><td style="display: none"></td><td style="text-align: left;">患病风险分为5个等级：极高&gt;&gt;很高&gt;增加&gt;可能增加&gt;正常<br>基因变异分为2个等级：明确致病&gt;疑似致病</td></tr>
            </tbody></table>
           <table class="fl4_all">           
                <tbody><tr><td colspan="2">各种不同肿瘤风险等级的注意事项：</td></tr>
				<tr><td style="text-align: center;">患癌风险等级</td><td style="text-align: center;">注意事项</td></tr>
				<tr><td>FD-T-1A</td><td rowspan="2">终生需要密切关注肿瘤风险，建议每年进行一次肿瘤体检；</td></tr>
				<tr><td>FD-T-1B</td></tr>
				<tr><td>FD-T-2A</td><td rowspan="2">25-30岁之后，需要密切关注肿瘤风险，每2-3年至少进行一次肿瘤体检，如发现早期症状进行治疗以后，每年进行肿瘤体检；</td></tr>
				<tr><td>FD-T-2B</td></tr>
				<tr><td>FD-T-3</td><td rowspan="2">40-45岁之后，需要密切关注肿瘤风险，每5年至少进行一次肿瘤体检，如发现早期症状进行治疗以后，每年进行肿瘤体检；</td></tr>
				<tr><td>FD-T-4</td></tr>
				<tr><td>FD-T-5</td><td>50-55岁之后，需要密切关注肿瘤风险，每5年至少进行一次肿瘤体检，如发现早期症状进行治疗以后，每年进行肿瘤体检；</td></tr>
				 <tr><td colspan="2" style="font-weight: bold;text-align: left;">各种不同疾病风险等级的注意事项：</td></tr>
				<tr><td>FD-H-1A</td><td>您处于致病状态，终生需要密切关注此遗传病，根据疾病的发病年龄、临床症状和疾病恶性程度，建议定期检查此遗传病的疾病进展，提前进行预防和治疗；</td></tr>
				<tr><td>FD-H-1B</td><td>您很可能处于致病状态，根据疾病的发病年龄、临床症状和疾病恶性程度，建议定期检查此遗传病的疾病进展，提前进行预防和治疗；</td></tr>
				<tr><td>FD-H-2A</td><td rowspan="2">环境因素会大幅度促进该遗传病的进展，建议遵照健康管理，排除环境因素，预防该疾病的发生；</td></tr>
				<tr><td>FD-H-2B</td><td style="display: none;"></td></tr>
				<tr><td>FD-H-3</td><td>环境因素可能会促进该遗传病的进展，仍建议您遵照健康管理，排除环境因素，预防该疾病的发生</td></tr>
				<tr><td>FD-H-4</td><td>此遗传病的患病风险与大多数正常人一致。如该疾病的发病率随年龄增长逐渐增加，仍建议在老龄阶段注意预防。</td></tr>
				<tr><td>FD-H-5</td><td>此遗传病的患病风险较正常人更低，具有更高的抵抗性。如该疾病的发病率随年龄增长逐渐增加，仍建议在老龄阶段注意预防。</td></tr>
            </tbody></table>
        </div>
    </div>
	</div>
	<%@ include file="../common/bottom.jsp"%>
	<!--# mergeTo:${ctx}/static/js/diseaseRiskRating.js -->
		<!-- build:js ../../static/js/diseaseRiskRating.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/base.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/services/user.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>