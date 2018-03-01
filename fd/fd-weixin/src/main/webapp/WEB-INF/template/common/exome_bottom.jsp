<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="taglibs.jsp" %>
<div class="box125px"></div>
<div class="footer-tab">
	<img src="${ctx}/static/img/icon/icon-fd-upward.png" alt="返回顶部" class="back-top" onclick="javascript:base.backTop('0px', 100);">
	<ul class="tab">
		<li <c:if test="${param.urlactive eq 'home' }">class="active"</c:if>>
			<a href="${ctx }/exome/home?urlactive=home">
				<img src="${ctx}/static/img/icon/icon-fd-home<c:if test="${param.urlactive eq 'home' }">-active</c:if>.png" alt="">
				<span>首页</span>
			</a>
		</li>
		<li <c:if test="${param.urlactive ne 'home' and param.urlactive ne 'myOffice' }">class="active"</c:if>>
			<a href="javascript:void(0);" class="category" onclick="javascript:base.switchExomeMenu();">
				<img src="${ctx}/static/img/icon/icon-fd-category<c:if test="${param.urlactive ne 'home' and param.urlactive ne 'myOffice' }">-active</c:if>.png" alt="">
				<!-- <span>分类</span> -->
			</a>
		</li>
		<li <c:if test="${param.urlactive eq 'myOffice' }">class="active"</c:if>>
			<a href="${ctx }/customer/myOffice?urlactive=myOffice">
				<img src="${ctx}/static/img/icon/icon-fd-my<c:if test="${param.urlactive eq 'myOffice' }">-active</c:if>.png" alt="">
				<span>我的</span>
			</a>
		</li>
	</ul>
</div>

<%-- <div class="exome-menu">
	<header class="bar">
		<a href="javascript:void(0);" class="icon-fd-close" onclick="javascript:base.switchExomeMenu();"></a>
	</header>
	<ul>
		<li class="replace-li"><a href="${ctx }/exome/riskConstitution?urlactive=diseaseRisk"><img src="${ctx}/static/img/physic-ico/risk.png" alt="疾病风险"><span>疾病风险</span></a></li>
		<li class="replace-li"><a href="${ctx }/exome/drugRisk/infoSummary?urlactive=infoSummary"><img src="${ctx}/static/img/physic-ico/medicine.png" alt="用药提示"><span>用药提示</span></a></li>
		<li class="replace-li"><a href="${ctx }/exome/physique?urlactive=physique"><img src="${ctx}/static/img/physic-ico/person.png" alt="个体体质"><span>个体体质</span></a></li>
		<li class="replace-li"><a href="${ctx }/exome/healthGuide"><img src="${ctx}/static/img/physic-ico/health.png" alt="健康指导"><span>健康指导</span></a></li>
		<li class="replace-li"><a href="${ctx }/exome/bloodSystem"><img src="${ctx}/static/img/physic-ico/blood.png" alt="血型系统"><span>血型系统</span></a></li>
		<li class="replace-li"><a href="${ctx }/exome/nutritional"><img src="${ctx}/static/img/physic-ico/nutritional.png" alt="营养代谢"><span>营养代谢</span></a></li>
		<li class="replace-li"><a href="${ctx }/exome/origin"><img src="${ctx}/static/img/physic-ico/monkey.png" alt="祖源分析"><span>祖源分析</span></a></li>
		<li class="replace-li"><a href="${ctx }/exome/interestTest"><img src="${ctx}/static/img/physic-ico/interest.png" alt="趣味检测"><span>趣味检测</span></a></li>
	</ul>
</div> --%>