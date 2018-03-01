<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link href="${ctx }/static/css/admin/reportPrint/jquery-ui.min.css" rel="stylesheet">
    <link href="${ctx }/static/css/admin/reportPrint/exome_physical.css" rel="stylesheet">
    <link href="${ctx }/static/css/admin/reportPrint/second_level.css" rel="stylesheet">
    <link href="${ctx }/static/css/admin/reportPrint/parentage.css" rel="stylesheet">
</head>
<body>
<div class="nav">
    <img src="${ctx }/static/img/logo/logo.png">
</div>
<div class="theme">祖源分析</div>
<div class="synopsis">
    <div>祖源分析简介</div>
    <div>我是谁? 我从哪里来? 是几千年来人类及其哲学一直在思考重要哲学问题。 “我从哪里来”实际反映的问题是一个现代人类起源的问题。</div>
    <div>随着科技的进步，人们已经开始根据遗传物质分析其祖源成分。遗传物质（主要成份是DNA）有着其独特特征，主要包括稳定遗传与随机重组与突变。稳定遗传维持物种世代之间的相似现象，重组与变异适应自然选择应对环境变化。基于遗传物质的检查，已在亲子鉴定、法医鉴定、指纹鉴定、产前筛查、疾病个性化治疗等领域中广泛应用。</div>
    <div>每个人的遗传物质存在于每个细胞中，主要存储于细胞核与细胞质。</div>
    <div>细胞核内遗传物质是主要的遗传物质，包含22对常染色体和一对性染色体。其中女性性染色体可简单表示为XX染色体，男性性染色体表示为XY染色体，Y染色体是男性特有的性染色体。这23对染色体的每一对染色体都有一条来自父系，一条来自母系，两条染色体在传代过程中对应的部分会发生交换，即遗传物质重组，从而造成混血的效应，使得后代带有父母双方的遗传特征，因此常染色体可以反应混血情况。</div>
    <div>细胞质遗传物质主要是线粒体（人体细胞内产生能量的细胞器）携带，在遗传时由卵子传递给后代。因此，线粒体DNA只能有母亲传给子女，代表了单纯的母系遗传，由线粒体DNA来追溯母系女性祖先（如母亲，母亲的母亲）。</div>
    <div>Y染色体因其是男性特有，直接代表着父系遗传，遗传方式是父子相传，不会受到任何社会文化和自然因素的影响，而且不同类型的Y染色体有着不同的地理分布，研究Y染色体是直接追溯群体或者家族的父系起源的最佳方法，是验证祖先与后代的父系关联的唯一手段。（例如，在孔子的后人中分析Y染色体特征，我们就可以了解孔子本人的Y染色体特征。）</div>
    <div>一个女性的祖源分析包括常染色体祖源成分分析和线粒体染色体的母性遗传方式。而男性祖源分析需增加Y染色体单倍群分析，由常染色体祖源成分分析、Y染色体单倍群分析、线粒体DNA单倍群三部分组成。</div>
</div>
<div class="theme1">祖源分析汇总</div>
<div class="option">
    <div>
        <select  class="option1">
            <option value="common_chromosome">常染色体祖源分析</option>
            <option value="f_chromosome">父系祖源分析</option>
            <option value="m_chromosome">母系系祖源分析</option>
        </select>
    </div>
</div>
<div class="common_chromosome">
    <div class="synopsis1">
        <div>常染色体祖源分析简介</div>
        <div>现代分子生物学研究表明，所有现代人都是十几万年前同一位女人的后代，同时Y染色体的检测也表明，全世界人类都源于十几万年前的同一个男人。现代人是由一小群人几万年前走出非洲，然后扩散到世界各地的。中国人中占大多数的东亚人群起源于非洲，北京古猿人不可能是中国人的祖先。</div>
        <div>现代汉人大多数就是古中原人的直系后裔，原来的汉族融合而成的理论是错误的，汉族的基因构成是一个非常单一纯粹的民族。</div>
        <div>近半数现代汉人来源于史前的三个超级祖先，那是传说中的炎黄时代，华夏的主体形成。</div>
        <div>秦统一各诸侯国后，到汉朝，汉族中的大多数成分就已确定。之后随着两千多年的多次迁徙，逐渐取代了百越人，成为南方人的主体。但南迁汉人并未将土著赶尽杀绝，现代南方土著中任保留有少量的原始变异。除此以外，西南省份至今仍保留有与汉族不同基因变异的藏缅、苗瑶、壮侗等众多少数民族，他们跟汉族有较近的亲缘关系。</div>
        <div>FD祖源分析首先提取参考人群数据库，分析数据库中人群各自的特征性遗传标记。通过将个人遗传标记与各人群标准数据库对比，即可算出祖源成分比例。祖源成分分析由常染色体计算获得的。</div>
    </div>
    <table cellspacing="0" class="table1">
        <tr><td>类别</td><td colspan="2">祖源成分比例</td></tr>
    </table>
</div>
<div class="f_chromosome">
    <div class="synopsis1">
        <div>父系祖源分析简介</div>
        <div>常染色体和X染色体遗传自父母双方，会被重组所打乱，而Y染色体上主干的非重组区呈严格父系遗传，并且Y染色体对漂变非常敏感，容易形成群体特异性多态标记，从而包含更多的关于群体历史的信息。Y染色体的这些特点使其成为研究人类进化和迁徙最强有力的工具之一。</div>
        <div>非洲人是人类的大本营，今天，所有人类的Y染色体单倍体类型都能在非洲找到。而非洲以外的居民，他们都是一支出非洲居民的后裔。 Y染色体可以分为20种主干单倍群，编号从A到T。其中O-M175、C-M130、D-M174和N-M231是东亚四个主要单倍群，约占到东亚全部男性的93%。其他单倍群，例如E-SRY4064、G-M201、H-M69、I-M170、J-P209、L-M20、 Q-M242、R-M207和T-M70仅占到东亚男性的7%。 </div>
        <div>O-M175是东亚最大的单倍群，约75%的中国人以及超过50%的日本人都可归到这一类型下，可分为O1，O2，O3三个大分类。</div>
    </div>
    <div class="f_result">父系祖源分析结果</div>
    <div class="f_result1">经检测，您的Y染色体支系为O-M175，属于单倍群O下面的分支</div>
</div>
<div class="m_chromosome">
    <div class="synopsis1">
        <div>母系祖源分析简介</div>
        <div>线粒体DNA是严格母系遗传，具有高拷贝数，无重组和高突变率等特性，使它成为反映人群母系进化的理想标记，利用线粒体DNA上的突变，研究者们构建了人类线粒体序列的系统进化树，并定义线粒体单倍型和单倍群，通过世界范围内线粒体单倍群的分布就可以描绘出现代人群母系祖先迁徙的路线。</div>
        <div>线粒体DNA单倍群用字母A、B、C、CZ、D、E、F、G、H、pre-HV、HV、I、J、pre-JT、 JT、K、L0、L1、L2、L3、L4、L5、L6、M、N、O、P、Q、R、S、T、U、UK、V、W、X、Y和Z来标记。线粒体DNA的支系分布是具有地域特异性的。</div>
        <div>非洲大陆特异地单倍群 L 比欧亚人群中发现的类型都要古老。</div>
        <div>在东亚北方和南方的线粒体DNA单倍群分布非常不同，东亚北方主要由A、C、D4、D5、G、M8、 M9、N9、Z支系组成，而南方为B4、B5a、F、M7、R9等单倍群组成。</div>
        <div>其中东亚特异的A、B、R9、N9单倍群属于N分支； C、D、G、M7、M8、M9等单倍群属于M分支。</div>
    </div>
    <div class="f_result">母系祖源分析结果</div>
    <div class="f_result1">经检测，您的线粒体支系为B，属于单倍群N下面的分支</div>
</div>
<div class="footer">
    <div>地址：江苏省苏州市工业园区星湖街218号生物纳米园B8栋5楼</div>
    <div>联系电话：0512-6298-7012</div>
    <div>Copyright© 2016首度生物科技（苏州）有限公司 苏ICP备16044804号</div>
    <img src="${ctx }/static/img/admin/reportPrint/pic/wechat.png">
</div>
<script src="${ctx }/static/plugin/jquery/1.11.3/jquery.min.js"></script>
<script src="${ctx }/static/js/admin/reportPrint/jquery-ui.min.js"></script>
<script src="${ctx }/static/js/admin/reportPrint/print.js"></script>
<script src="${ctx }/static/js/admin/reportPrint/parentage.js"></script>
</body>
</html>