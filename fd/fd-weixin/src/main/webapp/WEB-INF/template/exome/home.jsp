<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1, maximum-scale=1">
<meta name="renderer" content="webkit">
<title>全外报告首页</title>
<link href="${ctx}/static/css/exomeHome.css?rev=@@hash" rel="stylesheet">
</head>
<body>
	<div class="view view-gray-background">
		<div class="col-bg">
			<img alt="首页banner" src="${ctx}/static/img/banner/home.png" class="col-img">
			<div class="col">
				<h1>报告详情</h1>
				<div class="slider-box">
				<div class="flicking_con" id="arrow">
					<a href="javascript:void(0);" class="on">0</a>
					<a href="javascript:void(0);">1</a>
				</div>
				<div class="main_image">
					<ul id="slider" class="slider">
						<!-- 每一行要6个div class="replace-li",第一个li的内容和最后面的div的内容要一致 -->
						<li class="slider-li">
							<div class="replace-li"><a href="${ctx }/exome/riskConstitution?urlactive=diseaseRisk"><img src="${ctx}/static/img/physic-ico/risk.png" alt="疾病风险"><span>疾病风险</span></a></div>
							<div class="replace-li"><a href="${ctx }/exome/drugRisk/infoSummary?urlactive=infoSummary"><img src="${ctx}/static/img/physic-ico/medicine.png" alt="用药提示"><span>用药提示</span></a></div>
							<div class="replace-li"><a href="${ctx }/exome/physique?urlactive=physique"><img src="${ctx}/static/img/physic-ico/person.png" alt="个体体质"><span>个体体质</span></a></div>
							<div class="replace-li"><a href="${ctx }/exome/healthGuide"><img src="${ctx}/static/img/physic-ico/health.png" alt="健康指导"><span>健康指导</span></a></div>
							<div class="replace-li"><a href="${ctx }/exome/bloodSystem"><img src="${ctx}/static/img/physic-ico/blood.png" alt="血型系统"><span>血型系统</span></a></div>
							<div class="replace-li"><a href="${ctx }/exome/nutritional"><img src="${ctx}/static/img/physic-ico/nutritional.png" alt="营养代谢"><span>营养代谢</span></a></div>
						</li>
						<li class="slider-li">
							<div class="replace-li"><a href="${ctx }/exome/origin"><img src="${ctx}/static/img/physic-ico/monkey.png" alt="祖源分析"><span>祖源分析</span></a></div>
							<div class="replace-li"><a href="${ctx }/exome/interestTest"><img src="${ctx}/static/img/physic-ico/interest.png" alt="趣味检测"><span>趣味检测</span></a></div>
							<div class="replace-li opacity0"><a href="javascript:void(0);"><img src="${ctx}/static/img/physic-ico/monkey.png" alt="祖源分析"><span>祖源分析</span></a></div>
							<div class="replace-li opacity0"><a href="javascript:void(0);"><img src="${ctx}/static/img/physic-ico/monkey.png" alt="祖源分析"><span>祖源分析</span></a></div>
							<div class="replace-li opacity0"><a href="javascript:void(0);"><img src="${ctx}/static/img/physic-ico/monkey.png" alt="祖源分析"><span>祖源分析</span></a></div>
							<div class="replace-li opacity0"><a href="javascript:void(0);"><img src="${ctx}/static/img/physic-ico/monkey.png" alt="祖源分析"><span>祖源分析</span></a></div>
						</li>
						 <div class="slider-li clear-position opacity0">
							<div class="replace-li"><a href="${ctx }/exome/riskConstitution?urlactive=diseaseRisk"><img src="${ctx}/static/img/physic-ico/risk.png" alt="疾病风险"><span>疾病风险</span></a></div>
							<div class="replace-li"><a href="${ctx }/exome/drugRisk/riskSummary?urlactive=riskSummary"><img src="${ctx}/static/img/physic-ico/medicine.png" alt="用药提示"><span>用药提示</span></a></div>
							<div class="replace-li"><a href=""><img src="${ctx}/static/img/physic-ico/person.png" alt="个体体质"><span>个体体质</span></a></div>
							<div class="replace-li"><a href="${ctx }/exome/healthGuide"><img src="${ctx}/static/img/physic-ico/health.png" alt="健康指导"><span>健康指导</span></a></div>
							<div class="replace-li"><a href="${ctx }/exome/bloodSystem"><img src="${ctx}/static/img/physic-ico/blood.png" alt="血型系统"><span>血型系统</span></a></div>
							<div class="replace-li"><a href="${ctx }/exome/nutritional"><img src="${ctx}/static/img/physic-ico/nutritional.png" alt="营养代谢"><span>营养代谢</span></a></div>
						</div> 
					</ul>
						<a href="javascript:void(0);" id="btn_prev" style="width: 640px; overflow: visible; display: none;"></a>
						<a href="javascript:void(0);" id="btn_next" style="width: 640px; overflow: visible; display: none;"></a>
					</div>
				</div>
			</div>
		</div>
		<%-- <img alt="首页banner" src="${ctx}/static/img/banner/home.png" class="percent100">
		<div class="view-box">
			<h1>报告详情</h1>
			<div class="slider-box">
			<div class="flicking_con" id="arrow">
				<a href="javascript:void(0);" class="on">0</a>
				<a href="javascript:void(0);">1</a>
			</div>
			<div class="main_image">
				<ul id="slider" class="slider">
					每一行要6个div class="replace-li",第一个li的内容和最后面的div的内容要一致
					<li class="slider-li">
						<div class="replace-li"><a href="${ctx }/exome/riskConstitution?urlactive=diseaseRisk"><img src="${ctx}/static/img/physic-ico/risk.png" alt="疾病风险"><span>疾病风险</span></a></div>
						<div class="replace-li"><a href="${ctx }/exome/drugRisk/infoSummary?urlactive=infoSummary"><img src="${ctx}/static/img/physic-ico/medicine.png" alt="用药提示"><span>用药提示</span></a></div>
						<div class="replace-li"><a href="${ctx }/exome/physique?urlactive=physique"><img src="${ctx}/static/img/physic-ico/person.png" alt="个体体质"><span>个体体质</span></a></div>
						<div class="replace-li"><a href="${ctx }/exome/healthGuide"><img src="${ctx}/static/img/physic-ico/health.png" alt="健康指导"><span>健康指导</span></a></div>
						<div class="replace-li"><a href="${ctx }/exome/bloodSystem"><img src="${ctx}/static/img/physic-ico/blood.png" alt="血型系统"><span>血型系统</span></a></div>
						<div class="replace-li"><a href="${ctx }/exome/nutritional"><img src="${ctx}/static/img/physic-ico/nutritional.png" alt="营养代谢"><span>营养代谢</span></a></div>
					</li>
					<li class="slider-li">
						<div class="replace-li"><a href="${ctx }/exome/origin"><img src="${ctx}/static/img/physic-ico/monkey.png" alt="祖源分析"><span>祖源分析</span></a></div>
						<div class="replace-li"><a href="${ctx }/exome/interestTest"><img src="${ctx}/static/img/physic-ico/interest.png" alt="趣味检测"><span>趣味检测</span></a></div>
						<div class="replace-li opacity0"><a href="javascript:void(0);"><img src="${ctx}/static/img/physic-ico/monkey.png" alt="祖源分析"><span>祖源分析</span></a></div>
						<div class="replace-li opacity0"><a href="javascript:void(0);"><img src="${ctx}/static/img/physic-ico/monkey.png" alt="祖源分析"><span>祖源分析</span></a></div>
						<div class="replace-li opacity0"><a href="javascript:void(0);"><img src="${ctx}/static/img/physic-ico/monkey.png" alt="祖源分析"><span>祖源分析</span></a></div>
						<div class="replace-li opacity0"><a href="javascript:void(0);"><img src="${ctx}/static/img/physic-ico/monkey.png" alt="祖源分析"><span>祖源分析</span></a></div>
					</li>
					 <div class="slider-li clear-position opacity0">
						<div class="replace-li"><a href="${ctx }/exome/riskConstitution?urlactive=diseaseRisk"><img src="${ctx}/static/img/physic-ico/risk.png" alt="疾病风险"><span>疾病风险</span></a></div>
						<div class="replace-li"><a href="${ctx }/exome/drugRisk/riskSummary?urlactive=riskSummary"><img src="${ctx}/static/img/physic-ico/medicine.png" alt="用药提示"><span>用药提示</span></a></div>
						<div class="replace-li"><a href=""><img src="${ctx}/static/img/physic-ico/person.png" alt="个体体质"><span>个体体质</span></a></div>
						<div class="replace-li"><a href="${ctx }/exome/healthGuide"><img src="${ctx}/static/img/physic-ico/health.png" alt="健康指导"><span>健康指导</span></a></div>
						<div class="replace-li"><a href="${ctx }/exome/bloodSystem"><img src="${ctx}/static/img/physic-ico/blood.png" alt="血型系统"><span>血型系统</span></a></div>
						<div class="replace-li"><a href="${ctx }/exome/nutritional"><img src="${ctx}/static/img/physic-ico/nutritional.png" alt="营养代谢"><span>营养代谢</span></a></div>
					</div> 
				</ul>
				<a href="javascript:void(0);" id="btn_prev" style="width: 640px; overflow: visible; display: none;"></a>
				<a href="javascript:void(0);" id="btn_next" style="width: 640px; overflow: visible; display: none;"></a>
			</div>
		</div>
	</div> --%>
	<%@ include file="../common/exome_bottom.jsp" %>
</div>
	<!--# mergeTo:${ctx}/static/js/exome/home.js -->
		<!-- build:js ../../static/js/exome/home.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
	    <script replace="gulp" src="${ctx}/static/plugin/touchSlider/jquery.touchSlider.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/common/common.js"></script>
	    <script replace="gulp" src="${ctx}/static/javascript/exome/base.js"></script>
		<script replace="gulp" src="${ctx}/static/javascript/exome/home.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
</body>
</html>