<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<meta name="renderer" content="webkit">
<title>祖源分析-常染色体祖源分析</title>
<link href="${ctx}/static/css/origin.css?@@rev=hash" rel="stylesheet">
</head>
<body>
	<div id="nav_id" style="display: none;">${collInfo.collInfoId}</div>
	<%@ include file="../exome/exome_top.jsp"%>
	<div class="jumbotron">
		<h1 class="big-title" style="width:245px;">常染色体祖源分析</h1>
		<div class="acticle">
			<p>现代分子生物学研究表明，所有现代人都是十几万年前同一位女人的后代，同时Y染色体的检测也表明，全世界人类都源于十几万年前的同一个男人。现代人是由一小群人几万年前走出非洲，然后扩散到世界各地的。中国人中占大多数的东亚人群起源于非洲，北京古猿人不可能是中国人的祖先。</p>
			<p>现代汉人大多数就是古中原人的直系后裔，原来的汉族融合而成的理论是错误的，汉族的基因构成是一个非常单一纯粹的民族。</p>
			<p>近半数现代汉人来源于史前的三个超级祖先，那是传说中的炎黄时代，华夏的主体形成。</p>
			<p>秦统一各诸侯国后，到汉朝，汉族中的大多数成分就已确定。之后随着两千多年的多次迁徙，逐渐取代了百越人，成为南方人的主体。但南迁汉人并未将土著赶尽杀绝，现代南方土著中任保留有少量的原始变异。除此以外，西南省份至今仍保留有与汉族不同基因变异的藏缅、苗瑶、壮侗等众多少数民族，他们跟汉族有较近的亲缘关系。</p>
			<p>FD祖源分析首先提取参考人群数据库，分析数据库中人群各自的特征性遗传标记。通过将个人遗传标记与各人群标准数据库对比，即可算出祖源成分比例。祖源成分分析由常染色体计算获得的。</p>
		</div>
	</div>

	<div class="wrap content">
		<div class="con-left" style="margin-top: 46.5px;">
			<h2 class="table-title">常染色体祖源分析预测</h2>
			<div class="scale-title">
				<span>类别(大陆)</span><span>祖源成分比例(%)</span>
			</div>
			<table class="scale" id="regionAutoCells">
				<tbody>
					<tr><td width="119">东亚</td><td>${continentMap.continentPojo.east_Asia }</td></tr>
					<tr><td>美洲</td><td>${continentMap.continentPojo.america }</td></tr>
					<tr><td>中南亚</td><td>${continentMap.continentPojo.central_South_Asia }</td></tr>
					<tr><td>北非</td><td>${continentMap.continentPojo.north_Africa }</td></tr>
					<tr> <td>南非</td><td>${continentMap.continentPojo.south_Africa }</td> </tr>
					<tr> <td>欧洲</td><td>${continentMap.continentPojo.europe }</td> </tr>
					<tr> <td>大洋州</td><td>${continentMap.continentPojo.oceania }</td> </tr>
					<tr><td colspan="2">结论：您含有${continentMap.maxContient }%的比例为大陆人种</td></tr>
				</tbody>
			</table>
		</div>
		<div class="con-right" id="region"
			style="top: 0; margin-top: 0; position: relative; left: 0px;"></div>
	</div>

	<div class="wrap content">
		<div class="con-left">
			<h2 class="table-title">常染色体祖源分析预测</h2>
			<div class="scale-title">
				<span>类别(东亚)</span><span>祖源成分比例(%)</span>
			</div>
			<table class="scale" id="nationAutoCells">
				<tbody>
					<tr> <td width="119">汉族</td><td>${east_AsiaMap.east_AsiaPojo.han }</td> </tr>
					<tr> <td>鄂伦春</td><td>${east_AsiaMap.east_AsiaPojo.oroqen }</td> </tr>
					<tr> <td>傣族</td><td>${east_AsiaMap.east_AsiaPojo.dai }</td> </tr>
					<tr> <td>苗族</td><td>${east_AsiaMap.east_AsiaPojo.miao }</td> </tr>
					<tr> <td>彝族/纳西族</td> <td>${east_AsiaMap.east_AsiaPojo.yiNaxi }</td> </tr>
					<tr> <td>畲族</td> <td>${east_AsiaMap.east_AsiaPojo.she }</td> </tr>
					<tr> <td>拉祜族</td> <td>${east_AsiaMap.east_AsiaPojo.lahu }</td> </tr>
					<tr> <td>土家族</td> <td>${east_AsiaMap.east_AsiaPojo.tu }</td> </tr>
					<tr> <td>柬埔寨</td> <td>${east_AsiaMap.east_AsiaPojo.cambodia }</td> </tr>
					<tr> <td>雅库特</td> <td>${east_AsiaMap.east_AsiaPojo.yakut }</td> </tr>
					<tr> <td>达斡尔族</td> <td>${east_AsiaMap.east_AsiaPojo.daur }</td> </tr>
					<tr> <td>锡伯族</td> <td>${east_AsiaMap.east_AsiaPojo.xibo }</td> </tr>
					<tr> <td>赫哲族</td> <td>${east_AsiaMap.east_AsiaPojo.hezhen }</td> </tr>
					<tr> <td>其他</td> <td>${east_AsiaMap.east_AsiaPojo.others + east_AsiaMap.east_AsiaPojo.japan }</td> </tr>
					<tr><td colspan="2">结论：您的汉族人种比例为${east_AsiaMap.maxEastAsia }%</td></tr>
				</tbody>
			</table>
		</div>
		<div class="con-right" id="nation"></div>
	</div>

	<%@ include file="../common/bottom.jsp"%>
	<!--# mergeTo:${ctx}/static/js/origin.js -->
		<!-- build:js ../../static/js/origin.js -->
	    <script replace="gulp" src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
		<script replace="gulp" src="${ctx}/static/javascript/common/base.js"></script>
		<script replace="gulp" src="${ctx}/static/javascript/services/user.js"></script>
		<script replace="gulp" src="${ctx}/static/plugin/highcharts/highcharts.src.js"></script>
		<script replace="gulp" src="${ctx}/static/javascript/origin.js"></script>
	    <!-- endbuild -->
	<!--# mergeTo -->
	<script>
		$(function(){
			origin.init({
				continentPojoOceania : "${continentMap.continentPojo.oceania }",
				continentPojoEurope : "${continentMap.continentPojo.europe }",
				continentPojoSouth_Africa : "${continentMap.continentPojo.south_Africa }",
				continentPojoNorth_Africa : "${continentMap.continentPojo.north_Africa }",
				continentPojoCentral_South_Asia : "${continentMap.continentPojo.central_South_Asia }",
				continentPojoAmerica : "${continentMap.continentPojo.america }",
				continentPojoEast_Asia : "${continentMap.continentPojo.east_Asia }",
				
				eastAsiaPojoOthers : "${east_AsiaMap.east_AsiaPojo.others + east_AsiaMap.east_AsiaPojo.japan }",
				eastAsiaPojoDaur : "${east_AsiaMap.east_AsiaPojo.daur }",
				eastAsiaPojoXibo : "${east_AsiaMap.east_AsiaPojo.xibo }",
				eastAsiaPojoHezhen : "${east_AsiaMap.east_AsiaPojo.hezhen }",
				eastAsiaPojoYakut : "${east_AsiaMap.east_AsiaPojo.yakut }",
				eastAsiaPojoCambodia : "${east_AsiaMap.east_AsiaPojo.cambodia }",
				eastAsiaPojoTu : "${east_AsiaMap.east_AsiaPojo.tu }",
				eastAsiaPojoLahu : "${east_AsiaMap.east_AsiaPojo.lahu }",
				eastAsiaPojoShe : "${east_AsiaMap.east_AsiaPojo.she }",
				eastAsiaPojoYinaxi : "${east_AsiaMap.east_AsiaPojo.yiNaxi }",
				eastAsiaPojoMiao : "${east_AsiaMap.east_AsiaPojo.miao }",
				eastAsiaPojoDai : "${east_AsiaMap.east_AsiaPojo.dai }",
				eastAsiaPojoOroqen : "${east_AsiaMap.east_AsiaPojo.oroqen }",
				eastAsiaPojoHan : "${east_AsiaMap.east_AsiaPojo.han }"
			});
		})
	</script>
</body>
</html>