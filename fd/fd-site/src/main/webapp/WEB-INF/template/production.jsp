<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="common/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>首度生物科技（苏州）有限公司 | 基因检测-肿瘤基因-癌症检测-靶向药物</title>
    <link rel="shortcut icon"  href="${ctx}/static/img/16.png">
    <link rel="stylesheet" href="${ctx}/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctx}/static/css/base.css">
    <link rel="stylesheet" href="${ctx}/static/css/max.css">
    <link rel="stylesheet" href="${ctx}/static/css/middle.css">
    <link rel="stylesheet" href="${ctx}/static/css/min.css">  
<link rel="stylesheet" type="text/css" href="${ctx}/static/css/production.css">

    <script src="${ctx}/static/plugin/jquery/3.1.0/jquery.min.js"></script>
    <script src="${ctx}/static/js/bootstrap.min.js"></script>
</head>

<body>
<%@ include file="common/top.jsp" %> 
    
<div id="fullpage" class="container top">
    <div class="section content">
        <h1 class="blod">PRODUCT CONTENT</h1>
        <h3 class="regular">产品内容</h3>
        <div class="product-content">
        	<div class="top">
        		<img src="${ctx}/static/img/soft.png">
        	</div>
        	<h4>生物信息软件</h4>
        	<p>分析来自于任何二代测序平台下机的多种实体癌症以及血液肿瘤的数据，包括DNA序列分析、变异识别、变异注释、药物选择。对于 RNA 测序，提供融合基因及基因表达水平分析，给出具有临床指导意义的用药指导报告</p>
        </div>
        <div class="product-content">
        	<div class="top">
        		<img src="${ctx}/static/img/db.png">
        	</div>
        	<h4 >数据库产品</h4>
        	<p >数据库同时使用中英文描述，并提供原始文献。收集完整信息、实时跟踪国际该领域的发展并及时更新。（目前拥有癌症基因变异数据库、癌症基因靶向药物数据库、癌症基因信号通路数据库）</p>
        </div>
    </div>
    <div class="section">
        <h1 class="blod">PRODUCT FUNCTION</h1>
        <h3 class="regular">产品功能</h3>
        <ul class="list-group">
          <li class="list-group-item">
              <img src="${ctx}/static/img/circle.png">
              <h4>自动分析</h4><p>
              采用自主开发的高精度分析流程（FD-ToolKit），实现SNV（单核苷酸位点变异），Indel (插入／缺失) ，SV（结构变异包括插入/缺失/复制/倒位/易位），CNV（拷贝数变异）等癌症基因变异个性化自动分析。</p>
          </li>
          <li class="list-group-item">
              <img src="${ctx}/static/img/star.png">
              <h4>全面解读</h4><p>综合Genbank，FDA，COSMIC，MyCancerGenome，PGKB，DRUG BANK，Clinical Trials等外部研究结果与内部累积的中华人种检测数据，全面建设首度自动化解读数据库（FD-Databases），详细解读癌症发病与基因变异关系，为用户提供最详尽的健康建议和用药指导方案。</p>
          </li>
          <li class="list-group-item">
              <img src="${ctx}/static/img/book.png">
              <h4>原始文献与中文翻译</h4><p>对于文献的收集和实时跟踪，我们收集整理了国际权威的癌症变异数据与文献，实时地跟踪该领域的重要进展、及时更新到最新发表的数据与结果。根据用户需求，免费提供原始文献及中文翻译。</p> 
          </li>
        </ul>
    </div>
    <div class="section">
        <h1 class="blod">PRODUCT ADVANTAGES</h1>
        <h3 class="regular">产品优势</h3>
        <div class="row pro-features list-group">
        	<div class="col-md-6 col-sm-12 list-group-item">
            	<img src="${ctx}/static/img/auto.png">
                <h4>远程自动</h4><p>用户可以远程上传原始数据，在12小时之内完成自动分析，并通过网络获得分析结果和报告</p>
        	</div>
        	<div class="col-md-6 col-sm-12 list-group-item">
        		<img src="${ctx}/static/img/jieguo.png">
                <h4>结果精确</h4><p>依托独有的数据库信息，精确推荐药物。自动检索，提供分子层次的发病机理解释</p>
        	</div>
        </div>
        <div class="row pro-features list-group">
            <div class="col-md-6 col-sm-12 list-group-item">
                <img src="${ctx}/static/img/rect.png">
              <h4>流程独创</h4><p>智能流程匹配自动化变异检测，针对不同测序平台开发个性化自动分析流程，并为客户长期备份数据</p>
            </div>
            <div class="col-md-6 col-sm-12 list-group-item">
                <img src="${ctx}/static/img/data.png">
              <h4>数据中心</h4><p>已有720个CPU，400T存储，24小时内可完成100个人类样本的高深度全外显子测序数据分析</p>
            </div>
        </div>
        <div class="row pro-features list-group">
            <div class="col-md-6 col-sm-12 list-group-item">
                <img src="${ctx}/static/img/people.png">
              <h4>中华人种</h4><p>配备有中华人种的常规变异基线以及中华人种的癌症变异列表</p>
            </div>
            <div class="col-md-6 col-sm-12 list-group-item">
            </div>
        </div>
    </div>
</div>

<%@ include file="common/bottom.jsp" %>
</body>
</html>
