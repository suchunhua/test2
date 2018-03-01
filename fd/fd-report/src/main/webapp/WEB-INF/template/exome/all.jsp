<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <title></title>
    <link href="${ctx}/static/css/all.css?rev=@@hash" rel="stylesheet">
</head>
<body>
<div id="nav_id" style="display:none;">${collInfo.collInfoId}</div>
<%@ include file="exome_top.jsp"%>
<div class="jumbotron">
    <h1 class="big-title big-font">全基因</h1>
    <div class="acticle">
	    <p>关于疾病风险评估</p>
	    <p>注意，FD-全外显子检测项目不能覆盖常见遗传性疾病的所有基因变异，其中一个原因是全外显子测序并不包含所有与疾病相关的变异，其中还有相当一部分位于外显子之外，例如启动子和内含子区域；另一个重要的原因是许多疾病相关的变异还没有得到国际机构的确证和公认。尽管如此，FD-全外显子检测项目检测了2万多个与疾病相关的基因，检测致病性变异超过30万个。</p>
	    <p>大多数基因变异评估疾病是一种风险评估检测。即基于基因型分析为高风险的人并不是一定会得病，分析为相对较低风险的人也仍然可能发病。风险评估测试不是确定性的诊断测试。体检筛查和其它检测，如血液检测，仍然非常重要。除遗传因素以外，环境和个体因素在疾病发生中也起着重要的作用，因此保持健康的生活方式有利于降低疾病发生风险。</p>
	    <p>关于隐性遗传病携带者状态报告</p>
	    <p>FD-全外显子检测项目包含有400多个能导致隐性遗传疾病的基因，并报告检测到的疑似致病变异。同样，本检测并不能覆盖隐形遗传病的所有位点检测，所以，阴性结果并不能完全排除疾病的携带者状态。我们判定是否致病主要依据国际权威的两个数据库，即人类孟德尔遗传在线数据库（OMIM）、美国国家生物技术信息中心（NCBI）数据库，界定的致病或疑似致病变异。</p>
	    <p>阳性结果表示您有50%的机会向您的后代遗传该致病或疑似致病变异；但只有您的配偶在同一基因存在类似的致病变异时，您所传递的变异才会导致疾病，即所有的纯合变异。因此在您检测到隐性遗传病的阳性结果时，强烈建议您的配偶和儿女也进行FD-全外显子检测。</p>
    </div>
</div>
<div class="wrap re-wrap">
    <h1 class="big-title big-font">全外检测的遗传病列表</h1>
    <div class="search"><div class="search_inner"><input type="text"/><!-- 
    --><input type="submit" value="搜索"></div></div>
    <div class="option"></div>
    <table class="title-garden-table table1" cellspacing="0" cellpadding="0" id="table1">
    </table>
    <div class="table_under">
        <div class="inner">
            <div class="xd er">1</div><!--
          --><div class="er">2</div><!--
           --><div class="er">3</div><!--
            --><div class="er">4</div><!--
         --><div class="er"><img src="${ctx }/static/img/admin/reportPrint/pic/xyy.png"></div><!--
          --><div class="chang er"><img src="${ctx }/static/img/admin/reportPrint/pic/my.png"></div>
        </div>
    </div>
        <div class="yizu"><div>此表格依据本次检测数据评判，仅供医生参考，具体用药方案请遵医嘱。</div></div>
        <div class="fanhui">
       <a href="${ctx }/exome/showFirst?collInfoid=${collInfo.collInfoId}&urlType=home"><img src="${ctx }/static/img/admin/reportPrint/pic/fanhui.png"/></a>
       <div>返回首页</div>
    </div>
</div>
<%@ include file="../common/bottom.jsp"%>
<table cellspacing="0" id="table0" style="display: none;">
<tr><td>Endocrine-cerebro-osteodysplasia综合征</td><td>癫痫渐进性肌阵挛10型</td><td>结合氧化磷酸化缺陷症10型</td><td>髓鞘形成减少伴脑干和脊髓受累和腿部痉挛</td></tr>
<tr><td>Herlitz型交界大疱性表皮松解</td><td>癫痫渐进性肌阵挛3型</td><td>结合氧化磷酸化缺陷症11型</td><td>髓鞘形成减少先天性白内障</td></tr>
<tr><td>15q13.3微缺失综合征</td><td>癫痫渐进性肌阵挛4型</td><td>结合氧化磷酸化缺陷症12型</td><td>髓性网状细胞增生症</td></tr>
<tr><td>1q21.1微缺失综合征</td><td>癫痫渐进性肌阵挛5型</td><td>结合氧化磷酸化缺陷症13型</td><td>髓质囊肾病1型</td></tr>
<tr><td>1型糖尿病</td><td>癫痫渐进性肌阵挛6型</td><td>结合氧化磷酸化缺陷症14型</td><td>髓质囊肾病2型</td></tr>
<tr><td>2,4-二烯醇基-辅酶A还原酶缺乏症</td><td>癫痫渐进性肌阵挛7型</td><td>结合氧化磷酸化缺陷症15型</td><td>羧化全酶合成不足</td></tr>
<tr><td>21-羟化酶缺乏</td><td>癫痫渐进性肌阵挛8型</td><td>结合氧化磷酸化缺陷症16型</td><td>锁骨颅骨发育不全</td></tr>
<tr><td>21三体综合征</td><td>癫痫渐进性肌阵挛9型</td><td>结合氧化磷酸化缺陷症17型</td><td>他汀类药物介导型肌病</td></tr>
<tr><td>22q13.3缺失综合征</td><td>癫痫性脑病（儿童期发病）</td><td>结合氧化磷酸化缺陷症18型</td><td>胎儿宫内发育迟缓，干骺端发育不良，肾上腺先天性发育不良，生殖器畸形</td></tr>
<tr><td>2-甲基-3-羟基丙二酸尿症</td><td>点状软骨1型</td><td>结合氧化磷酸化缺陷症19型</td><td>胎粪性肠梗阻</td></tr>
<tr><td>2-甲基丁酰辅酶A脱氢酶缺乏症</td><td>点状软骨2型</td><td>结合氧化磷酸化缺陷症1型</td><td>碳水化合物缺乏糖蛋白综合征</td></tr>
<tr><td>2型糖尿病</td><td>碘过氧化物酶缺乏症</td><td>结合氧化磷酸化缺陷症20型</td><td>碳水化合物缺乏糖蛋白综合征2型</td></tr>
<tr><td>3M综合征1型</td><td>碘酪氨酸脱碘缺陷</td><td>结合氧化磷酸化缺陷症21型</td><td>糖基化不足</td></tr>
<tr><td>3M综合征2型</td><td>碘酪胺酰偶联缺陷</td><td>结合氧化磷酸化缺陷症22型</td><td>糖尿病、尿崩症伴视神经萎缩、耳聋</td></tr>
<tr><td>3M综合征3型</td><td>丁酰辅酶A脱氢酶缺乏症</td><td>结合氧化磷酸化缺陷症23型</td><td>糖尿病非胰岛素依赖型1型</td></tr>
<tr><td>3-β-羟基脱氢酶缺乏症</td><td>顶叶椎间孔</td><td>结合氧化磷酸化缺陷症24型</td><td>糖尿病非胰岛素依赖型5型</td></tr>
<tr><td>3-甲基巴豆辅酶A羧化酶2缺乏</td><td>顶叶椎间孔2型</td><td>结合氧化磷酸化缺陷症25型</td><td>糖尿病酮症倾向型</td></tr>
<tr><td>3-甲基戊烯二酸尿症</td><td>顶叶椎间孔与锁骨颅骨发育不良</td><td>结合氧化磷酸化缺陷症26型</td><td>糖尿病微血管并发症1型</td></tr>
<tr><td>3-甲基戊烯二酸尿症（白内障，神经系统受累，中性粒细胞减少）</td><td>动脉导管未闭2型</td><td>结合氧化磷酸化缺陷症27型</td><td>糖尿病微血管并发症2型</td></tr>
<tr><td>3-甲基戊烯二酸尿症（耳聋，脑病，和Leigh样综合征）</td><td>动脉导管未闭3型</td><td>结合氧化磷酸化缺陷症28型</td><td>糖尿病微血管并发症3型</td></tr>
<tr><td>3-甲基戊烯二酸尿症2型</td><td>动脉迂曲综合征</td><td>结合氧化磷酸化缺陷症29型</td><td>糖尿病微血管并发症4型</td></tr>
<tr><td>3-甲基戊烯二酸尿症3型</td><td>冻疮样狼疮1型</td><td>结合氧化磷酸化缺陷症2型</td><td>糖尿病微血管并发症5型</td></tr>
<tr><td>3-甲基戊烯二酸尿症V型</td><td>冻疮样狼疮2型</td><td>结合氧化磷酸化缺陷症3型</td><td>糖尿病微血管并发症6型</td></tr>
<tr><td>3-羟酰-CoA脱氢酶缺乏症</td><td>窦房结功能障碍和耳聋</td><td>结合氧化磷酸化缺陷症4型</td><td>糖尿病微血管并发症7型</td></tr>
<tr><td>3-氧代-5-α-类固醇-4-脱氢酶缺乏症</td><td>杜氏肌营养不良症</td><td>结合氧化磷酸化缺陷症5型</td><td>糖尿病胰岛素依赖型10型</td></tr>
<tr><td>5q综合征</td><td>短QT综合征3型</td><td>结核分枝杆菌易感</td><td>糖尿病胰岛素依赖型2型</td></tr>
<tr><td>5-羟脯氨酸酶缺乏症</td><td>短轨枕</td><td>结节病1型</td><td>糖尿病胰岛素依赖型5型</td></tr>
<tr><td>6-丙酮酰-四氢蝶呤合成酶缺乏症</td><td>短脊椎发育异常</td><td>结节病2型</td><td>糖皮质激素不足2型</td></tr>
<tr><td>9Q染色体缺失综合征</td><td>短肋多指畸形综合征5型</td><td>结节肾上腺皮质增生症2型</td><td>糖皮质激素不足4型</td></tr>
<tr><td>ⅩⅢ因子a亚基缺乏症</td><td>短肋多指畸形综合征6型</td><td>结节性硬化症1型</td><td>糖皮质激素缺乏伴贲门失弛缓症</td></tr>
<tr><td>ⅩⅢ因子B亚基缺乏症</td><td>短肋多趾症，Majewski型</td><td>结节性硬化症2型</td><td>糖原贮积病13型</td></tr>
<tr><td>Aarskog综合征</td><td>短肋胸廓发育不良10型</td><td>结直肠癌10型</td><td>糖原贮积病Ⅲ型</td></tr>
<tr><td>Aase综合征</td><td>短肋胸廓发育不良11型</td><td>结直肠癌1型</td><td>糖原贮积病Ⅶ型</td></tr>
<tr><td>ABCD综合症</td><td>短肋胸廓发育不良13型</td><td>结直肠癌3型</td><td>糖原贮积病II型</td></tr>
<tr><td>Abruzzo Erickson综合征</td><td>短肋胸廓发育不良14型</td><td>进行性核上性眼肌麻痹</td><td>糖原贮积病IXa1型</td></tr>
<tr><td>Acrocallosal综合征(Schinzel型)</td><td>短指A1c型</td><td>进行性家族性肝内胆汁淤积2型</td><td>糖原贮积病Ixb型</td></tr>
<tr><td>Acroerythrokeratoderma</td><td>短指A1d型</td><td>进行性家族性肝内胆汁淤积3型</td><td>糖原贮积病IXC型</td></tr>
<tr><td>Acromicric发育不良</td><td>短指A1型</td><td>进行性家族性肝内胆汁淤积4型</td><td>糖原贮积病IXD型</td></tr>
<tr><td>Adams-Oliver综合征1型</td><td>短指A2型</td><td>进行性家族性心脏传导阻滞1A型</td><td>糖原贮积病VI型</td></tr>
<tr><td>Adams-Oliver综合征2型</td><td>短指B1型</td><td>进行性家族性心脏传导阻滞1B型</td><td>糖原贮积病V型</td></tr>
<tr><td>Adams-Oliver综合征3型</td><td>短指B2型</td><td>进行性假性类风湿发育不良症</td><td>糖原贮积病XI型</td></tr>
<tr><td>Adams-Oliver综合征4型</td><td>短指C型</td><td>进行性脑白质病</td><td>糖原贮积病XV型</td></tr>
<tr><td>Adams-Oliver综合征5型</td><td>短指D型</td><td>神经性耳聋肾小管性酸中毒</td><td>糖原贮积病X型</td></tr>
<tr><td>Adams-Oliver综合征6型</td><td>短指E1型</td><td>进行性眼外肌麻痹线粒体DNA缺失1型</td><td>糖原贮积症1A型</td></tr>
<tr><td>ADULT综合征</td><td>短指E2型</td><td>进行性眼外肌麻痹线粒体DNA缺失2型</td><td>糖原贮积症IV型</td></tr>
<tr><td>Aicardi Goutieres综合征1型</td><td>短指伴高血压</td><td>进行性眼外肌麻痹线粒体DNA缺失3型</td><td>特发性基底节钙化1型</td></tr>
<tr><td>Aicardi Goutieres综合征2型</td><td>短指并指畸形综合征</td><td>进行性眼外肌麻痹线粒体DNA缺失4型</td><td>特发性基底节钙化4型</td></tr>
<tr><td>Aicardi Goutieres综合征3型</td><td>多巴胺羟化酶缺陷症</td><td>进行性眼外肌麻痹线粒体DNA缺失5型</td><td>特发性基底节钙化5型</td></tr>
<tr><td>Aicardi Goutieres综合征4型</td><td>多动脉炎结节</td><td>进眼外肌麻痹与线粒体DNA缺失6型</td><td>特发性基底节钙化6型</td></tr>
<tr><td>Aicardi Goutieres综合征5型</td><td>多发性骨骺发育不良（显性）</td><td>近端肾小管性酸中毒（眼部畸形和智力低下）</td><td>特发性敏感性癫痫病14型</td></tr>
<tr><td>Aicardi Goutieres综合征6型</td><td>多发性骨骺发育不良1型</td><td>近端指(趾)间关节粘连1B型</td><td>特发性普遍型癫痫病10型</td></tr>
<tr><td>Aicardi Goutieres综合征7型</td><td>多发性骨骺发育不良2型</td><td>近视眼21型</td><td>特发性普遍型癫痫病8型</td></tr>
<tr><td>AICAR甲酰转移酶/IMP环水解酶不足</td><td>多发性骨骺发育不良3型</td><td>近视眼22型</td><td>特发性普遍型癫痫病9型</td></tr>
<tr><td>Alagille综合征1型</td><td>多发性骨骺发育不良4型</td><td>近视眼23型</td><td>特发性肾病综合征（激素抗性）</td></tr>
<tr><td>Alagille综合征2型</td><td>多发性骨骺发育不良5型</td><td>近视眼24型</td><td>特发性嗜酸细胞增多症</td></tr>
<tr><td>Alazami综合征</td><td>多发性骨骺发育不良6型</td><td>近视眼6型</td><td>特发性网状青斑累及全身</td></tr>
<tr><td>Alexander病</td><td>多发性骨髓瘤</td><td>经典卡波西肉瘤</td><td>特发性血小板减少性紫癜</td></tr>
<tr><td>Allan-Herndon-Dudley综合征</td><td>多发性骨性联接综合征2型</td><td>惊跳症2型</td><td>特异性颗粒缺陷</td></tr>
<tr><td>Alport综合征（AD）</td><td>多发性骨性联接综合征3型</td><td>惊跳症3型</td><td>特异性语言障碍5型</td></tr>
<tr><td>Alport综合征（AR）</td><td>多发性关节脱位，身材矮小，颅面异形和先天性心脏缺陷</td><td>晶状角膜营养不良3A型</td><td>特应性IgE应答</td></tr>
<tr><td>Alport综合征（X连锁隐性）</td><td>多发性基底细胞癌</td><td>晶状角膜营养不良III型</td><td>天冬氨酰葡糖胺尿</td></tr>
<tr><td>AL-RAQAD综合征</td><td>多发性硫酸酯酶缺乏症</td><td>晶状角膜营养不良I型</td><td>天冬酰胺合成酶不足</td></tr>
<tr><td>Alstrom综合征</td><td>多发性内分泌瘤形成综合征</td><td>晶状体及瞳孔异位</td><td>条纹状骨病颅硬化症</td></tr>
<tr><td>Amish婴儿癫痫综合征</td><td>多发性内分泌瘤形成综合征1型</td><td>晶状体异位(AD)</td><td>铁粒幼贫血3型</td></tr>
<tr><td>Amish致死性畸形</td><td>多发性内分泌腺瘤1型</td><td>晶状体异位(AR)</td><td>铁粒幼细胞贫血（脊髓小脑性共济失调）</td></tr>
<tr><td>Anauxetic发育不良</td><td>多发性内分泌腺瘤2A型</td><td>晶状体异位(自发滤过泡，和颅面异形)</td><td>铁粒幼细胞贫血B细胞免疫缺陷，周期性发热，发育迟缓</td></tr>
<tr><td>Andermann综合征</td><td>多发性内分泌腺瘤2B型</td><td>精氨基​​琥珀酸裂解酶缺乏症</td><td>铁氧化酶缺乏症</td></tr>
<tr><td>Angelman样综合征</td><td>多发性内分泌腺瘤4型</td><td>精氨酸甘氨酸脒基转移酶不足</td><td>听觉神经病变</td></tr>
<tr><td>Angelman综合征</td><td>多发性皮肤粘膜和静脉畸形</td><td>精氨酸酶缺乏症</td><td>同型半胱氨酸（MTHFR缺乏）</td></tr>
<tr><td>Anhaptoglobinemia</td><td>多发性溶骨性病变，nodulosis和关节病</td><td>精神发育迟滞（ARX相关，有或无癫痫，X连锁）</td><td>头部和颈部鳞状细胞癌</td></tr>
<tr><td>Antley-Bixler综合征（生殖器异常）</td><td>多发性溶骨性肾病</td><td>精神发育迟滞（fra12a类型）</td><td>头发稀疏和毛细血管扩张性肾小球肾炎</td></tr>
<tr><td>Antley-Bixler综合征（生殖器正常）</td><td>多发性神经病，听力减退，共济失调，色素性视网膜炎，白内障</td><td>精神发育迟滞（X连锁100型）</td><td>头发形态1型</td></tr>
<tr><td>Arts综合征</td><td>多发性外生骨疣2型</td><td>精神发育迟滞（X连锁101型）</td><td>头皮耳乳头综合征</td></tr>
<tr><td>Asperger综合征</td><td>多发性胃肠萎缩</td><td>精神发育迟滞（X连锁102型）</td><td>透明纤维瘤病综合征</td></tr>
<tr><td>Asperger综合征2型</td><td>多发性先天性异常，肌张力低下，癫痫综合征1型</td><td>精神发育迟滞（X连锁12型）</td><td>透明质酸氨基葡糖苷酶缺乏症</td></tr>
<tr><td>Athabaskan脑干发育不全</td><td>多发性先天性异常，肌张力低下，癫痫综合征2型</td><td>精神发育迟滞（X连锁19型）</td><td>图案状中心凹色素上皮营养不良</td></tr>
<tr><td>ATR-X综合征</td><td>多发性先天性异常，肌张力低下，癫痫综合征3型</td><td>精神发育迟滞（X连锁1型）</td><td>腿畸形伴先天性白内障</td></tr>
<tr><td>AU-KLINE综合征</td><td>多发性纤维性毛囊瘤</td><td>精神发育迟滞（X连锁45型）</td><td>脱发性毛发角化病</td></tr>
<tr><td>Avellino角膜营养不良</td><td>多发性线粒体功能障碍综合征1型</td><td>精神发育迟滞（X连锁61型）</td><td>脱皮伴白甲（肢端点状角化病，唇炎，和指节垫皮肤）</td></tr>
<tr><td>Axenfeld-Rieger 综合征1型</td><td>多发性线粒体功能障碍综合征2型</td><td>精神发育迟滞（X连锁93型）</td><td>脱皮综合征</td></tr>
<tr><td>Axenfeld-Rieger 综合征3型</td><td>多发性线粒体功能障碍综合征3型</td><td>精神发育迟滞（X连锁96型）</td><td>脱皮综合征（肢端型）</td></tr>
<tr><td>Azores病</td><td>多发性线粒体功能障碍综合征4型</td><td>精神发育迟滞（X连锁98型）</td><td>脱皮综合征3型</td></tr>
<tr><td>Bainbridge-Ropers综合征</td><td>多发性修复性鳞状上皮瘤</td><td>精神发育迟滞（X连锁99型）</td><td>椭圆形红细胞性贫血1型</td></tr>
<tr><td>Baller-Gerold综合征</td><td>多发性翼状胬肉综合征Escobar型</td><td>精神发育迟滞（低渗相综合征X连锁1型）</td><td>椭圆形红细胞性贫血2型</td></tr>
<tr><td>Bamforth综合征</td><td>多发性硬化5型</td><td>精神发育迟滞,动作刻板，癫痫和/或脑畸形</td><td>唾液酸II型</td></tr>
<tr><td>Bannayan-Riley-Ruvalcaba综合征</td><td>多发性硬化症</td><td>精神发育迟滞，前上颌前突，和斜视</td><td>唾液酸酶和β-半乳糖苷酶联合缺陷症</td></tr>
<tr><td>Baraitser-Winter综合症1型</td><td>多发性脂囊瘤</td><td>精神发育迟滞10型，AD</td><td>唾液腺多形性腺瘤</td></tr>
<tr><td>Baraitser-Winter综合症2型</td><td>多汗症1型</td><td>精神发育迟滞11型，AD</td><td>瓦登伯革氏症候群1型</td></tr>
<tr><td>Barakat综合征</td><td>多汗症2型</td><td>精神发育迟滞12型，AD</td><td>瓦登伯革氏症候群2A型</td></tr>
<tr><td>Barber-Say综合征</td><td>多汗症3</td><td>精神发育迟滞13型，AD</td><td>瓦登伯革氏症候群2D型</td></tr>
<tr><td>Bardet-Biedl综合征</td><td>多可凝集性红细胞综合征</td><td>精神发育迟滞13型，AR</td><td>瓦登伯革氏症候群2E型</td></tr>
<tr><td>Bardet-Biedl综合征10型</td><td>多毛，精神发育迟滞，侏儒症和视网膜色素变性</td><td>精神发育迟滞14型，AD</td><td>瓦登伯革氏症候群4A型</td></tr>
<tr><td>Bardet-Biedl综合征11型</td><td>多毛症</td><td>精神发育迟滞14型，AR</td><td>瓦登伯革氏症候群4B型</td></tr>
<tr><td>Bardet-Biedl综合征12型</td><td>多囊肝2型</td><td>精神发育迟滞15型，AD</td><td>瓦登伯革氏症候群4C型</td></tr>
<tr><td>Bardet-Biedl综合征13型</td><td>多囊卵巢伴硬化性白质脑病</td><td>精神发育迟滞15型，AR</td><td>外侧多小脑回伴小脑发育不全及关节挛缩</td></tr>
<tr><td>Bardet-Biedl综合征14型</td><td>多囊肾（成人型）</td><td>精神发育迟滞16型，AD</td><td>外胚层发育不良(“纯”毛钉型)</td></tr>
<tr><td>Bardet-Biedl综合征15型</td><td>多囊肾（婴儿型）</td><td>精神发育迟滞17型，AD</td><td>外胚层发育不良(无汗性，T细胞免疫缺陷，AD)</td></tr>
<tr><td>Bardet-Biedl综合征16型</td><td>多囊肾2型</td><td>精神发育迟滞18型，AD</td><td>外胚层发育不良(无汗性，免疫缺陷，骨硬化病，淋巴水肿)</td></tr>
<tr><td>Bardet-Biedl综合征17型</td><td>多囊肾3型</td><td>精神发育迟滞18型，AR</td><td>外胚层发育不良/矮小综合征</td></tr>
<tr><td>Bardet-Biedl综合征18型</td><td>多内分泌腺病，神经病综合征</td><td>精神发育迟滞19型，AD</td><td>外胚层发育不良11A型</td></tr>
<tr><td>Bardet-Biedl综合征19型</td><td>多微小轴空病</td><td>精神发育迟滞1型，AD</td><td>外胚层发育不良11B型</td></tr>
<tr><td>Bardet-Biedl综合征2型</td><td>多系统平滑肌功能障碍综合征</td><td>精神发育迟滞1型，AR</td><td>外胚层发育不良7型</td></tr>
<tr><td>Bardet-Biedl综合征3型</td><td>多系统小儿型神经，内分泌和胰腺疾病</td><td>精神发育迟滞21型，AD</td><td>外胚层发育不良9型</td></tr>
<tr><td>Bardet-Biedl综合征4型</td><td>多腺体自身免疫综合征1型</td><td>精神发育迟滞21型，X连锁</td><td>外胚层发育不良Hay-Wells综合征</td></tr>
<tr><td>Bardet-Biedl综合征5型</td><td>多小脑回伴癫痫</td><td>精神发育迟滞23型，AD</td><td>外胚层发育不良并指畸形综合征1型</td></tr>
<tr><td>Bardet-Biedl综合征6型</td><td>多小脑回钙化</td><td>精神发育迟滞24型，AD</td><td>外胚层发育不良皮肤脆弱性综合征</td></tr>
<tr><td>Bardet-Biedl综合征7型</td><td>多小脑回视神经发育不全</td><td>精神发育迟滞26型，AD</td><td>弯骨发育不良综合征</td></tr>
<tr><td>Bardet-Biedl综合征8型</td><td>多形性后角膜营养不良1型</td><td>精神发育迟滞27型，AD</td><td>烷醇症</td></tr>
<tr><td>Bardet-Biedl综合征9型</td><td>多形性后角膜营养不良3型</td><td>精神发育迟滞27型，AR</td><td>腕管综合症</td></tr>
<tr><td>Barrett食管</td><td>多种物质滥用</td><td>精神发育迟滞28型，AD</td><td>网状色素皮病</td></tr>
<tr><td>Bartter综合征1型</td><td>多重骨骺发育不良伴近视和传导性耳聋</td><td>精神发育迟滞29型，AD</td><td>网状色素性疾病</td></tr>
<tr><td>Bartter综合征2型</td><td>额鼻发育不良1型</td><td>精神发育迟滞2型，AD</td><td>网状组织发育不全</td></tr>
<tr><td>Bartter综合征3型</td><td>额鼻发育不良2型</td><td>精神发育迟滞2型，AR</td><td>维生素D羟化缺乏性佝偻病1b型</td></tr>
<tr><td>Bartter综合征4B型</td><td>额鼻发育不良3型</td><td>精神发育迟滞30型，AD</td><td>维生素D依赖性佝偻病1型</td></tr>
<tr><td>Bartter综合征4型</td><td>额骨骺发育异常</td><td>精神发育迟滞30型，X连锁</td><td>维生素D依赖性佝偻病2型</td></tr>
<tr><td>Bartter综合征5型</td><td>额颞叶痴呆</td><td>精神发育迟滞31型，AD</td><td>维生素K依赖性凝血因子结合缺乏症1型</td></tr>
<tr><td>Basel-Vanagaite-Smirin-Yosef综合征</td><td>额颞叶痴呆（3号染色体相关）</td><td>精神发育迟滞32型，AD</td><td>维生素K依赖性凝血因子结合缺乏症2型</td></tr>
<tr><td>Beaulieu-Boycott-Innes综合征</td><td>额颞叶痴呆（泛素阳性）</td><td>精神发育迟滞33型，AD</td><td>伪血管性血友病</td></tr>
<tr><td>Becker型肌营养不良</td><td>额颞叶性痴呆和/或肌萎缩性侧索硬化</td><td>精神发育迟滞34型，AD</td><td>尾侧重复畸形</td></tr>
<tr><td>Beckwith-Wiedemann综合征</td><td>额颞叶性痴呆和/或肌萎缩性侧索硬化2型</td><td>精神发育迟滞34型，AR</td><td>胃肠道间质瘤</td></tr>
<tr><td>Best病</td><td>额颞叶性痴呆和/或肌萎缩性侧索硬化3型</td><td>精神发育迟滞35型，AD</td><td>胃淋巴瘤</td></tr>
<tr><td>Bethlem肌病</td><td>额颞叶性痴呆和/或肌萎缩性侧索硬化4型</td><td>精神发育迟滞36型，AD</td><td>胃肿瘤</td></tr>
<tr><td>Bethlem肌病2型</td><td>恶性高热易感1型</td><td>精神发育迟滞36型，AR</td><td>纹状体变性</td></tr>
<tr><td>Bietti晶体角膜视网膜营养不良</td><td>恶性高热易感5型</td><td>精神发育迟滞37型，AD</td><td>纹状体变性2型</td></tr>
<tr><td>Birbeck颗粒缺乏</td><td>恶性间皮瘤</td><td>精神发育迟滞37型，AR</td><td>纹状体坏死，渐进性多发性神经病</td></tr>
<tr><td>Birk Barel精神发育迟滞畸形综合征</td><td>腭裂（精神运动迟缓和五官异常）</td><td>精神发育迟滞38型，AD</td><td>无β脂蛋白血症</td></tr>
<tr><td>Blau综合征</td><td>儿​童癫痫2型</td><td>精神发育迟滞38型，AR</td><td>无白蛋白血症</td></tr>
<tr><td>Bloom综合征</td><td>儿​童癫痫5型</td><td>精神发育迟滞39型，AD</td><td>无丙种球蛋白血症（非Bruton型）</td></tr>
<tr><td>Boomerang发育不良</td><td>儿​童癫痫6型</td><td>精神发育迟滞39型，AR</td><td>无丙种球蛋白血症2型</td></tr>
<tr><td>Borjeson-Forssman-Lehmann综合征</td><td>儿童交替性偏瘫1型</td><td>精神发育迟滞3型，AD</td><td>无丙种球蛋白血症3型</td></tr>
<tr><td>Bosch-Boonstra-Schaaf视神经萎缩症</td><td>儿童交替性偏瘫2型</td><td>精神发育迟滞3型，AR</td><td>无丙种球蛋白血症4型</td></tr>
<tr><td>Bothnia视网膜营养不良</td><td>儿童磷酸酶过低症</td><td>精神发育迟滞3型，X连锁</td><td>无丙种球蛋白血症5型</td></tr>
<tr><td>Boucher Neuhauser综合征</td><td>耳腭面部综合征II型</td><td>精神发育迟滞40型，AD</td><td>无丙种球蛋白血症6型</td></tr>
<tr><td>Bowen-Conradi综合征</td><td>耳聋 (AD 1型)</td><td>精神发育迟滞40型，AR</td><td>无丙种球蛋白血症7型</td></tr>
<tr><td>Branchiooculofacial综合征</td><td>耳聋(AD 10型）</td><td>精神发育迟滞41型，AR</td><td>无丙种球蛋白血症8型</td></tr>
<tr><td>Branchiootic综合征</td><td>耳聋(AD 11型）</td><td>精神发育迟滞42型，AR</td><td>无过氧化氢酶血症</td></tr>
<tr><td>Branchiootic综合征3型</td><td>耳聋(AD 12型）</td><td>精神发育迟滞43型，AD</td><td>无汗性外胚层发育不良免疫缺陷</td></tr>
<tr><td>Brody肌病</td><td>耳聋(AD 13型）</td><td>精神发育迟滞43型，AR</td><td>无睑-巨口综合征</td></tr>
<tr><td>Brown-Vialetto-Van Laere综合征1型</td><td>耳聋(AD 15型）</td><td>精神发育迟滞44型，AR</td><td>无脸症1型</td></tr>
<tr><td>Brown-Vialetto-Van Laere综合征2型</td><td>耳聋(AD 17型）</td><td>精神发育迟滞45型，AR</td><td>无脸症2型</td></tr>
<tr><td>Bruck综合征1型</td><td>耳聋(AD 20型）</td><td>精神发育迟滞46型，AR</td><td>无脉络膜症</td></tr>
<tr><td>Bruck综合征2型</td><td>耳聋(AD 22型）</td><td>精神发育迟滞46型，X连锁</td><td>无毛症伴丘疹性损害</td></tr>
<tr><td>Brugada综合征1型</td><td>耳聋(AD 23型）</td><td>精神发育迟滞47型，AR</td><td>无脑回畸形，X连锁</td></tr>
<tr><td>Brugada综合征2型</td><td>耳聋(AD 25型）</td><td>精神发育迟滞48型，AR</td><td>无脑回畸形1型</td></tr>
<tr><td>Brugada综合征3型</td><td>耳聋(AD 28型）</td><td>精神发育迟滞49型，AR</td><td>无脑回畸形2型</td></tr>
<tr><td>Brugada综合征4型</td><td>耳聋(AD 2B型）</td><td>精神发育迟滞49型，X连锁</td><td>无脑回畸形2型，X连锁</td></tr>
<tr><td>Brugada综合征5型</td><td>耳聋(AD 36型）</td><td>精神发育迟滞4型，AD</td><td>无脑回畸形3型</td></tr>
<tr><td>Brugada综合征6型</td><td>耳聋(AD 39型）</td><td>精神发育迟滞50型，AR</td><td>无脑回畸形4型</td></tr>
<tr><td>Brugada综合征7型</td><td>耳聋(AD 3A型）</td><td>精神发育迟滞51型，AR</td><td>无脑回畸形5型</td></tr>
<tr><td>Brugada综合征8型</td><td>耳聋(AD 3B型）</td><td>精神发育迟滞52型，AR</td><td>无脑回畸形6型</td></tr>
<tr><td>Brugada综合征9型</td><td>耳聋(AD 40型）</td><td>精神发育迟滞53型，AR</td><td>无脑回畸形7型伴小脑发育不全</td></tr>
<tr><td>Budd-Chiari综合征</td><td>耳聋(AD 41型）</td><td>精神发育迟滞54型，AR</td><td>无手足畸形</td></tr>
<tr><td>Bullous眼黄斑营养不良</td><td>耳聋(AD 44型）</td><td>精神发育迟滞55型，AR</td><td>无血小板减少症贫血（X连锁）</td></tr>
<tr><td>Burkitt淋巴瘤</td><td>耳聋(AD 48型）</td><td>精神发育迟滞58型，X连锁</td><td>无眼/小眼</td></tr>
<tr><td>Burn-McKeown综合征</td><td>耳聋(AD 4B型）</td><td>精神发育迟滞5型，AD</td><td>无眼畸胎伴肢体异常</td></tr>
<tr><td>Buruli溃疡</td><td>耳聋(AD 4型）</td><td>精神发育迟滞5型，AR</td><td>无爪症</td></tr>
<tr><td>B细胞扩张</td><td>耳聋(AD 50型）</td><td>精神发育迟滞63型，X连锁</td><td>舞蹈病</td></tr>
<tr><td>C1q缺陷</td><td>耳聋(AD 56型）</td><td>精神发育迟滞6型，AD</td><td>舞蹈性棘红细胞症</td></tr>
<tr><td>Cafe-au-lait斑点伴肺动脉狭窄</td><td>耳聋(AD 5型）</td><td>精神发育迟滞6型，AR</td><td>舞蹈徐动症</td></tr>
<tr><td>CARD11免疫缺陷</td><td>耳聋(AD 64型）</td><td>精神发育迟滞7型，AD</td><td>戊二酸尿症1型</td></tr>
<tr><td>Cardiff假性高钾血症</td><td>耳聋(AD 65型）</td><td>精神发育迟滞7型，AR</td><td>戊二酸尿症2型</td></tr>
<tr><td>Carnevale综合征</td><td>耳聋(AD 66型）</td><td>精神发育迟滞8型，AD</td><td>戊二酰辅酶A氧化酶缺乏症</td></tr>
<tr><td>Carpenter综合征1型</td><td>耳聋(AD 67型）</td><td>精神发育迟滞91型，X连锁</td><td>戊糖尿症</td></tr>
<tr><td>Carpenter综合征2型</td><td>耳聋(AD 68型）</td><td>精神发育迟滞9型，AD</td><td>西尼罗河病毒</td></tr>
<tr><td>Catel Manzke综合征</td><td>耳聋(AD 70型）</td><td>精神发育迟滞9型，X连锁</td><td>系统性红斑狼疮</td></tr>
<tr><td>CATSPER相关男性不育</td><td>耳聋(AD 9型）</td><td>精神发育迟滞伴全垂体功能减退，X连锁</td><td>系统性红斑狼疮10型</td></tr>
<tr><td>CD11C+/+CD1C树突状细胞缺乏症</td><td>耳聋(AR 101型）</td><td>精神发育迟滞伴鲜明五官及有或无心脏缺陷</td><td>系统性红斑狼疮11型</td></tr>
<tr><td>CD59缺失</td><td>耳聋(AR 102型）</td><td>精神发育迟滞伴语言障碍和有或没有自闭症特征</td><td>系统性红斑狼疮16型</td></tr>
<tr><td>Cerebellofaciodental综合征</td><td>耳聋(AR 103型）</td><td>精神发育迟滞和小头畸形与脑桥小脑发育不全</td><td>系统性红斑狼疮1型</td></tr>
<tr><td>CFHR5不足</td><td>耳聋(AR 104型）</td><td>精神发育迟滞和言语运动障碍性癫痫（X连锁）</td><td>系统性红斑狼疮6型</td></tr>
<tr><td>CFHR5相关致密物沉积病</td><td>耳聋(AR 105型）</td><td>精神发育迟滞综合征（Claes-Jensen型，X连锁）</td><td>系统性红斑狼疮9型</td></tr>
<tr><td>CHARGE联合征</td><td>耳聋(AR 12型）</td><td>精神发育迟滞综合征（X连锁14型）</td><td>细胞和体液联合免疫缺陷（肉芽肿相关）</td></tr>
<tr><td>Char综合征</td><td>耳聋(AR 15型）</td><td>精神发育迟滞综合征X连锁（Hedera型）</td><td>细胞静脉畸形</td></tr>
<tr><td>Chediak-Higashi综合征</td><td>耳聋(AR 16型）</td><td>精神发育迟滞综合征X连锁（raymond型）</td><td>细胞内钴胺素代谢紊乱</td></tr>
<tr><td>Child综合征</td><td>耳聋(AR 18B型）</td><td>精神发育迟滞综合征X连锁（turner型）</td><td>细胞色素B5还原酶缺乏症</td></tr>
<tr><td>Chops综合征</td><td>耳聋(AR 18型）</td><td>精神发育迟滞综合征X连锁（wu型）</td><td>细胞色素C氧化酶缺乏症</td></tr>
<tr><td>Christianson综合征</td><td>耳聋(AR 1A型）</td><td>精神发育迟滞综合征X连锁10型</td><td>细胞色素P450氧化还原酶缺乏类固醇激素紊乱</td></tr>
<tr><td>Chudley-McCulloug综合征</td><td>耳聋(AR 1B型）</td><td>精神发育迟滞综合 X连锁13型</td><td>细齿</td></tr>
<tr><td>COACH综合征</td><td>耳聋(AR 21型）</td><td>精神发育迟滞综合征X连锁32型</td><td>下颌骨发育不全，耳聋，早衰样和脂肪代谢障碍综合征</td></tr>
<tr><td>Cocoon综合征</td><td>耳聋(AR 22型）</td><td>精神发育迟滞综合征X连锁33型</td><td>下丘脑错构瘤</td></tr>
<tr><td>CODAS综合征</td><td>耳聋(AR 23型）</td><td>精神发育迟滞综合征X连锁34型</td><td>下丘脑功能减退</td></tr>
<tr><td>Coffin-Lowry综合征</td><td>耳聋(AR 24型）</td><td>精神发育迟滞综合征X连锁99型（X连锁，女性受限）</td><td>先​​天性糖基化1R型</td></tr>
<tr><td>Coffin-Siris症候群</td><td>耳聋(AR 25型）</td><td>精神分裂症</td><td>先天性白内障（面部畸形和神经病变）</td></tr>
<tr><td>Coffin-Siris综合征5型</td><td>耳聋(AR 28型）</td><td>精神分裂症15型</td><td>先天性白内障（听力丧失和和神经退行性病变）</td></tr>
<tr><td>Cole Carpenter综合征</td><td>耳聋(AR 29型）</td><td>精神分裂症17型</td><td>先天性白内障伴缝间骨混浊</td></tr>
<tr><td>Cole-carpenter综合征2型</td><td>耳聋(AR 2型）</td><td>精神分裂症18型</td><td>先天性表皮发育不全</td></tr>
<tr><td>Cousin综合征</td><td>耳聋(AR 30型）</td><td>精神分裂症4型</td><td>先天性表皮发育不全（小头畸形）</td></tr>
<tr><td>Cowden综合征1型</td><td>耳聋(AR 31型）</td><td>精神分裂症6型</td><td>先天性杵状指</td></tr>
<tr><td>Cowden综合征2型</td><td>耳聋(AR 35型）</td><td>精神分裂症9型</td><td>先天性垂直距骨</td></tr>
<tr><td>Cowden综合征3型</td><td>耳聋(AR 36型）</td><td>精神运动发育迟缓，癫痫和颅面异形</td><td>先天性胆汁酸合成缺陷1型</td></tr>
<tr><td>Cowden综合征4型</td><td>耳聋(AR 37型）</td><td>精子发生阻滞</td><td>先天性胆汁酸合成缺陷2型</td></tr>
<tr><td>Cowden综合征5型</td><td>耳聋(AR 39型）</td><td>颈动脉内膜中层厚1型</td><td>先天性胆汁酸合成缺陷3型</td></tr>
<tr><td>Cowden综合征6型</td><td>耳聋(AR 3型）</td><td>胫骨，发育不良，多趾</td><td>先天性胆汁酸合成缺陷4型</td></tr>
<tr><td>Cowden综合征7型</td><td>耳聋(AR 42型）</td><td>胫前大疱性表皮松解</td><td>先天性胆汁酸合成缺陷5型</td></tr>
<tr><td>Craniolenticulosutural发育不良</td><td>耳聋(AR 44型）</td><td>痉挛性共济失调，Charlevoix-Saguenay型</td><td>先天性短肠综合征</td></tr>
<tr><td>Crigler-Najjar综合征</td><td>耳聋(AR 48型）</td><td>痉挛性共济失调5型，AR</td><td>先天性多发性外生骨疣</td></tr>
<tr><td>Crigler-Najjar综合征II型</td><td>耳聋(AR 49型）</td><td>痉挛性截瘫，视神经萎缩，和神经病</td><td>先天性非进行性远端脊肌萎缩症</td></tr>
<tr><td>Crouzon综合征</td><td>耳聋(AR 53型）</td><td>痉挛性截瘫10型</td><td>先天性分泌性腹泻（氯化物型）</td></tr>
<tr><td>Crouzon综合征伴黑棘皮病</td><td>耳聋(AR 59型）</td><td>痉挛性截瘫11型</td><td>先天性分泌性腹泻（钠型）</td></tr>
<tr><td>Currarino综合征</td><td>耳聋(AR 61型）</td><td>痉挛性截瘫12型</td><td>先天性感觉神经病变小髓神经纤维选择性丧失</td></tr>
<tr><td>Curry-Hall综合征</td><td>耳聋(AR 63型）</td><td>痉挛性截瘫13型</td><td>先天性高氨血症I型</td></tr>
<tr><td>Cushing综合征</td><td>耳聋(AR 66型）</td><td>痉挛性截瘫15型</td><td>先天性谷氨酰胺缺乏症</td></tr>
<tr><td>Cushing综合征伴指关节粘连</td><td>耳聋(AR 67型）</td><td>痉挛性截瘫17型</td><td>先天性骨折脊髓性肌萎缩2型</td></tr>
<tr><td>Cutis Gyrata综合征</td><td>耳聋(AR 68型）</td><td>痉挛性截瘫18型</td><td>先天性核性白内障2型</td></tr>
<tr><td>Czech跖骨发育不良</td><td>耳聋(AR 6型）</td><td>痉挛性截瘫1型</td><td>先天性核性白内障3型</td></tr>
<tr><td>C-样综合征</td><td>耳聋(AR 70型）</td><td>痉挛性截瘫28型</td><td>先天性红皮病伴掌跖角化病（少毛症，和高IgE）</td></tr>
<tr><td>C综合征</td><td>耳聋(AR 74型）</td><td>痉挛性截瘫2型</td><td>先天性红细胞生成性卟啉病</td></tr>
<tr><td>D-2-和L-2-羟基戊二酸联合尿症</td><td>耳聋(AR 76型）</td><td>痉挛性截瘫30型</td><td>先天性红细胞生成异常性贫血II型</td></tr>
<tr><td>D-2-羟基戊二酸尿症1型</td><td>耳聋(AR 77型）</td><td>痉挛性截瘫31型</td><td>先天性红细胞生成异常性贫血IV型</td></tr>
<tr><td>D-2-羟基戊二酸尿症2型</td><td>耳聋(AR 79型）</td><td>痉挛性截瘫33型</td><td>先天性红细胞生成异常性贫血I型</td></tr>
<tr><td>Dandy-Walker相关畸形</td><td>耳聋(AR 7型）</td><td>痉挛性截瘫35型</td><td>先天性厚甲1型</td></tr>
<tr><td>De Lange综合征</td><td>耳聋(AR 81型）</td><td>痉挛性截瘫39型</td><td>先天性厚甲2型</td></tr>
<tr><td>DE SANCTIS-CACCHIONE综合征</td><td>耳聋(AR 84B型）</td><td>痉挛性截瘫3型</td><td>先天性厚甲4型</td></tr>
<tr><td>Dejerine-Sottas病</td><td>耳聋(AR 84型）</td><td>痉挛性截瘫42型</td><td>先天性肌病（compton-north）</td></tr>
<tr><td>Desanto-shinawi综合征</td><td>耳聋(AR 86型）</td><td>痉挛性截瘫43型</td><td>先天性肌病（纤维不均衡）</td></tr>
<tr><td>Desbuquois发育不良2型</td><td>耳聋(AR 88型）</td><td>痉挛性截瘫44型</td><td>先天性肌肥大脑综合征</td></tr>
<tr><td>Desbuquois综合征</td><td>耳聋(AR 89型）</td><td>痉挛性截瘫45型</td><td>先天性肌强直（AD）</td></tr>
<tr><td>DFNA 2非综合征性耳聋</td><td>耳聋(AR 91型）</td><td>痉挛性截瘫46型</td><td>先天性肌强直（AR）</td></tr>
<tr><td>Diamond-Blackfan贫血10型</td><td>耳聋(AR 93型）</td><td>痉挛性截瘫47型</td><td>先天性肌无力综合征</td></tr>
<tr><td>Diamond-Blackfan贫血11型</td><td>耳聋(AR 97型）</td><td>痉挛性截瘫48型</td><td>先天性肌无力综合征（CHRNA1相关）</td></tr>
<tr><td>Diamond-Blackfan贫血12型</td><td>耳聋(AR 98型）</td><td>痉挛性截瘫49型</td><td>先天性肌无力综合征（慢通道型）</td></tr>
<tr><td>Diamond-Blackfan贫血13型</td><td>耳聋(AR 9型）</td><td>痉挛性截瘫4型</td><td>先天性肌无力综合征（突触前，有或没有运动神经病）</td></tr>
<tr><td>Diamond-Blackfan贫血14型</td><td>耳聋(GJB2/GJB3型)</td><td>痉挛性截瘫50型</td><td>先天性肌无力综合征（突触前和后缺陷）</td></tr>
<tr><td>Diamond-Blackfan贫血1型</td><td>耳聋(X连锁2型)</td><td>痉挛性截瘫51型</td><td>先天性肌无力综合征（乙酰胆碱受体缺乏）</td></tr>
<tr><td>Diamond-Blackfan贫血3型</td><td>耳聋(X连锁5型)</td><td>痉挛性截瘫53型</td><td>先天性肌无力综合征（乙酰唑胺敏感）</td></tr>
<tr><td>Diamond-Blackfan贫血4型</td><td>耳聋(X连锁6型)</td><td>痉挛性截瘫54型</td><td>先天性肌无力综合征11型</td></tr>
<tr><td>Diamond-Blackfan贫血5型</td><td>耳聋(人工耳蜗，近视和智力障碍)</td><td>痉挛性截瘫56型</td><td>先天性肌无力综合征13型</td></tr>
<tr><td>Diamond-Blackfan贫血7型</td><td>耳聋(先天性单侧或不对称)</td><td>痉挛性截瘫57型</td><td>先天性肌无力综合征17型</td></tr>
<tr><td>Diamond-Blackfan贫血8型</td><td>耳聋(先天性指甲营养不良)</td><td>痉挛性截瘫5A型</td><td>先天性肌无力综合征18型</td></tr>
<tr><td>Diamond-Blackfan贫血9型</td><td>耳聋Hystrix状鱼鳞病</td><td>痉挛性截瘫61型</td><td>先天性肌无力综合征19型</td></tr>
<tr><td>Diamond-Blackfan贫血伴耳畸形和腭裂</td><td>耳聋-不孕综合征</td><td>痉挛性截瘫62型</td><td>先天性肌无力综合征1B型</td></tr>
<tr><td>Diaphanospondylodysostosis</td><td>耳聋线粒体型</td><td>痉挛性截瘫63型</td><td>先天性肌无力综合征2a型</td></tr>
<tr><td>DICER1相关胸膜肺母细胞癌易感综合征</td><td>耳聋牙釉质发育不全</td><td>痉挛性截瘫64型</td><td>先天性肌无力综合征2c型</td></tr>
<tr><td>DiGeorge序列征</td><td>耳聋与小耳畸形和小牙发育不全</td><td>痉挛性截瘫6型</td><td>先天性肌无力综合征3a型</td></tr>
<tr><td>DNM2相关的中间腓骨肌萎缩病变</td><td>耳聋综合征</td><td>痉挛性截瘫72型</td><td>先天性肌无力综合征3b型</td></tr>
<tr><td>Donnai Barrow综合征</td><td>耳突综合征1型</td><td>痉挛性截瘫73型</td><td>先天性肌无力综合征3c型</td></tr>
<tr><td>Dowling-Degos病1型</td><td>耳突综合征2型</td><td>痉挛性截瘫74型</td><td>先天性肌无力综合征4b型</td></tr>
<tr><td>Dowling-Degos病2型</td><td>耳突综合征3型</td><td>痉挛性截瘫75型</td><td>先天性肌无力综合征9型</td></tr>
<tr><td>Dowling-Degos病4型</td><td>二甲基甘氨酸脱氢酶缺乏症</td><td>痉挛性截瘫76型</td><td>先天性肌无力综合征伴管状聚集3型</td></tr>
<tr><td>Drash综合征</td><td>二尖瓣脱垂2型</td><td>痉挛性截瘫77型</td><td>先天性肌无力综合征管状聚集1型</td></tr>
<tr><td>Duane-radial放射线综合征</td><td>二磷酸甘油酸变位酶缺乏症</td><td>痉挛性截瘫7型</td><td>先天性肌无力综合征无管状聚集</td></tr>
<tr><td>DUANE后退综合征3型</td><td>二氢蝶啶还原酶缺乏症</td><td>痉挛性截瘫8型</td><td>先天性肌营养不良（DAVIGNON-CHAUVEAU型）</td></tr>
<tr><td>Duane综合征2型</td><td>二氢嘧啶缺乏症</td><td>痉挛性截瘫9B型</td><td>先天性肌营养不良（LMNA相关）</td></tr>
<tr><td>Dubin-Johnson综合征</td><td>二氢脱氢酶缺乏症</td><td>痉挛性截瘫9型</td><td>先天性肌营养不良（megaconial型）</td></tr>
<tr><td>Dyggve-Melchior-Clausen综合征</td><td>发育不全侏儒症</td><td>痉挛性截瘫和精神运动性迟滞</td><td>先天性肌营养不良（整合素-7不足）</td></tr>
<tr><td>Dysgnathia复合体</td><td>发育迟缓矮小(畸形特征和头发稀疏)</td><td>痉挛性四肢瘫，薄胼胝体，渐进性小头畸形</td><td>先天性肌营养不良A10型</td></tr>
<tr><td>Dystransthyretinemic euthyroidal hyperthyroxinemia</td><td>发育异常1型</td><td>镜像运动2型</td><td>先天性肌营养不良A11型</td></tr>
<tr><td>Edict综合征</td><td>发育异常2型</td><td>镜像运动3型</td><td>先天性肌营养不良A12型</td></tr>
<tr><td>EEM综合征</td><td>发作性共济失调1型</td><td>酒精依赖</td><td>先天性肌营养不良A13型</td></tr>
<tr><td>Eiken骨骼发育不良</td><td>发作性共济失调2型</td><td>局部性癫痫</td><td>先天性肌营养不良A14型</td></tr>
<tr><td>Emery-Dreifuss肌营养不良1型</td><td>发作性共济失调5型</td><td>局部原发性皮肤淀粉样变2型</td><td>先天性肌营养不良A1型</td></tr>
<tr><td>Emery-Dreifuss肌营养不良3型</td><td>发作性共济失调6型</td><td>局灶性癫痫有或没有精神发育迟滞言语障碍</td><td>先天性肌营养不良A2型</td></tr>
<tr><td>Emery-Dreifuss肌营养不良4型</td><td>发作性睡病1型</td><td>局灶性节段性肾小球硬化1型</td><td>先天性肌营养不良A5型</td></tr>
<tr><td>Emery-Dreifuss肌营养不良5型</td><td>发作性睡病7型</td><td>局灶性节段性肾小球硬化2型</td><td>先天性肌营养不良A6型</td></tr>
<tr><td>Emery-Dreifuss肌营养不良7型</td><td>法乐氏四联症</td><td>局灶性节段性肾小球硬化3型</td><td>先天性肌营养不良A7型</td></tr>
<tr><td>Enamel-renal综合征</td><td>反复性流产2型</td><td>局灶性节段性肾小球硬化4型</td><td>先天性肌营养不良A8型</td></tr>
<tr><td>encephalomyopathic代谢危机，横纹肌溶解症，心律失常，神经退行性病变</td><td>反复性流产3型</td><td>局灶性节段性肾小球硬化5型</td><td>先天性肌营养不良A9型</td></tr>
<tr><td>Epstein综合征</td><td>范可尼贫血（互补A组）</td><td>局灶性节段性肾小球硬化6型</td><td>先天性肌营养不良B14型</td></tr>
<tr><td>ERCC1相关的着色性干皮</td><td>范可尼贫血（互补B组）</td><td>局灶性节段性肾小球硬化7型</td><td>先天性肌营养不良B1型</td></tr>
<tr><td>Even-plus综合征</td><td>范可尼贫血（互补C组）</td><td>局灶性节段性肾小球硬化8型</td><td>先天性肌营养不良B2型</td></tr>
<tr><td>Fabry病</td><td>范可尼贫血（互补D1组）</td><td>局灶性节段性肾小球硬化9型</td><td>先天性肌营养不良B3型</td></tr>
<tr><td>Fanconi renotubular综合征2型</td><td>范可尼贫血（互补D2组）</td><td>局灶性皮肤发育不全</td><td>先天性肌营养不良B4型</td></tr>
<tr><td>Fanconi renotubular综合征3型</td><td>范可尼贫血（互补E组）</td><td>巨大血小板综合征</td><td>先天性肌营养不良B5型</td></tr>
<tr><td>Fanconi renotubular综合征4型</td><td>范可尼贫血（互补F组）</td><td>巨大血小板综合征A2型</td><td>先天性肌营养不良B6型</td></tr>
<tr><td>Fanconi-Bickel 综合征</td><td>范可尼贫血（互补G组）</td><td>巨脑，多小脑回，多指畸形，脑积水综合征</td><td>先天性肌营养不良C12型</td></tr>
<tr><td>Farber's脂肪肉芽肿病</td><td>范可尼贫血（互补I组）</td><td>巨脑，多小脑回，多指畸形，脑积水综合征2型</td><td>先天性肌营养不良Eichsfeld型</td></tr>
<tr><td>Fechtner综合征</td><td>范可尼贫血（互补J组）</td><td>巨脑，多小脑回，多指畸形，脑积水综合征3型</td><td>先天性基质角膜营养不良</td></tr>
<tr><td>Feingold综合征1型</td><td>范可尼贫血（互补L组）</td><td>巨脑性白质脑病伴皮质下囊肿</td><td>先天性脊椎骨骺发育不良</td></tr>
<tr><td>Feingold综合征2型</td><td>范可尼贫血（互补M组）</td><td>巨脑性白质脑病伴皮质下囊肿1型</td><td>先天性甲状腺功能低下非甲状腺肿1型</td></tr>
<tr><td>FG综合征</td><td>范可尼贫血（互补N组）</td><td>巨脑性白质脑病伴皮质下囊肿2A型</td><td>先天性甲状腺功能低下非甲状腺肿5型</td></tr>
<tr><td>FG综合征2型</td><td>范可尼贫血（互补O组）</td><td>巨脑性白质脑病伴皮质下囊肿2B型</td><td>先天性甲状腺功能低下非甲状腺肿6型</td></tr>
<tr><td>FG综合征4型</td><td>范可尼贫血（互补P组）</td><td>巨血小板减少症，常染色体显性遗传</td><td>先天性间质性肺病，肾病综合症，大疱性表皮松解</td></tr>
<tr><td>Fibrochondrogenesis</td><td>范可尼贫血（互补Q组）</td><td>巨血小板减少症和渐进性感觉神经性耳聋</td><td>先天性角化不良(AD 2型)</td></tr>
<tr><td>Fibrochondrogenesis 2型</td><td>范可尼贫血（互补T组）</td><td>巨幼细胞贫血（二氢叶酸还原酶缺乏）</td><td>先天性角化不良(AD 3型)</td></tr>
<tr><td>Filippi综合征</td><td>芳香化酶缺乏症</td><td>巨幼细胞贫血（先天性代谢缺陷）</td><td>先天性角化不良(AD 6型)</td></tr>
<tr><td>Fitzsimmons-Guilbert综合征</td><td>芳族基-L-氨基酸脱羧酶缺乏症</td><td>巨幼细胞贫血伴糖尿病和神经性耳聋</td><td>先天性角化不良(AR 2型)</td></tr>
<tr><td>Fleck角膜营养不良</td><td>房间隔缺损3型</td><td>巨轴突病变，常染色体显性遗传</td><td>先天性角化不良(AR 3型)</td></tr>
<tr><td>Floating-Harbor综合征</td><td>房间隔缺损4型</td><td>巨轴突神经病</td><td>先天性角化不良(AR 5型)</td></tr>
<tr><td>Frank Ter Haar综合征</td><td>房间隔缺损5型</td><td>军团病</td><td>先天性角化不良(AR 6型)</td></tr>
<tr><td>Frasier综合征</td><td>房间隔缺损6型</td><td>菌血症1型</td><td>先天性角化不良X连锁</td></tr>
<tr><td>FRAXE</td><td>房间隔缺损7型</td><td>菌血症2型</td><td>先天性角化不良常染色体显性遗传</td></tr>
<tr><td>Freeman-Sheldon综合征</td><td>房间隔缺损8型</td><td>卡尔曼综合征1型</td><td>先天性角化不良常染色体隐性1型</td></tr>
<tr><td>Friedreich共济失调1型</td><td>房间隔缺损9型</td><td>卡尔曼综合征2型</td><td>先天性静止性夜盲（AD 1型）</td></tr>
<tr><td>Fuhrmann综合征</td><td>房室间隔缺损（共同房室交界区）</td><td>卡尔曼综合征3型</td><td>先天性静止性夜盲（AD 2型）</td></tr>
<tr><td>Gamstorp-Wohlfart综合征</td><td>房室间隔缺损2型</td><td>卡尔曼综合征4型</td><td>先天性静止性夜盲（AD 3型）</td></tr>
<tr><td>GATA-1相关的血小板减少与异常红系造血</td><td>房室间隔缺损4型</td><td>卡尔曼综合征5型</td><td>先天性静止性夜盲1A型</td></tr>
<tr><td>Gaucher's病1型</td><td>房室间隔缺损5型</td><td>卡尔曼综合征6型</td><td>先天性静止性夜盲1B型</td></tr>
<tr><td>Geleophysic发育不良1型</td><td>非典型分枝杆菌病</td><td>抗利尿激素不适当分泌综合征</td><td>先天性静止性夜盲1C型</td></tr>
<tr><td>Geleophysic发育不良2型</td><td>非典型戈谢病，由于鞘脂激活蛋白C缺乏症</td><td>抗凝血酶III缺乏症</td><td>先天性静止性夜盲1D型</td></tr>
<tr><td>Genitopatellar综合征</td><td>非典型克拉伯病（鞘脂A缺乏症）</td><td>科恩综合征</td><td>先天性静止性夜盲1E型</td></tr>
<tr><td>Gerstmann-Straussler-Scheinker综合征</td><td>非典型溶血性尿毒综合征</td><td>科尔病</td><td>先天性静止性夜盲1F型</td></tr>
<tr><td>Ghosal综合征</td><td>非典型溶血性尿毒综合征1型</td><td>科尔顿血型系统疾病</td><td>先天性静止性夜盲2A型</td></tr>
<tr><td>Gilbert综合征</td><td>非典型溶血性尿毒综合征2型</td><td>科凯恩综合征A型</td><td>先天性静止性夜盲2B型</td></tr>
<tr><td>Gillessen-kaesbach-nishimura综合征</td><td>非典型溶血性尿毒综合征4型</td><td>科凯恩综合征B型</td><td>先天性静止性夜盲症1G型</td></tr>
<tr><td>GM1神经节苷脂2型</td><td>非典型溶血性尿毒综合征6型</td><td>科斯特洛综合征</td><td>先天性静止性夜盲症1H型</td></tr>
<tr><td>Gnathodiaphyseal发育不良</td><td>非典型溶血性尿毒综合症3型</td><td>壳三糖酶缺乏症</td><td>先天性镜像运动</td></tr>
<tr><td>Goldberg-Shprintzen巨结肠症</td><td>非典型溶血性尿毒综合症5型</td><td>可的松还原酶缺乏1型</td><td>先天性巨结肠症</td></tr>
<tr><td>Gower型肌营养不良</td><td>非动脉炎性前部缺血性视神经病变</td><td>可的松还原酶缺乏2型</td><td>先天性巨结肠症，心脏缺陷，植物神经功能紊乱</td></tr>
<tr><td>Grebe综合征</td><td>非霍奇金恶性淋巴瘤</td><td>空肠闭锁与小头和眼部异常</td><td>先天性巨结肠症1型</td></tr>
<tr><td>Greenberg发育不良</td><td>非渐进性小脑性共济失调（智力低下）</td><td>空腹血糖数量性状位点5型</td><td>先天性巨结肠症2型</td></tr>
<tr><td>Griscelli综合征1型</td><td>非乳突状肾细胞癌</td><td>恐慌症1型</td><td>先天性巨结肠症3型</td></tr>
<tr><td>Griscelli综合征2型</td><td>非髓样甲状腺癌4型</td><td>口面裂10型</td><td>先天性巨结肠症4型</td></tr>
<tr><td>Griscelli综合征3型</td><td>非髓样甲状腺癌5型</td><td>口面裂11型</td><td>先天性抗纤维蛋白溶酶缺乏症</td></tr>
<tr><td>Groenouw角膜营养不良Ⅰ型</td><td>非特异性大疱性表皮松解</td><td>口面裂15型</td><td>先天性挛缩（肌张力低下和发育迟缓）</td></tr>
<tr><td>GTP环化水解酶I缺陷症</td><td>非酮性高甘氨酸血症</td><td>口面裂5型</td><td>先天性挛缩细长指</td></tr>
<tr><td>Haim-Munk综合征</td><td>非新生儿肾上腺脑白质营养不良</td><td>口面裂6型</td><td>先天性毛细管扩张性大理石样皮肤</td></tr>
<tr><td>Hajdu-Cheney综合征</td><td>非原发性醛固酮增多症</td><td>口腔颌面部综合征</td><td>先天性毛细血管畸形1型</td></tr>
<tr><td>Hecht综合征</td><td>非综合征型X连锁智力障碍</td><td>口腔颌面部综合征5型</td><td>先天性面部外胚层发育不良</td></tr>
<tr><td>Heimler综合征2型</td><td>肥大细胞增多症</td><td>口腔颌面部综合征6型</td><td>先天性凝血酶原不足</td></tr>
<tr><td>Hennekam淋巴管扩张和淋巴水肿综合征</td><td>肥厚性皮肤骨膜炎综合征</td><td>口腔颌面部综合征IV型</td><td>先天性葡萄糖，半乳糖吸收不良</td></tr>
<tr><td>Hennekam淋巴管扩张和淋巴水肿综合征2型</td><td>肥胖</td><td>口腔颌面部综合征型</td><td>先天性普秃</td></tr>
<tr><td>Hermansky Pudlak综合征1型</td><td>肥胖，饮食过量，发育迟缓</td><td>口形红细胞增多I型</td><td>先天性青光眼</td></tr>
<tr><td>Hermansky Pudlak综合征2型</td><td>腓骨发育不全和短指复杂</td><td>库鲁病</td><td>先天性全身性脂肪代谢障碍3型</td></tr>
<tr><td>Hermansky Pudlak综合征3型</td><td>腓骨肌萎缩症(声带麻痹)</td><td>髋关节发育不良（beukes型）</td><td>先天性全身性脂肪代谢障碍4型</td></tr>
<tr><td>Hermansky Pudlak综合征4型</td><td>腓骨肌萎缩症1A型</td><td>髋关节骨性关节炎</td><td>先天性全身脂肪营养不良1型</td></tr>
<tr><td>Hermansky Pudlak综合征5型</td><td>腓骨肌萎缩症1B型</td><td>扩张型心肌病（ANKRD1相关）</td><td>先天性全身脂肪营养不良2型</td></tr>
<tr><td>Hermansky Pudlak综合征6型</td><td>腓骨肌萎缩症1C型</td><td>扩张型心肌病（woolly毛发和皮肤角化）</td><td>先天性乳糖酶缺乏</td></tr>
<tr><td>Hermansky Pudlak综合征7型</td><td>腓骨肌萎缩症1D型</td><td>扩张型心肌病（woolly毛发和皮肤角化牙齿发育不全）</td><td>先天性肾上腺发育不全（X连锁）</td></tr>
<tr><td>Hermansky Pudlak综合征8型</td><td>腓骨肌萎缩症1E型</td><td>扩张型心肌病1AA型</td><td>先天性肾上腺皮质功能不全</td></tr>
<tr><td>Hermansky Pudlak综合征9型</td><td>腓骨肌萎缩症1F型</td><td>扩张型心肌病1A型</td><td>先天性双侧输精管缺乏</td></tr>
<tr><td>Holt-Oram 综合征</td><td>腓骨肌萎缩症1VFR型</td><td>扩张型心肌病1BB型</td><td>先天性四肢切断症，AR</td></tr>
<tr><td>Hopf疣状肢端角化病</td><td>腓骨肌萎缩症1V型</td><td>扩张型心肌病1CC型</td><td>先天性髓鞘神经病变</td></tr>
<tr><td>Howel-Evans综合征</td><td>腓骨肌萎缩症2A1型</td><td>扩张型心肌病1DD型</td><td>先天性糖基化1B型障碍</td></tr>
<tr><td>Hoyeraal赫雷达尔森综合征</td><td>腓骨肌萎缩症2A2型</td><td>扩张型心肌病1EE型</td><td>先天性糖基化1C型障碍</td></tr>
<tr><td>Hutchinson-Gilford综合征</td><td>腓骨肌萎缩症2B1型</td><td>扩张型心肌病1E型</td><td>先天性糖基化1D型障碍</td></tr>
<tr><td>Hydrolethalus综合征1型</td><td>腓骨肌萎缩症2B2型</td><td>扩张型心肌病1FF型</td><td>先天性糖基化1E型障碍</td></tr>
<tr><td>Hydrolethalus综合征2型</td><td>腓骨肌萎缩症2B型</td><td>扩张型心肌病1F型</td><td>先天性糖基化1F型障碍</td></tr>
<tr><td>Hyperbiliverdinemia</td><td>腓骨肌萎缩症2CC型</td><td>扩张型心肌病1GG型</td><td>先天性糖基化1G型障碍</td></tr>
<tr><td>Hyperchlorhidrosis</td><td>腓骨肌萎缩症2C型</td><td>扩张型心肌病1G型</td><td>先天性糖基化1H型障碍</td></tr>
<tr><td>H因子缺乏症</td><td>腓骨肌萎缩症2D型</td><td>扩张型心肌病1HH型</td><td>先天性糖基化1I型障碍</td></tr>
<tr><td>IFAP综合征伴有或无BRESHECK综合征</td><td>腓骨肌萎缩症2E型</td><td>扩张型心肌病1II型</td><td>先天性糖基化1J型障碍</td></tr>
<tr><td>IgA肾病3型</td><td>腓骨肌萎缩症2F型</td><td>扩张型心肌病1I型</td><td>先天性糖基化1K型障碍</td></tr>
<tr><td>IL21R免疫缺陷</td><td>腓骨肌萎缩症2I型</td><td>扩张型心肌病1JJ型</td><td>先天性糖基化1M型障碍</td></tr>
<tr><td>IRAK4缺陷</td><td>腓骨肌萎缩症2J型</td><td>扩张型心肌病1J型</td><td>先天性糖基化1N型障碍</td></tr>
<tr><td>Iridogoniodysgenesis 1型</td><td>腓骨肌萎缩症2K型</td><td>扩张型心肌病1KK型</td><td>先天性糖基化1O型障碍</td></tr>
<tr><td>Iridogoniodysgenesis（主导型）</td><td>腓骨肌萎缩症2L型</td><td>扩张型心肌病1L型</td><td>先天性糖基化1P型障碍</td></tr>
<tr><td>Ischiopatellar发育不良</td><td>腓骨肌萎缩症2N型</td><td>扩张型心肌病1M型</td><td>先天性糖基化1Q型障碍</td></tr>
<tr><td>IVIC综合征</td><td>腓骨肌萎缩症2O型</td><td>扩张型心肌病1NN型</td><td>先天性糖基化1S型障碍</td></tr>
<tr><td>I细胞病</td><td>腓骨肌萎缩症2P型</td><td>扩张型心肌病1N型</td><td>先天性糖基化1U型障碍</td></tr>
<tr><td>Jackson-Weiss综合症</td><td>腓骨肌萎缩症2Q型</td><td>扩张型心肌病1O型</td><td>先天性糖基化1V型障碍</td></tr>
<tr><td>Jakob-Creutzfeldt病</td><td>腓骨肌萎缩症2R型</td><td>扩张型心肌病1P型</td><td>先天性糖基化1W型障碍</td></tr>
<tr><td>Jankovic Rivera综合征</td><td>腓骨肌萎缩症2S型</td><td>扩张型心肌病1R型</td><td>先天性糖基化1X型障碍</td></tr>
<tr><td>Jarcho-Levin综合征</td><td>腓骨肌萎缩症2T型</td><td>扩张型心肌病1S型</td><td>先天性糖基化1Y型障碍</td></tr>
<tr><td>Jensen综合征</td><td>腓骨肌萎缩症2U型</td><td>扩张型心肌病1T型</td><td>先天性糖基化1Z型障碍</td></tr>
<tr><td>Jervell and Lange-Nielsen综合征1型</td><td>腓骨肌萎缩症2V型</td><td>扩张型心肌病1U型</td><td>先天性糖基化2B型障碍</td></tr>
<tr><td>Jervell and Lange-Nielsen综合征2型</td><td>腓骨肌萎缩症2W型</td><td>扩张型心肌病1V型</td><td>先天性糖基化2C型障碍</td></tr>
<tr><td>Johanson-Blizzard综合征</td><td>腓骨肌萎缩症2X型</td><td>扩张型心肌病1W型</td><td>先天性糖基化2D型障碍</td></tr>
<tr><td>Joubert综合征10型</td><td>腓骨肌萎缩症2Y型</td><td>扩张型心肌病1X型</td><td>先天性糖基化2E型障碍</td></tr>
<tr><td>Joubert综合征13型</td><td>腓骨肌萎缩症2Z型</td><td>扩张型心肌病1Y型</td><td>先天性糖基化2F型障碍</td></tr>
<tr><td>Joubert综合征14型</td><td>腓骨肌萎缩症2型</td><td>扩张型心肌病1Z型</td><td>先天性糖基化2G型障碍</td></tr>
<tr><td>Joubert综合征15型</td><td>腓骨肌萎缩症3型</td><td>扩张型心肌病2A型</td><td>先天性糖基化2H型障碍</td></tr>
<tr><td>Joubert综合征16型</td><td>腓骨肌萎缩症4A型</td><td>扩张型心肌病2B型</td><td>先天性糖基化2I型障碍</td></tr>
<tr><td>Joubert综合征17型</td><td>腓骨肌萎缩症4B1型</td><td>扩张型心肌病3B型</td><td>先天性糖基化2J型障碍</td></tr>
<tr><td>Joubert综合征18型</td><td>腓骨肌萎缩症4B2型</td><td>蜡泪样骨病</td><td>先天性糖基化2K型障碍</td></tr>
<tr><td>Joubert综合征1型</td><td>腓骨肌萎缩症4B3型</td><td>蜡样脂褐质神经元10型</td><td>先天性糖基化2L型障碍</td></tr>
<tr><td>Joubert综合征20型</td><td>腓骨肌萎缩症4C型</td><td>蜡样脂褐质神经元11型</td><td>先天性糖基化紊乱IIM型</td></tr>
<tr><td>Joubert综合征21型</td><td>腓骨肌萎缩症4D型</td><td>蜡样脂褐质神经元13型</td><td>先天性糖基化紊乱IIN型</td></tr>
<tr><td>Joubert综合征22型</td><td>腓骨肌萎缩症4G型</td><td>蜡样脂褐质神经元1型</td><td>先天性糖基化紊乱IIO型</td></tr>
<tr><td>Joubert综合征23型</td><td>腓骨肌萎缩症4H型</td><td>蜡样脂褐质神经元2型</td><td>先天性糖基化紊乱IIP型</td></tr>
<tr><td>Joubert综合征24型</td><td>腓骨肌萎缩症4J型</td><td>蜡样脂褐质神经元5型</td><td>先天性糖基化紊乱II型</td></tr>
<tr><td>Joubert综合征25型</td><td>腓骨肌萎缩症4K型</td><td>蜡样脂褐质神经元6型</td><td>先天性糖基化障碍</td></tr>
<tr><td>Joubert综合征26型</td><td>腓骨肌萎缩症5型</td><td>蜡样脂褐质神经元7型</td><td>先天性脱发掌跖角化症</td></tr>
<tr><td>Joubert综合征2型</td><td>腓骨肌萎缩症A型</td><td>蜡样脂褐质神经元8型</td><td>先天性外耳道闭锁</td></tr>
<tr><td>Joubert综合征3型</td><td>腓骨肌萎缩症B型</td><td>蜡样脂褐质神经元8型</td><td>先天性网状红皮病，鱼鳞病</td></tr>
<tr><td>Joubert综合征4型</td><td>腓骨肌萎缩症C型</td><td>萊伯氏先天性黑蒙症10型</td><td>先天性微绒毛萎缩</td></tr>
<tr><td>Joubert综合征5型</td><td>腓骨肌萎缩症C型</td><td>萊伯氏先天性黑蒙症11型</td><td>先天性无虹膜</td></tr>
<tr><td>Joubert综合征6型</td><td>腓骨肌萎缩症D型</td><td>萊伯氏先天性黑蒙症12型</td><td>先天性无唾液腺</td></tr>
<tr><td>Joubert综合征7型</td><td>腓骨肌萎缩症E型</td><td>萊伯氏先天性黑蒙症13型</td><td>先天性纤维蛋白原缺乏血症</td></tr>
<tr><td>Joubert综合征8型</td><td>腓骨肌萎缩症F型</td><td>萊伯氏先天性黑蒙症14型</td><td>先天性心脏疾病2型</td></tr>
<tr><td>Joubert综合征9型</td><td>肺癌</td><td>萊伯氏先天性黑蒙症15型</td><td>先天性心脏缺陷4型</td></tr>
<tr><td>Kabuki make-up综合征</td><td>肺表面活性物质代谢功能障碍1型</td><td>萊伯氏先天性黑蒙症16型</td><td>先天性选择性缺牙3型</td></tr>
<tr><td>Kabuki综合征2型</td><td>肺表面活性物质代谢功能障碍2型</td><td>萊伯氏先天性黑蒙症17型</td><td>先天性选择性缺牙4型</td></tr>
<tr><td>Kahrizi综合征</td><td>肺表面活性物质代谢功能障碍3型</td><td>萊伯氏先天性黑蒙症1型</td><td>先天性选择性缺牙6型</td></tr>
<tr><td>Kanzaki病</td><td>肺表面活性物质代谢功能障碍5型</td><td>萊伯氏先天性黑蒙症2型</td><td>先天性选择性缺牙7型</td></tr>
<tr><td>Kartagener综合征</td><td>肺静脉闭塞病</td><td>萊伯氏先天性黑蒙症3型</td><td>先天性血小板减少症</td></tr>
<tr><td>Kaufman oculocerebrofacial综合征</td><td>肺泡横纹肌肉瘤</td><td>萊伯氏先天性黑蒙症4型</td><td>先天性眼球震颤6型，X连锁</td></tr>
<tr><td>KBG综合征</td><td>肺泡毛细血管发育不良</td><td>萊伯氏先天性黑蒙症5型</td><td>先天性眼外肌纤维化1B型</td></tr>
<tr><td>Kenny-Caffey综合征1型</td><td>肺泡微石症</td><td>萊伯氏先天性黑蒙症6型</td><td>先天性眼外肌纤维化1型</td></tr>
<tr><td>Kenny-Caffey综合征2型</td><td>肺纤维化和/或骨髓衰竭1型</td><td>萊伯氏先天性黑蒙症7型</td><td>先天性眼外肌纤维化2型</td></tr>
<tr><td>Keppen-Lubinsky综合征</td><td>肺纤维化和/或骨髓衰竭2型</td><td>萊伯氏先天性黑蒙症8型</td><td>先天性眼外肌纤维化3a型</td></tr>
<tr><td>Keutel综合征</td><td>肺纤维化和/或骨髓衰竭3型</td><td>萊伯氏先天性黑蒙症9型</td><td>先天性眼外肌纤维化5型</td></tr>
<tr><td>Kindler综合症</td><td>肺纤维化和/或骨髓衰竭4型</td><td>濑川综合征</td><td>先天性叶酸吸收缺陷</td></tr>
<tr><td>Kitamura网状肢端色素沉着症</td><td>分枝杆菌和病毒易感（AR）</td><td>蓝色盲</td><td>先天性胰腺发育不全</td></tr>
<tr><td>Klein-Waardenberg综合征</td><td>芬兰先天性肾病综合征</td><td>斓卟啉症</td><td>先天性遗传性上睑下垂1型</td></tr>
<tr><td>Klippel-Feil综合征1型</td><td>枫糖尿症</td><td>劳林 - Sandrow综合征</td><td>先天性异常纤维蛋白原血症</td></tr>
<tr><td>Klippel-Feil综合征2型</td><td>枫糖尿症1B型</td><td>老年痴呆症</td><td>先天性鱼鳞病10型</td></tr>
<tr><td>Klippel-Feil综合征3型</td><td>枫糖尿症3型</td><td>酪氨酸激酶2不足</td><td>先天性鱼鳞病1型</td></tr>
<tr><td>Klippel-Feil综合征4型</td><td>蜂窝状视网膜营养不良</td><td>酪氨酸酶阳性眼皮肤白化病</td><td>先天性鱼鳞病2型</td></tr>
<tr><td>Kniest发育不良</td><td>跗腕骨联合综合征</td><td>酪氨酸酶阴性眼皮肤白化病</td><td>先天性鱼鳞病3型</td></tr>
<tr><td>Knobloch综合征1型</td><td>弗莱克视网膜，家族性良性</td><td>酪氨酸血症1型</td><td>先天性鱼鳞病4A型</td></tr>
<tr><td>Kohlschutter综合征</td><td>福山型先天性肌营养不良</td><td>酪氨酸血症2型</td><td>先天性鱼鳞病4B型</td></tr>
<tr><td>Koolen-de Vries综合征</td><td>辅酶Q10缺乏症1型</td><td>雷恩综合征</td><td>先天性鱼鳞病5型</td></tr>
<tr><td>Kosaki过度增生综合征</td><td>辅酶Q10缺乏症2型</td><td>雷曼综合征</td><td>先天性鱼鳞病8型</td></tr>
<tr><td>Kowarski综合征</td><td>辅酶Q10缺乏症3型</td><td>雷诺综合征</td><td>先天性鱼鳞病9型</td></tr>
<tr><td>Kugelberg-Welander病</td><td>辅酶Q10缺乏症4型</td><td>泪管缺陷</td><td>先天性原发性无晶体眼</td></tr>
<tr><td>L-2-羟基戊二酸尿症</td><td>辅酶Q10缺乏症5型</td><td>类鼻疽易感</td><td>先天性远端多重关节挛缩</td></tr>
<tr><td>Lafora病</td><td>辅酶Q10缺乏症6型</td><td>类风湿关节炎</td><td>先天性远端型多重关节挛缩</td></tr>
<tr><td>Lamb-shaffer综合征</td><td>辅酶Q10缺乏症7型</td><td>类固醇11-β-单加氧酶缺乏症</td><td>先天性脂肪瘤样增生（血管畸形和表皮痣）</td></tr>
<tr><td>Laron型生长激素缺陷</td><td>辅酶Q10缺乏症8型</td><td>类固醇17-α单加氧酶尿甙基转化酶</td><td>先天性致死性心脏糖原累积病，</td></tr>
<tr><td>Larsen综合征</td><td>附颅骨骺发育异常（AD)</td><td>类扭伤性侏儒</td><td>先天性中枢性肺换气不足</td></tr>
<tr><td>Laryngoonychocutaneous综合征</td><td>附颅骨骺发育异常（AR)</td><td>里德尔综合征</td><td>先天遗传疼痛不敏感</td></tr>
<tr><td>Laurence-Moon综合征</td><td>复发性肝内胆汁淤积1型</td><td>连珠状毛</td><td>先兆子痫1型</td></tr>
<tr><td>Leber氏视神经萎缩</td><td>复发性肝内胆汁淤积2型</td><td>联合丙二酸和甲基丙二酸尿症</td><td>先兆子痫4型</td></tr>
<tr><td>Legius综合征</td><td>复发性流产</td><td>联合垂体激素缺乏1型</td><td>先兆子痫5型</td></tr>
<tr><td>Leigh综合征</td><td>复发性葡萄胎2型</td><td>联合垂体激素缺乏2型</td><td>纤溶酶原激活物抑制剂1缺陷</td></tr>
<tr><td>Leigh综合征（French Canadian型）</td><td>复发性侵袭性肺炎球菌疾病1型</td><td>联合垂体激素缺乏3型</td><td>纤溶酶原缺乏I型</td></tr>
<tr><td>LEINER病</td><td>复发性侵袭性肺炎球菌疾病2型</td><td>联合垂体激素缺乏4型</td><td>纤维蛋白原缺乏血症</td></tr>
<tr><td>Lenz-Majewski骨质增生综合征</td><td>副神经节瘤1型</td><td>联合垂体激素缺乏6型</td><td>显性遗传性视神经萎缩</td></tr>
<tr><td>LEOPARD综合征1型</td><td>副神经节瘤2型</td><td>联合型高脂血症1型</td><td>显性营养不良大疱性表皮松解</td></tr>
<tr><td>LEOPARD综合征2型</td><td>副神经节瘤3型</td><td>联合脂酶缺乏症</td><td>线粒体3-羟基-3-甲基戊二酰-CoA合成酶缺乏症</td></tr>
<tr><td>LEOPARD综合征3型</td><td>副神经节瘤4型</td><td>亮氨酸介导型低血糖症</td><td>线粒体DNA耗竭综合征，encephalomyopathic型</td></tr>
<tr><td>Leprechaunism综合征</td><td>副神经节瘤5型</td><td>裂鼻</td><td>线粒体DNA耗竭综合征11型</td></tr>
<tr><td>Lesch-Nyhan综合征</td><td>副神经节瘤和胃间质肉瘤</td><td>淋巴管肌瘤病</td><td>线粒体DNA耗竭综合征12型</td></tr>
<tr><td>Levy-Hollister特综合征</td><td>腹部肥胖代谢综合症3型</td><td>淋巴增生综合征1型</td><td>线粒体DNA耗竭综合征13型</td></tr>
<tr><td>Lichtenstein-knorr综合征</td><td>腹腔疾病</td><td>淋巴增生综合征1型，X连锁</td><td>线粒体DNA耗竭综合征14型</td></tr>
<tr><td>Liebenberg综合征</td><td>腹泻4型</td><td>淋巴增生综合征2型</td><td>线粒体DNA耗竭综合征2型</td></tr>
<tr><td>Li-Fraumeni综合征1型</td><td>腹泻5型</td><td>淋巴增生综合征2型，X连锁</td><td>线粒体DNA耗竭综合征3型</td></tr>
<tr><td>Li-Fraumeni综合征2型</td><td>腹泻6型</td><td>磷酸丙糖异构酶缺乏</td><td>线粒体DNA耗竭综合征4B型</td></tr>
<tr><td>LIG4综合征</td><td>腹泻7型</td><td>磷酸甘油酸激酶1缺陷</td><td>线粒体DNA耗竭综合征5型</td></tr>
<tr><td>Loeys-Dietz综合征2型</td><td>腹泻8型</td><td>磷酸核糖焦磷酸合成酶超活性</td><td>线粒体DNA耗竭综合征7型</td></tr>
<tr><td>Loeys-Dietz综合征3型</td><td>甘胺酸N-甲基缺陷症</td><td>磷酸丝氨酸磷酸缺乏症</td><td>线粒体DNA耗竭综合征9型</td></tr>
<tr><td>Loeys-Dietz综合征4型</td><td>甘露糖结合蛋白缺乏症</td><td>磷酸脱氢酶缺乏症</td><td>线粒体DNA相关Le​​igh综合征和NARP</td></tr>
<tr><td>Lowe综合征</td><td>甘油激酶缺乏症</td><td>磷酸盐转运缺陷</td><td>线粒体丙酮酸载体缺乏症</td></tr>
<tr><td>Lucey-Driscoll综合征</td><td>甘油三酯贮积病</td><td>磷酸转移酶缺乏症</td><td>线粒体短链烯酰辅酶A水合酶1缺乏症</td></tr>
<tr><td>Luscan-lumish综合征</td><td>甘油酸激酶缺乏症</td><td>流感</td><td>线粒体复合物III缺陷</td></tr>
<tr><td>Lynch综合征II型</td><td>肝静脉闭塞型免疫缺陷</td><td>硫嘌呤代谢不良2型</td><td>线粒体复合物III缺陷2型</td></tr>
<tr><td>Lynch综合征I型</td><td>肝素辅助因子II缺乏症</td><td>硫嘌呤甲基转移酶缺乏症</td><td>线粒体复合物III缺陷3型</td></tr>
<tr><td>Lysinuric蛋白不耐受</td><td>肝细胞癌</td><td>隆突性皮肤</td><td>线粒体复合物III缺陷4型</td></tr>
<tr><td>L-铁蛋白缺乏症</td><td>肝腺苷蛋氨酸缺乏症</td><td>颅额鼻发育不良</td><td>线粒体复合物III缺陷5型</td></tr>
<tr><td>Majeed综合征</td><td>肝脏先天性囊肿病</td><td>颅缝早闭1型</td><td>线粒体复合物III缺陷6型</td></tr>
<tr><td>Malouf综合征</td><td>肝脂酶缺乏症</td><td>颅缝早闭2型</td><td>线粒体复合物III缺陷7型</td></tr>
<tr><td>Mandibuloacral发育不良伴B型脂肪代谢障碍</td><td>杆状体肌病10型</td><td>颅缝早闭3型</td><td>线粒体复合物III缺陷8型</td></tr>
<tr><td>Mandibuloacral发育不全</td><td>杆状体肌病1型</td><td>颅缝早闭4型</td><td>线粒体复合物III缺陷9型</td></tr>
<tr><td>Mandibulofacial发育不全（Treacher Collins型）</td><td>杆状体肌病2型</td><td>颅缝早闭5型</td><td>线粒体复合物II缺乏症</td></tr>
<tr><td>Mandibulofacial发育不全伴脱发</td><td>杆状体肌病3型</td><td>颅缝早闭6型</td><td>线粒体复合物I缺陷</td></tr>
<tr><td>Marden Walker样综合征</td><td>杆状体肌病4型</td><td>颅缝早闭和牙齿畸形</td><td>线粒体复合物V不足1型</td></tr>
<tr><td>Marden Walker综合征</td><td>杆状体肌病5型</td><td>颅骨骨干发育异常1型</td><td>线粒体复合物V不足2型</td></tr>
<tr><td>Marfan型脂肪代谢障碍综合征</td><td>杆状体肌病6型</td><td>颅骨骨干发育异常2型</td><td>线粒体复合物V不足3型</td></tr>
<tr><td>Marfan综合征</td><td>杆状体肌病7型</td><td>颅骨骨干发育异常3型</td><td>线粒体复合物V缺陷4型</td></tr>
<tr><td>Marie Unna遗传性少毛症1型</td><td>杆状体肌病8型</td><td>颅骨骨干发育异常4型</td><td>线粒体肌病</td></tr>
<tr><td>Marinesco–Sjögren综合征</td><td>杆状体肌病9型</td><td>颅骨骨干发育异常AD型</td><td>线粒体肌病伴乳酸性酸中毒</td></tr>
<tr><td>Marles Greenberg Persaud综合征</td><td>感光毛发硫营养不良</td><td>颅面耳聋手综合征</td><td>线粒体疾病</td></tr>
<tr><td>Marshall-Smith综合征</td><td>感觉神经病变共济失调，构音障碍，眼肌瘫痪</td><td>颅面畸形，多指和皮肤异常和内脏发育不全</td><td>线粒体磷酸烯醇不足</td></tr>
<tr><td>Marshall综合征</td><td>感染，反复发作，脑病，肝功能异常和心血管畸形</td><td>颅面畸形和眼前段发育不全综合征</td><td>线粒体磷酸盐载体缺乏症</td></tr>
<tr><td>Martsolf综合征</td><td>感染引起的急性脑病3型</td><td>路易体痴呆</td><td>线粒体三功能蛋白缺乏症</td></tr>
<tr><td>MASP2缺乏症</td><td>感染引起的急性脑病4型</td><td>卵巢发育不全1型</td><td>线粒体型帕金森病</td></tr>
<tr><td>MASS综合征</td><td>干瘪细胞增多症</td><td>卵巢发育不全2型</td><td>线形角化病鱼鳞病伴先天性和硬化性角化病</td></tr>
<tr><td>Mast综合征</td><td>干骺端anadysplasia 2型</td><td>卵巢发育不全3型</td><td>线性皮肤缺损伴多重先天性异常3型</td></tr>
<tr><td>May-Hegglin异常</td><td>干骺端发育不良颌骨发育不全和短指</td><td>卵巢发育不全4型</td><td>腺苷酸琥珀酸裂解酶缺乏症</td></tr>
<tr><td>McCune-Albright综合征</td><td>干骺端发育不良无少毛症</td><td>卵巢过度刺激综合征</td><td>腺苷酸激酶缺乏症</td></tr>
<tr><td>McKusick Kaufman综合征</td><td>干骺端软骨发育不全（Jansen型）</td><td>卵巢早衰11型</td><td>腺泡状软组织肉瘤</td></tr>
<tr><td>McLeod神经棘红细胞增多综合征</td><td>干骺端软骨发育不全（McKusick型）</td><td>卵巢早衰12型</td><td>腺嘌呤磷酸核糖转移酶缺乏症</td></tr>
<tr><td>Meacham综合征</td><td>干骺端软骨发育不全（Schmid型）</td><td>卵巢早衰1型</td><td>小儿发病的运动四肢和颜面部障碍</td></tr>
<tr><td>Meckel综合征10型</td><td>干骺端软骨发育不全（Spahr型）</td><td>卵巢早衰2A型</td><td>小儿急性肝功能衰竭</td></tr>
<tr><td>Meckel综合征11型</td><td>高IgM免疫缺陷1型</td><td>卵巢早衰2B型</td><td>小耳畸形，听力障碍和腭裂</td></tr>
<tr><td>Meckel综合征12型</td><td>高IgM免疫缺陷2型</td><td>卵巢早衰3型</td><td>小红细胞性贫血</td></tr>
<tr><td>Meckel综合征1型</td><td>高IgM免疫缺陷3型</td><td>卵巢早衰5型</td><td>小角膜，近视脉络膜视网膜萎缩，内眦距过宽</td></tr>
<tr><td>Meckel综合征2型</td><td>高IgM免疫缺陷5型</td><td>卵巢早衰6型</td><td>小脑萎缩（视力障碍和精神运动迟缓）</td></tr>
<tr><td>Meckel综合征3型</td><td>高α脂蛋白血症</td><td>卵巢早衰7型</td><td>小脑性共济失调（cayman型）</td></tr>
<tr><td>Meckel综合征4型</td><td>高α脂蛋白血症2型</td><td>卵巢早衰8型</td><td>小脑性共济失调（耳聋和发作性睡病）</td></tr>
<tr><td>Meckel综合征5型</td><td>高氨血症</td><td>卵巢早衰9型</td><td>小脑性共济失调（视神经萎缩）</td></tr>
<tr><td>Meckel综合征6型</td><td>高氨血症III型</td><td>卵巢肿瘤</td><td>小脑性共济失调（无虹膜和智力低下）</td></tr>
<tr><td>Meckel综合征7型</td><td>高苯丙氨酸血症D型(BH4缺乏)</td><td>卵黄营养不良</td><td>小脑性共济失调（小儿进行性眼外肌麻痹）</td></tr>
<tr><td>Meckel综合征8型</td><td>高胆固醇血症</td><td>卵母细胞成熟缺陷</td><td>小脑性共济失调（性腺机能减退）</td></tr>
<tr><td>Meckel综合征9型</td><td>高胆固醇血症3型</td><td>卵母细胞成熟缺陷2型</td><td>小脑性共济失调智力低下和平衡失调综合征1型</td></tr>
<tr><td>MECP2基因重复综合征</td><td>高胆固醇血症B型</td><td>卵形红细胞症，遗传性溶血性</td><td>小脑性共济失调智力低下和平衡失调综合征2型</td></tr>
<tr><td>Meesman角膜营养不良</td><td>高度近视（白内障和玻璃体视网膜变性）</td><td>伦茨小眼综合征</td><td>小脑性共济失调智力低下和平衡失调综合征3型</td></tr>
<tr><td>Meier-Gorlin综合征1型</td><td>高分子量激肽原不足症</td><td>裸淋巴细胞综合征</td><td>小脑性共济失调智力低下和平衡失调综合征4型</td></tr>
<tr><td>Meier-Gorlin综合征2型</td><td>高甘氨酸尿</td><td>滤泡性甲状腺癌，</td><td>小头畸形，癫痫，糖尿病综合症</td></tr>
<tr><td>Meier-Gorlin综合征3型</td><td>高甲硫胺酸血症(腺苷激酶缺乏)</td><td>滤泡性淋巴瘤1型</td><td>小头畸形，淋巴水肿，或智力低下</td></tr>
<tr><td>Meier-Gorlin综合征4型</td><td>高甲硫胺酸血症与S腺苷高半​​胱氨酸水解酶缺乏症</td><td>麻风2型</td><td>小头畸形，毛细血管畸形综合征</td></tr>
<tr><td>Meier-Gorlin综合征5型</td><td>高钾型周期性麻痹1型</td><td>麻风3型</td><td>小头畸形，身材矮小，葡萄糖代谢受损</td></tr>
<tr><td>Meier-Gorlin综合征6型</td><td>高离氨酸血症</td><td>麻风4型</td><td>小头畸形，身材矮小，葡萄糖代谢受损2型</td></tr>
<tr><td>Meier-Gorlin综合征7型</td><td>高磷酸酶症伴精神发育迟滞综合征1型</td><td>麻风5型</td><td>小头畸形，食管裂孔疝及肾病综合征</td></tr>
<tr><td>Melnick-Fraser综合征</td><td>高磷酸酶症伴精神发育迟滞综合征2型</td><td>马蹄内翻足</td><td>小头畸形，先天性白内障和银屑病性皮炎</td></tr>
<tr><td>Melnick-Needles综合征</td><td>高磷酸酶症伴精神发育迟滞综合征3型</td><td>脉络丛乳头状瘤</td><td>小头畸形，智力正常和免疫缺陷</td></tr>
<tr><td>MEND综合征</td><td>高磷酸酶症伴精神发育迟滞综合征4型</td><td>脉络膜萎缩</td><td>小头畸形伴智力低下</td></tr>
<tr><td>Menkes卷毛症</td><td>高磷酸酶症伴精神发育迟滞综合征5型</td><td>慢性骨髓增殖性疾病</td><td>小头畸形和脉络膜视网膜病变AR</td></tr>
<tr><td>MERCER-BA综合征</td><td>高磷酸酶症伴精神发育迟滞综合征6型</td><td>慢性粒细胞白血病</td><td>小头畸形和脉络膜视网膜病变AR2型</td></tr>
<tr><td>Meretoja综合征</td><td>高磷酸酯酶血症伴骨病</td><td>慢性肉芽肿病（X连锁）</td><td>小头畸形和脉络膜视网膜病变AR3型</td></tr>
<tr><td>Merosin缺陷的先天性肌营养不良</td><td>高镁血症伴肌张力障碍2型</td><td>慢性肉芽肿病，常染色体隐性，色素b阴性</td><td>小细胞肺癌</td></tr>
<tr><td>Metatrophic发育不良</td><td>高镁血症肌伴张力障碍，红细胞增多症，肝硬化</td><td>慢性肉芽肿病1型</td><td>小眼球2型</td></tr>
<tr><td>Microhydranencephaly</td><td>高泌乳素血症</td><td>慢性肉芽肿病2型</td><td>小眼球4型</td></tr>
<tr><td>MiniCore肌病伴眼外肌麻痹</td><td>高免疫球蛋白D综合征</td><td>慢性肉芽肿病3型</td><td>小眼综合征11型</td></tr>
<tr><td>MIRAGE综合征</td><td>高免疫球蛋白E反复感染综合征</td><td>慢性心房颤动和肠道节律紊乱</td><td>小眼综合征12型</td></tr>
<tr><td>Mitchell-Riley综合征</td><td>高免疫球蛋白E综合征</td><td>慢性型特发性纤维性肺泡炎</td><td>小眼综合征13型</td></tr>
<tr><td>Miyoshi肌营养不良1型</td><td>高鸟氨酸血症高氨血症高瓜氨酸尿综合征</td><td>慢性婴儿神经系统，皮肤和关节综合征</td><td>小眼综合征14型</td></tr>
<tr><td>Miyoshi肌营养不良2型</td><td>高尿酸血症，肺动脉高血压，肾功能衰竭，以及性碱中毒</td><td>慢性阻塞性肺疾病</td><td>小眼综合征3型</td></tr>
<tr><td>Mohr-Tranebjaerg综合征</td><td>高前胰岛素血症</td><td>慢乙酰，N-乙酰转移酶变体</td><td>小眼综合征5型</td></tr>
<tr><td>MORM综合征</td><td>高铁血红蛋白血症4型</td><td>毛发肝胆肠综合征</td><td>小眼综合征6型</td></tr>
<tr><td>Mowat-Wilson综合征</td><td>高血压舒张抗性</td><td>毛发肝胆肠综合征2型</td><td>小眼综合征7型</td></tr>
<tr><td>Muenke综合征</td><td>高胰岛素血症，高血氨症</td><td>毛发红糠疹</td><td>小眼综合征9型</td></tr>
<tr><td>Muir-Torré综合征</td><td>高脂蛋白血症ID型</td><td>毛发硫营养障碍症1型</td><td>哮喘</td></tr>
<tr><td>Mulibrey nanism综合征</td><td>高脂蛋白血症I型</td><td>毛发硫营养障碍症2型</td><td>哮喘（鼻息肉和阿司匹林不耐受）</td></tr>
<tr><td>MyD88缺乏症</td><td>睾酮17-β-脱氢酶缺乏症</td><td>毛发硫营养障碍症3型</td><td>哮喘1型</td></tr>
<tr><td>Myelocerebellar障碍</td><td>睾丸恶性肿瘤</td><td>毛发硫营养障碍症5型</td><td>哮喘2型</td></tr>
<tr><td>MYH9相关疾病</td><td>睾丸微石症</td><td>毛发硫营养障碍症6型</td><td>哮喘5型</td></tr>
<tr><td>Myhre综合征</td><td>睾丸异常</td><td>毛发增多骨软骨发育异常</td><td>哮喘7型</td></tr>
<tr><td>MYH相关性息肉病</td><td>戈登综合征</td><td>毛囊角化病</td><td>心房颤动10型</td></tr>
<tr><td>Myotilinopathy</td><td>戈林综合征</td><td>毛细血管畸形（动静脉畸形）</td><td>心房颤动11型</td></tr>
<tr><td>Naegeli-Franceschetti-Jadassohn综合征</td><td>戈谢病，围产期致死</td><td>毛细血管扩张，遗传性出血性，5型</td><td>心房颤动12型</td></tr>
<tr><td>Nager综合征</td><td>戈谢病3C型</td><td>毛-牙-骨综合征</td><td>心房颤动13型</td></tr>
<tr><td>Nail-patella综合征</td><td>隔-视神经发育不良</td><td>美国本土肌病</td><td>心房颤动14型</td></tr>
<tr><td>Nail疾病，先天性非综合征10型</td><td>膈疝3型</td><td>弥漫囊性肾发育不良</td><td>心房颤动15型</td></tr>
<tr><td>Nail疾病，先天性非综合征8型</td><td>共济失调（AD)</td><td>弥漫性系膜硬化</td><td>心房颤动3型</td></tr>
<tr><td>Nakajo综合征</td><td>共济失调（毛细血管扩张症）</td><td>米勒综合征</td><td>心房颤动4型</td></tr>
<tr><td>Nance-Horan综合征</td><td>共济失调（听力损失和糖尿病）</td><td>米其林轮胎婴儿综合征</td><td>心房颤动6型</td></tr>
<tr><td>Navajo neurohepatopathy</td><td>共济失调（维生素E缺乏症）</td><td>米歇尔斯综合征</td><td>心房颤动7型</td></tr>
<tr><td>Naxos病</td><td>共济失调伴毛细血管扩张症样障碍</td><td>免疫球蛋白A缺乏症2型</td><td>心房颤动9型</td></tr>
<tr><td>Nestor-Guillermo早衰综合症</td><td>共济失调伴毛细血管扩张症样障碍2型</td><td>免疫球蛋白κ轻链缺陷</td><td>心房间隔缺损2型</td></tr>
<tr><td>Netherton综合征</td><td>共济失调伴眼球运动失用症3型</td><td>免疫缺陷（CD3-zeta缺陷）</td><td>心房停顿</td></tr>
<tr><td>Neu-Laxova综合征1型</td><td>共济失调伴眼球运动失用症4型</td><td>免疫缺陷（CD3-γ缺陷）</td><td>心房停顿2型</td></tr>
<tr><td>Neu-Laxova综合征2型</td><td>共济失调痉挛1型</td><td>免疫缺陷（ficolin 3缺乏）</td><td>心肌病</td></tr>
<tr><td>Newfoundland杆锥营养不良</td><td>共济失调痉挛2型</td><td>免疫缺陷（mapbp结合蛋白缺陷）</td><td>心肌梗死1型</td></tr>
<tr><td>Nicolaides-Baraitser综合征</td><td>共济失调痉挛3型</td><td>免疫缺陷，着丝粒不稳定，面部异常综合征2型</td><td>心脸皮肤综合征1型</td></tr>
<tr><td>Nijmegen破损综合征样障碍</td><td>共济失调痉挛4型</td><td>免疫缺陷，着丝粒不稳定，面部异常综合征3型</td><td>心脸皮肤综合征2型</td></tr>
<tr><td>Nonaka肌病</td><td>谷氨酸亚氨甲基转移酶缺乏症</td><td>免疫缺陷，着丝粒不稳定，面部异常综合征4型</td><td>心脸皮肤综合征3型</td></tr>
<tr><td>Noonan综合征</td><td>谷固醇血症</td><td>免疫缺陷12型</td><td>心脸皮肤综合征4型</td></tr>
<tr><td>Noonan综合征10型</td><td>谷胱甘肽过氧化物酶缺乏症</td><td>免疫缺陷12型</td><td>心律失常</td></tr>
<tr><td>Noonan综合征1型</td><td>谷胱甘肽合成酶缺乏症</td><td>免疫缺陷13型</td><td>心性脑病</td></tr>
<tr><td>Noonan综合征3型</td><td>股骨头缺血性坏死</td><td>免疫缺陷13型</td><td>心性脑病2型</td></tr>
<tr><td>Noonan综合征4型</td><td>骨脆性与挛缩</td><td>免疫缺陷15型</td><td>心性脑病3型</td></tr>
<tr><td>Noonan综合征5型</td><td>骨发育不全1型</td><td>免疫缺陷16型</td><td>心性脑病4型</td></tr>
<tr><td>Noonan综合征6型</td><td>骨发育不全2型</td><td>免疫缺陷17型</td><td>心血管系统疾病</td></tr>
<tr><td>Noonan综合征7型</td><td>骨发育不全3型</td><td>免疫缺陷18型</td><td>心脏瓣膜发育不良</td></tr>
<tr><td>Noonan综合征8型</td><td>骨发育异常，轻度侏儒症2型</td><td>免疫缺陷19型</td><td>心脏传导障碍</td></tr>
<tr><td>Noonan综合征9型</td><td>骨发育异常性老年状皮肤</td><td>免疫缺陷20型</td><td>心脏和大脑畸形综合征</td></tr>
<tr><td>North american indian童年肝硬化</td><td>骨干发育不良</td><td>免疫缺陷22型</td><td>心脏手综合征，Slovenian型</td></tr>
<tr><td>Norum病</td><td>骨骼Paget病6型</td><td>免疫缺陷23型</td><td>心脏圆锥动脉干畸形</td></tr>
<tr><td>NSDHL相关疾病</td><td>骨骼缺陷，生殖器发育不良，智力低下</td><td>免疫缺陷24型</td><td>心脏左侧发育不全综合征</td></tr>
<tr><td>N末端乙酰转移酶缺乏症</td><td>骨骼早发Paget病2型</td><td>免疫缺陷26型</td><td>心脏左侧发育不全综合征2型</td></tr>
<tr><td>N-乙酰不足</td><td>骨关节炎1型</td><td>免疫缺陷27b型</td><td>新生儿大疱性瞬态皮肤松懈</td></tr>
<tr><td>N综合征</td><td>骨关节炎3型</td><td>免疫缺陷28型</td><td>新生儿低血糖</td></tr>
<tr><td>Ochoa综合征</td><td>骨关节炎轻度软骨</td><td>免疫缺陷29型</td><td>新生儿肺动脉高压</td></tr>
<tr><td>Oculoauricular综合征</td><td>骨骺软骨异常（miura型）</td><td>免疫缺陷30型</td><td>新生儿肝内胆汁淤积症</td></tr>
<tr><td>Oculomaxillofacial发育不全</td><td>骨肉瘤</td><td>免疫缺陷31A型</td><td>新生儿肾上腺白质营养不良</td></tr>
<tr><td>Oculomelic肌发育不全</td><td>骨软骨发育不良</td><td>免疫缺陷31C型</td><td>新生儿糖尿病(先天性甲状腺功能低下)</td></tr>
<tr><td>Odontoonychodermal发育不良</td><td>骨软骨发育不良（symoens-barnes-gistelinck型）</td><td>免疫缺陷36型</td><td>新生儿炎症性皮肤和肠道疾病1型</td></tr>
<tr><td>Odontotrichomelic综合征</td><td>骨髓衰竭综合征2型</td><td>免疫缺陷37型</td><td>新生儿炎症性皮肤和肠道疾病2型</td></tr>
<tr><td>Ohdo综合征（X连锁）</td><td>骨髓衰竭综合征3型</td><td>免疫缺陷38型</td><td>新生儿永久糖尿病</td></tr>
<tr><td>OKT4抗原表位不足</td><td>骨髓纤维化</td><td>免疫缺陷39型</td><td>新生儿永久性糖尿病伴小脑发育不全</td></tr>
<tr><td>OKUR-CHUNG神经综合征</td><td>骨髓炎，无菌多灶性伴骨膜炎和脓疱</td><td>免疫缺陷40型</td><td>新生儿暂时性糖尿病1型</td></tr>
<tr><td>Omodysplasia 1型</td><td>骨髓增生异常综合征</td><td>免疫缺陷42型</td><td>新生儿暂时性糖尿病2型</td></tr>
<tr><td>Opitz G/BBB综合征</td><td>骨纤维发育不良</td><td>免疫缺陷44型</td><td>新生儿暂时性糖尿病3型</td></tr>
<tr><td>Opitz-Frias综合征</td><td>骨质疏松</td><td>免疫缺陷45型</td><td>新生儿暂时性紫绀</td></tr>
<tr><td>Opsismodysplasia</td><td>钴胺传递蛋白II缺乏症</td><td>免疫缺陷46型</td><td>新生儿致死性刚性和多灶性癫痫综合征</td></tr>
<tr><td>Orstavik Lindemann Solberg综合征</td><td>瓜氨酸血症II型</td><td>免疫缺陷47型</td><td>新生儿致死性肉碱棕榈酰转移酶II缺乏症</td></tr>
<tr><td>Osler出血性毛细血管扩张症</td><td>瓜氨酸血症I型</td><td>免疫缺陷8型</td><td>新生儿重症发病脑病畸形</td></tr>
<tr><td>Osteodysplastic原发性侏儒症1型</td><td>胍基乙酸甲基转移酶缺乏症</td><td>免疫缺陷X连锁（硫酸镁缺陷，EB病毒感染，以及肿瘤形成）</td><td>新生儿重症甲状旁腺功能亢进症</td></tr>
<tr><td>Osteoglophonic发育不良</td><td>关节和血管钙化</td><td>面部畸形，免疫缺陷，青斑和身材矮小</td><td>性腺发育不全与听觉功能障碍，常染色体隐性遗传</td></tr>
<tr><td>Otofaciocervical综合征</td><td>关节挛缩（Perthes病）</td><td>面肩肱型肌营养不良症</td><td>性腺功能减退，糖尿病，脱发，精神发育迟缓和心电图异常</td></tr>
<tr><td>Otofaciocervical综合征2型</td><td>关节挛缩（肾功能不全和胆汁淤积）</td><td>面肩肱型肌营养不良症2型</td><td>性腺机能减退伴有或无嗅觉丧失症10型</td></tr>
<tr><td>Otospondylomegaepiphyseal发育不良</td><td>关节挛缩（智力低下和癫痫发作）</td><td>苗勒管发育不良伴高雄</td><td>性腺机能减退伴有或无嗅觉丧失症11型</td></tr>
<tr><td>Pallister-Hall综合征</td><td>关节挛缩肾功能不全胆汁淤积综合征</td><td>膜性肾病</td><td>性腺机能减退伴有或无嗅觉丧失症13型</td></tr>
<tr><td>Pallister-Hall综合征2型</td><td>冠状动脉疾病（AD 1型）</td><td>末端关节弯曲5D型</td><td>性腺机能减退伴有或无嗅觉丧失症14型</td></tr>
<tr><td>Papillon–Lefèvre综合征</td><td>冠状动脉疾病（AD 2型）</td><td>末节关节挛缩1B型</td><td>性腺机能减退伴有或无嗅觉丧失症15型</td></tr>
<tr><td>Parkes Weber综合征</td><td>冠状动脉心脏疾病1型</td><td>末节关节挛缩2B型</td><td>性腺机能减退伴有或无嗅觉丧失症16型</td></tr>
<tr><td>PartingtonX-连锁智力障碍综合征</td><td>冠状动脉心脏疾病5型</td><td>末节关节弯曲型8型</td><td>性腺机能减退伴有或无嗅觉丧失症17型</td></tr>
<tr><td>PC-K6a</td><td>冠状动脉心脏疾病6型</td><td>末节肌病Markesbery-Griggs型</td><td>性腺机能减退伴有或无嗅觉丧失症18型</td></tr>
<tr><td>PEHO综合征</td><td>冠状动脉心脏疾病7型</td><td>末节肌病Tateyama型</td><td>性腺机能减退伴有或无嗅觉丧失症19型</td></tr>
<tr><td>Pelizaeus-Merzbacher病</td><td>冠状骨性愈合</td><td>墨蝶呤还原酶缺乏症</td><td>性腺机能减退伴有或无嗅觉丧失症20型</td></tr>
<tr><td>Pena-Shokeir综合征I型</td><td>胱氨酸病(非肾病型)</td><td>母乳中锌减少</td><td>性腺机能减退伴有或无嗅觉丧失症21型</td></tr>
<tr><td>Pendred综合征</td><td>胱氨酸尿症</td><td>钼辅不足（互补A组）</td><td>性腺机能减退伴有或无嗅觉丧失症22型</td></tr>
<tr><td>Penttinen-Aula综合征</td><td>胱氨酸尿症</td><td>钼辅不足（互补B组）</td><td>性腺机能减退伴有或无嗅觉丧失症7型</td></tr>
<tr><td>Perrault综合征2型</td><td>胱氨酸尿症（CBS缺乏）</td><td>钼辅不足（互补C组）</td><td>性腺机能减退伴有或无嗅觉丧失症8型</td></tr>
<tr><td>Perrault综合征4型</td><td>胱氨酸尿症（钴胺素代谢缺陷，CBLE互补型）</td><td>囊性脑白质病，无巨脑</td><td>性腺机能减退伴有或无嗅觉丧失症9型</td></tr>
<tr><td>Perrault综合征5型</td><td>胱硫醚尿症</td><td>囊性纤维化</td><td>性早熟2型</td></tr>
<tr><td>Perry综合征</td><td>腘翼状胬肉综合征</td><td>脑，室管膜下钙化和白内障的出血破坏</td><td>胸主动脉瘤和主动脉夹层</td></tr>
<tr><td>Peters叠加综合征</td><td>果糖二磷酸酶缺乏症</td><td>脑白质病伴白质消失</td><td>雄激素抵抗综合征</td></tr>
<tr><td>Pfeiffer综合征</td><td>果糖尿症</td><td>脑白质病伴肌张力障碍和运动神经病</td><td>须部假性毛囊炎</td></tr>
<tr><td>Phosphohydroxylysinuria</td><td>过敏毒素灭活因子缺乏症</td><td>脑白质病变​​伴共济失调</td><td>悬韧带粉状白内障3型</td></tr>
<tr><td>PI3K-δ活化综合征</td><td>过敏性鼻炎</td><td>脑白质营养不良，髓鞘形成不足10型</td><td>选择性齿发育不全，X连锁1型</td></tr>
<tr><td>Pick病</td><td>过氧化物酶体生物合成障​​碍（Zellweger综合征谱）</td><td>脑白质营养不良，髓鞘形成不足11型</td><td>选择性垂体对甲状腺激素不应症</td></tr>
<tr><td>Pierson综合征</td><td>过氧化物酶体生物合成障​​碍10A型</td><td>脑白质营养不良，髓鞘形成不足12型</td><td>选择性牙齿发育不全1X2</td></tr>
<tr><td>Pitt-Hopkins综合征</td><td>过氧化物酶体生物合成障​​碍11A型</td><td>脑白质营养不良，髓鞘形成不足13型</td><td>雪花玻璃体视网膜变性</td></tr>
<tr><td>Pitt-Hopkins综合征2型</td><td>过氧化物酶体生物合成障​​碍11B型</td><td>脑白质营养不良，髓鞘形成不足2型</td><td>血管病变，视网膜，脑脑白质营养不良</td></tr>
<tr><td>Pore​​tti-boltshauser综合征</td><td>过氧化物酶体生物合成障​​碍12A型</td><td>脑白质营养不良，髓鞘形成不足3型</td><td>血管瘤样纤维组织细胞瘤</td></tr>
<tr><td>Prader-Willi样综合征</td><td>过氧化物酶体生物合成障​​碍13A型</td><td>脑白质营养不良，髓鞘形成不足4型</td><td>血管性水肿(ACE抑制剂介导）</td></tr>
<tr><td>Prader-Willi综合征</td><td>过氧化物酶体生物合成障​​碍14B型</td><td>脑白质营养不良，髓鞘形成不足9型</td><td>血管性血友病，隐性遗传</td></tr>
<tr><td>Primrose综合征</td><td>过氧化物酶体生物合成障​​碍1B型</td><td>脑白质营养不良和获得性畸形伴有或无张力障碍</td><td>血管性血友病1型</td></tr>
<tr><td>Protan缺陷</td><td>过氧化物酶体生物合成障​​碍2A型</td><td>脑穿通畸形1型</td><td>血管性血友病2型</td></tr>
<tr><td>Proteus综合征</td><td>过氧化物酶体生物合成障​​碍3A型</td><td>脑穿通畸形2型</td><td>血红蛋白（高氧饱和度）</td></tr>
<tr><td>Proud Levine Carpenter综合征</td><td>过氧化物酶体生物合成障​​碍4A型</td><td>脑淀粉样血管病</td><td>血红蛋白H病</td></tr>
<tr><td>Pseudo-Hurler polydystrophy</td><td>过氧化物酶体生物合成障​​碍4B型</td><td>脑动静脉畸形</td><td>血红蛋白SS病</td></tr>
<tr><td>Pseudo-Pelger-Huët异常</td><td>过氧化物酶体生物合成障​​碍5A型</td><td>脑动脉病</td><td>血红素加氧酶1缺乏症</td></tr>
<tr><td>PTEN错构瘤综合征</td><td>过氧化物酶体生物合成障​​碍5B型</td><td>脑动脉病（AD)</td><td>血胡萝卜素过多和维生素A缺乏症</td></tr>
<tr><td>Pyle干骺端发育不良</td><td>过氧化物酶体生物合成障​​碍6A型</td><td>脑动脉病（AR)</td><td>血浆纤维不足</td></tr>
<tr><td>Quebec血小板异常</td><td>过氧化物酶体生物合成障​​碍6B型</td><td>脑发育不全（神经病变，鱼鳞病，和掌跖角化症）</td><td>血清白细胞介素6可溶性受体水平</td></tr>
<tr><td>Rapadilino综合征</td><td>过氧化物酶体生物合成障​​碍7A型</td><td>脑海绵状血管畸形</td><td>血清白细胞介素6水平</td></tr>
<tr><td>Rapp-Hodgkin外胚层发育不良综合症</td><td>过氧化物酶体生物合成障​​碍7B型</td><td>脑海绵状血管瘤1型</td><td>血清脂联素1水平</td></tr>
<tr><td>RAS相关的自身免疫性疾病</td><td>过氧化物酶体生物合成障​​碍8A型</td><td>脑海绵状血管瘤2型</td><td>血色病1型</td></tr>
<tr><td>Reifenstein综合征</td><td>过氧化物酶体生物合成障​​碍8B型</td><td>脑海绵状血管瘤3型</td><td>血色病2A型</td></tr>
<tr><td>Reis-Bucklers角膜营养不良</td><td>过氧化物酶体生物合成障​​碍9B型</td><td>脑积水</td><td>血色病2B型</td></tr>
<tr><td>Renal adysplasia</td><td>过氧化物酶体脂酰辅酶A还原酶1紊乱</td><td>脑积水非综合征2型，常染色体隐性遗传</td><td>血色病3型</td></tr>
<tr><td>Renpenning综合征1型</td><td>海蓝色组织细胞综合征</td><td>脑胶质瘤易感性1型</td><td>血色病型4型</td></tr>
<tr><td>Rett综合征</td><td>海绵状脑病</td><td>脑胶质瘤易感性2型</td><td>血色病型5型</td></tr>
<tr><td>Rett综合征（先天性变异）</td><td>汗孔角化病1型</td><td>脑胶质瘤易感性3型</td><td>血栓素合成不足</td></tr>
<tr><td>Revesz综合征</td><td>汗孔角化病7型</td><td>脑胶质瘤易感性9型</td><td>血栓形成倾向</td></tr>
<tr><td>Richieri Costa Pereira 综合征</td><td>汗孔角化病8型</td><td>脑裂畸形</td><td>血栓形成倾向，X连锁，凝血因子IX缺陷</td></tr>
<tr><td>Rienhoff综合征</td><td>汗孔角化病9型</td><td>脑颅皮肤脂肪过多症</td><td>血栓形成倾向，蛋白S缺乏</td></tr>
<tr><td>Ritscher-schinzel综合征2型</td><td>汗孔角化病Mibelli型</td><td>脑桥小脑发育不全10型</td><td>血栓形成倾向，活化蛋白C抗性</td></tr>
<tr><td>Roberts-SC短肢畸形综合征</td><td>核黄素缺乏症</td><td>脑桥小脑发育不全1b型</td><td>血栓形成倾向，血栓调节蛋白缺陷</td></tr>
<tr><td>Robinow Sorauf综合征</td><td>核糖-5-磷酸异构酶缺乏症</td><td>脑桥小脑发育不全1C型</td><td>血栓形成倾向，组氨酸糖蛋白增多</td></tr>
<tr><td>Robinow综合征</td><td>颌骨纤维异常增殖症</td><td>脑桥小脑发育不全1型</td><td>血小板活化因子乙酰缺乏症</td></tr>
<tr><td>Robinow综合征（AD 2型）</td><td>赫尔利综合征</td><td>脑桥小脑发育不全2A型</td><td>血小板减少症，X连锁</td></tr>
<tr><td>Robinow综合征（AD 3型）</td><td>黑斑息肉综合征</td><td>脑桥小脑发育不全2B型</td><td>血小板减少症，血小板功能异常，溶血和不平衡珠蛋白合成</td></tr>
<tr><td>Robinow综合征（AR）</td><td>黑色素瘤，恶性皮肤10型</td><td>脑桥小脑发育不全2C型</td><td>血小板减少症2型</td></tr>
<tr><td>Roifman综合征</td><td>黑色素瘤，胰腺癌综合征</td><td>脑桥小脑发育不全2D型</td><td>血小板减少症4型</td></tr>
<tr><td>Rothmund-Thomson逊综合症</td><td>黑色素瘤星形细胞瘤综合征</td><td>脑桥小脑发育不全2E型</td><td>血小板减少症5型</td></tr>
<tr><td>Rotor综合征</td><td>黑酸尿症</td><td>脑桥小脑发育不全2F型</td><td>血小板减少症6型</td></tr>
<tr><td>Roussy-Levy 综合征</td><td>黑头粉刺痣</td><td>脑桥小脑发育不全3型</td><td>血小板膜糖蛋白IV不足</td></tr>
<tr><td>Rubinstein-Taybi综合症</td><td>亨氏体贫血</td><td>脑桥小脑发育不全4型</td><td>血小板无力症</td></tr>
<tr><td>Rubinstein-Taybi综合症2型</td><td>亨廷顿病样1型</td><td>脑桥小脑发育不全6型</td><td>血小板型出血性疾病11型</td></tr>
<tr><td>Ruijs-aalfs综合征</td><td>亨廷顿病样2型</td><td>脑桥小脑发育不全8型</td><td>血小板型出血性疾病13型</td></tr>
<tr><td>Russell-Silver综合症</td><td>亨廷顿舞蹈病</td><td>脑视网膜微血管病</td><td>血小板型出血性疾病15型</td></tr>
<tr><td>Saethre-Chotzen综合征</td><td>横纹肌肉瘤1型</td><td>脑室囊肿性肾病</td><td>血小板型出血性疾病16型</td></tr>
<tr><td>Schimke immunoosseous发育不良</td><td>横纹肌样瘤倾向综合征1型</td><td>脑室周围结节性异位6型</td><td>血小板型出血性疾病17型</td></tr>
<tr><td>Schindler疾病1型</td><td>横纹肌样瘤倾向综合征2型</td><td>脑室周围异位（AR）</td><td>血小板型出血性疾病18型</td></tr>
<tr><td>Schinzel-Giedion综合征</td><td>红细胞AMP脱氨酶缺乏</td><td>脑室周围异位（Ehlers-Danlos变异）</td><td>血小板型出血性疾病19型</td></tr>
<tr><td>Schneckenbecken发育不良</td><td>红细胞的丙酮酸激酶缺乏症</td><td>脑小血管病伴出血</td><td>血小板型出血性疾病20型</td></tr>
<tr><td>Schnyder结晶角膜营养不良</td><td>红细胞谷胱甘肽合成酶缺乏症</td><td>脑眼面骨骼综合征</td><td>血小板型出血性疾病8型</td></tr>
<tr><td>Schopf-Schulz-Passarge综合征</td><td>红细胞乳酸转运缺陷</td><td>脑眼面骨骼综合征2型</td><td>血小板型出血性疾病9型</td></tr>
<tr><td>Schwartz Jampel综合征1型</td><td>红细胞三磷酸腺苷升高</td><td>脑眼面骨骼综合征4型</td><td>血小板增多症</td></tr>
<tr><td>SCID，II类HLA抗原缺乏</td><td>红细胞生成性原卟啉症</td><td>脑叶酸缺乏</td><td>血小板增多症3型</td></tr>
<tr><td>SCN2A相关全身性癫痫伴高热惊厥</td><td>红细胞生成原卟啉，X连锁</td><td>内分泌病综合征（脱发和神经缺陷）</td><td>寻常型鱼鳞病</td></tr>
<tr><td>SCOTT综合征</td><td>红椎鱼鳞病（Curth Macklin型）</td><td>内因子缺乏症</td><td>荨麻疹</td></tr>
<tr><td>Sebastian综合症</td><td>虹膜角膜小梁发育不全</td><td>内脏异位2型</td><td>牙本质发育不良I型</td></tr>
<tr><td>Senior-Loken综合征1型</td><td>后鼻孔闭锁及淋巴水肿</td><td>内脏异位4型</td><td>牙本质发育不全III型</td></tr>
<tr><td>Senior-Loken综合征4型</td><td>后极性白内障2型</td><td>内脏异位5型</td><td>牙本质发育不全II型</td></tr>
<tr><td>Senior-Loken综合征5型</td><td>后极性白内障3型</td><td>内脏异位6型</td><td>牙齿萌出失败</td></tr>
<tr><td>Senior-Loken综合征6型</td><td>后极性白内障4型</td><td>内脏异位7型</td><td>牙先天缺失，结直肠癌综合征</td></tr>
<tr><td>Senior-Loken综合征7型</td><td>后柱共济失调与视网膜色素变性</td><td>内脏异位X连锁型</td><td>牙龈纤维瘤病1型</td></tr>
<tr><td>Senior-Loken综合征8型</td><td>琥珀酸半醛脱氢酶缺乏症</td><td>尼曼-皮克病A型</td><td>牙釉质发育不全，甲床剥离，少汗症</td></tr>
<tr><td>Senior-Loken综合征9型</td><td>琥珀酰辅酶A乙酰转移酶缺乏症</td><td>尼曼-匹克病B型</td><td>亚氨基甘氨酸尿症</td></tr>
<tr><td>Serkal综合征</td><td>滑膜肉瘤</td><td>尼曼-匹克病C1型</td><td>亚急性neuronopathic Gaucher病</td></tr>
<tr><td>SeSAME综合征</td><td>化脓性关节炎，坏疽性脓皮病和痤疮</td><td>尼曼-匹克病C2型</td><td>亚硫酸盐氧化酶缺乏症</td></tr>
<tr><td>Shaheen 综合征</td><td>环状鱼鳞病伴表皮角化</td><td>年龄相关黄斑变性15型</td><td>烟雾病2型</td></tr>
<tr><td>SHORT综合征</td><td>黄斑变性，X连锁</td><td>年龄相关性黄斑变性10型</td><td>烟雾病5型</td></tr>
<tr><td>Shprintzen-Goldberg综合征</td><td>黄斑变性，早发</td><td>年龄相关性黄斑变性11型</td><td>烟雾病6型伴贲门失弛缓症</td></tr>
<tr><td>Shprintzen综合征</td><td>黄斑角膜营养不良I型</td><td>年龄相关性黄斑变性12型</td><td>烟瘾</td></tr>
<tr><td>Shwachman综合征</td><td>黄斑营养不良2型</td><td>年龄相关性黄斑变性13型</td><td>延胡索酸酶缺乏症</td></tr>
<tr><td>Shy-Drager综合征</td><td>黄斑营养不良4型</td><td>年龄相关性黄斑变性14型</td><td>严重的生长受限伴鲜明的沉积相</td></tr>
<tr><td>Sialuria</td><td>黄斑营养不良5型</td><td>年龄相关性黄斑变性1型</td><td>严重肥胖症，瘦蛋白缺乏</td></tr>
<tr><td>Siderius X-连锁智力障碍综合征</td><td>黄斑营养不良伴中央锥混乱</td><td>年龄相关性黄斑变性2型</td><td>严重软骨发育不全与发育迟缓和黑棘皮病</td></tr>
<tr><td>Siemens大疱性鱼鳞病</td><td>黄斑中心凹发育不全和眼前段发育不全</td><td>年龄相关性黄斑变性3型</td><td>严重先天性白细胞减少7型</td></tr>
<tr><td>Simpson-Golabi-Behmel综合征</td><td>黄斑中心凹发育不全和早老性白内障综合征</td><td>年龄相关性黄斑变性4型</td><td>岩藻糖苷贮积症</td></tr>
<tr><td>Simpson-Golabi-Behmel综合征2型</td><td>黄嘌呤尿2型</td><td>年龄相关性黄斑变性5型</td><td>岩藻糖转移酶6缺乏症</td></tr>
<tr><td>Singleton-Merten综合征1型</td><td>黄嘌呤氧化酶缺乏症</td><td>年龄相关性黄斑变性6型</td><td>炎症性肠病10型</td></tr>
<tr><td>Singleton-Merten综合征2型</td><td>灰色血小板综合征</td><td>年龄相关性黄斑变性7型</td><td>炎症性肠病13型</td></tr>
<tr><td>Sjögren-Larsson综合征</td><td>混合性软骨瘤病</td><td>年龄相关性黄斑变性8型</td><td>炎症性肠病14型</td></tr>
<tr><td>Smith McCort发育不良</td><td>获得性局部脂肪代谢障碍</td><td>年龄相关性黄斑变性9型</td><td>炎症性肠病17型</td></tr>
<tr><td>Smith McCort发育不良2型</td><td>获得性血红蛋白H病</td><td>黏多糖贮积症VI型</td><td>炎症性肠病19型</td></tr>
<tr><td>Smith-Kingsmore综合征</td><td>肌氨酸脱氢酶缺乏症</td><td>黏液性脂肪肉瘤</td><td>炎症性肠病1型</td></tr>
<tr><td>Smith-Lemli-Opitz综合征</td><td>肌病（X连锁伴过度自噬）</td><td>鸟氨酸氨基转移酶缺乏症</td><td>炎症性肠病25型</td></tr>
<tr><td>Smith-Magenis综合征</td><td>肌病（空泡伴casq1聚集）</td><td>鸟氨酸氨甲酰不足</td><td>炎症性肠病28型</td></tr>
<tr><td>Snyder Robinson综合征</td><td>肌病，scapulohumeroperoneal型</td><td>尿道下裂1型X连锁</td><td>眼白化病（感音神经性耳聋）</td></tr>
<tr><td>Sorsby基底营养不良</td><td>肌病，管状骨料2型</td><td>尿道下裂2型X连锁</td><td>眼白化病1B型</td></tr>
<tr><td>Sotos综合征1型</td><td>肌病，乳酸性酸中毒，铁粒幼细胞贫血1型</td><td>尿苷5-单磷酸水解酶缺乏症</td><td>眼白化病3型</td></tr>
<tr><td>Sotos综合征2型</td><td>肌病，乳酸性酸中毒，铁粒幼细胞贫血2型</td><td>尿苷水合酶缺乏症</td><td>眼白化病4型</td></tr>
<tr><td>Spiegler-Brooke综合征</td><td>肌病，体重减轻（X连锁）</td><td>尿酸肾结石</td><td>眼白化病7型</td></tr>
<tr><td>Spondyloocular综合征</td><td>肌病，透明小体，AR</td><td>凝血因子V缺乏症</td><td>眼白化病II型</td></tr>
<tr><td>Stargardt病1型</td><td>肌病伴管状聚集</td><td>脓疱型牛皮癣15型</td><td>眼白化病I型</td></tr>
<tr><td>Stargardt病4型</td><td>肌病伴体位肌肉萎缩，X连锁</td><td>努南样综合征伴毛发兴盛</td><td>眼部缺损</td></tr>
<tr><td>STAR综合征</td><td>肌病伴锥体外系体征</td><td>努南综合征样疾病</td><td>眼睑痉挛</td></tr>
<tr><td>Steel综合征</td><td>肌病中性脂质贮积症</td><td>疟疾</td><td>眼前段间充质组织发育不全</td></tr>
<tr><td>Steinert强直性肌营养不良症</td><td>肌球蛋白性肌病</td><td>女性特有κ阿片受体激动剂型镇痛增加</td><td>眼缺损（葡萄膜，与唇腭裂和智力迟钝）</td></tr>
<tr><td>Stickler综合征1型</td><td>肌肉AMP脱氨酶缺乏症</td><td>帕金森病11型</td><td>眼牙指发育不良</td></tr>
<tr><td>Stickler综合征2型</td><td>肌肉肥大</td><td>帕金森病13型</td><td>眼牙指发育不良（AR）</td></tr>
<tr><td>Stickler综合征3型</td><td>肌肉生长抑制素相关肌肉肥厚</td><td>帕金森病14型</td><td>眼牙指综合征</td></tr>
<tr><td>Stickler综合征4型</td><td>肌肉松弛疾病</td><td>帕金森病15型</td><td>眼咽型肌营养不良症</td></tr>
<tr><td>Stickler综合征5型</td><td>肌肉糖原贮积病O型</td><td>帕金森病17型</td><td>羊水过多，巨脑和症状性癫痫</td></tr>
<tr><td>Stickler综合征I型，非综合征性眼病</td><td>肌酸磷酸激酶</td><td>帕金森病18型</td><td>胰蛋白酶缺乏症</td></tr>
<tr><td>Stiff皮肤综合征</td><td>肌萎缩性脊髓侧索硬化联合帕金森症1型</td><td>帕金森病19型</td><td>胰岛素抵抗糖尿病和黑棘皮病</td></tr>
<tr><td>Sting相关血管病变</td><td>肌萎缩性脊髓侧索硬化症</td><td>帕金森病1型</td><td>胰岛素样生长因子I缺乏症</td></tr>
<tr><td>Stocco dos Santos综合征</td><td>肌萎缩性脊髓侧索硬化症10型</td><td>帕金森病20型</td><td>胰岛素样生长因子抗性1型</td></tr>
<tr><td>stomatin缺陷</td><td>肌萎缩性脊髓侧索硬化症11型</td><td>帕金森病21型</td><td>胰岛素依赖型糖尿病分泌性腹泻综合症</td></tr>
<tr><td>Sturge-Weber综合征</td><td>肌萎缩性脊髓侧索硬化症12型</td><td>帕金森病22型</td><td>胰岛细胞增生症</td></tr>
<tr><td>Stuve-Wiedemann综合征</td><td>肌萎缩性脊髓侧索硬化症14型</td><td>帕金森病23型</td><td>胰腺癌1型</td></tr>
<tr><td>Sveinsson脉络膜视网膜萎缩</td><td>肌萎缩性脊髓侧索硬化症15型</td><td>帕金森病2型</td><td>胰腺癌2型</td></tr>
<tr><td>Takenouchi-Kosaki综合征</td><td>肌萎缩性脊髓侧索硬化症16型</td><td>帕金森病4型</td><td>胰腺癌3型</td></tr>
<tr><td>Tangier病</td><td>肌萎缩性脊髓侧索硬化症17型</td><td>帕金森病5型</td><td>胰腺癌4型</td></tr>
<tr><td>TARDBP相关额颞叶痴呆</td><td>肌萎缩性脊髓侧索硬化症18型</td><td>帕金森病6型</td><td>胰腺发育不全2型</td></tr>
<tr><td>TARP综合征</td><td>肌萎缩性脊髓侧索硬化症19型</td><td>帕金森病7型</td><td>胰腺发育不全和先天性心脏疾病</td></tr>
<tr><td>Tatton-Brown-rahman综合征</td><td>肌萎缩性脊髓侧索硬化症1型</td><td>帕金森病8型</td><td>胰腺外分泌功能不全，红细胞生成异常性贫血和骨质增生颅骨</td></tr>
<tr><td>Tay-Sachs，变种AB</td><td>肌萎缩性脊髓侧索硬化症20型</td><td>帕金森病9型</td><td>胰脏癌</td></tr>
<tr><td>Tay-Sachs病</td><td>肌萎缩性脊髓侧索硬化症22型</td><td>帕金森痴呆综合征</td><td>胰脂肪酶缺乏症</td></tr>
<tr><td>Temple-Baraitser综合征</td><td>肌萎缩性脊髓侧索硬化症2型</td><td>帕金森痉挛（X连锁）</td><td>移植物抗宿主病</td></tr>
<tr><td>Temtamy 上肢内侧短指综合征</td><td>肌萎缩性脊髓侧索硬化症4型</td><td>膀胱恶性肿瘤</td><td>遗传性卟啉症</td></tr>
<tr><td>Temtamy综合征</td><td>肌萎缩性脊髓侧索硬化症6型</td><td>膀胱输尿管返流2</td><td>遗传性肠病性肢端皮炎</td></tr>
<tr><td>Tenorio综合征</td><td>肌萎缩性脊髓侧索硬化症8型</td><td>膀胱输尿管返流3</td><td>遗传性持续性甲胎蛋白缺乏症</td></tr>
<tr><td>THIAMINE代谢功能障碍综合征5型</td><td>肌萎缩性脊髓侧索硬化症9型</td><td>膀胱输尿管返流8</td><td>遗传性出血性毛细血管扩张2型</td></tr>
<tr><td>Thiel-Behnke角膜营养不良</td><td>肌纤维肌病（BAG3相关）</td><td>胚胎横纹肌肉瘤2型</td><td>遗传性泛发性色素异常症3型</td></tr>
<tr><td>Tietze症候群</td><td>肌纤维肌病（ZASP相关）</td><td>皮肤/毛发/眼色素沉着10型</td><td>遗传性非息肉病性结直肠癌7型</td></tr>
<tr><td>Timothy综合征</td><td>肌纤维肌病（细丝蛋白C-相关）</td><td>皮肤/毛发/眼色素沉着11型</td><td>遗传性非息肉病性结直肠癌型6型</td></tr>
<tr><td>TNF受体相关周期性发热综合征</td><td>肌纤维肌病1型</td><td>皮肤/毛发/眼色素沉着1型</td><td>遗传性非息肉病性结直肠癌型8型</td></tr>
<tr><td>Townes综合征</td><td>肌眼脑病</td><td>皮肤/毛发/眼色素沉着2型</td><td>遗传性非息肉性大肠癌4型</td></tr>
<tr><td>Troyer综合征</td><td>肌硬化症</td><td>皮肤/毛发/眼色素沉着3型</td><td>遗传性非息肉性大肠癌5型</td></tr>
<tr><td>Turcot综合征</td><td>肌张力障碍10型</td><td>皮肤/毛发/眼色素沉着4型</td><td>遗传性感觉迟钝与无汗痛</td></tr>
<tr><td>T细胞免疫缺陷，反复感染，和自身免疫有或无心脏畸形</td><td>肌张力障碍12型</td><td>皮肤/毛发/眼色素沉着5型</td><td>遗传性感觉和自主神经病Ⅶ型</td></tr>
<tr><td>T细胞免疫缺陷，先天性脱发及指甲营养不良</td><td>肌张力障碍16型</td><td>皮肤/毛发/眼色素沉着6型</td><td>遗传性感觉和自主神经病VI型</td></tr>
<tr><td>T细胞失活型免疫功能不全1型</td><td>肌张力障碍1型</td><td>皮肤/毛发/眼色素沉着7型</td><td>遗传性感觉和自主神经病变IC型</td></tr>
<tr><td>T细胞失活型免疫功能不全2型</td><td>肌张力障碍23型</td><td>皮肤/毛发/眼色素沉着8型</td><td>遗传性感觉和自主神经病变IIA型</td></tr>
<tr><td>T细胞受体α/β不足</td><td>肌张力障碍24型</td><td>皮肤/毛发/眼色素沉着9型</td><td>遗传性感觉和自主神经病变IIB型</td></tr>
<tr><td>UDP葡萄糖-4-差向异构酶不足</td><td>肌张力障碍25型</td><td>皮肤脆弱羊毛毛症</td><td>遗传性感觉和自主神经病变IIC型</td></tr>
<tr><td>UD葡萄糖-己糖-1-磷酸-尿甙基转化酶尿甙基转化酶</td><td>肌张力障碍26型</td><td>皮肤恶性黑色素瘤1型</td><td>遗传性感觉和自主型神经病</td></tr>
<tr><td>Ullrich先天性肌营养不良</td><td>肌张力障碍27型</td><td>皮肤恶性黑色素瘤2型</td><td>遗传性感觉神经病伴痉挛性截瘫</td></tr>
<tr><td>Ullrich先天性肌营养不良2</td><td>肌张力障碍2型</td><td>皮肤恶性黑色素瘤3型</td><td>遗传性感觉神经病变1D型</td></tr>
<tr><td>Unverricht-LUNDBORG综合征</td><td>肌张力障碍3型</td><td>皮肤恶性黑色素瘤5型</td><td>遗传性感觉神经病变IE型</td></tr>
<tr><td>Upshaw-Schulman综合征</td><td>肌张力障碍5型</td><td>皮肤恶性黑色素瘤6型</td><td>遗传性感觉神经病变IF型</td></tr>
<tr><td>Urofacial综合征2型</td><td>肌张力障碍6型</td><td>皮肤恶性黑色素瘤8型</td><td>遗传性果糖尿症</td></tr>
<tr><td>Usher综合征1C型</td><td>肌阵挛伴癫痫及无规则红纤维</td><td>皮肤恶性黑色素瘤9型</td><td>遗传性混合息肉综合征2型</td></tr>
<tr><td>Usher综合征1D型</td><td>肌阵挛失张力癫痫</td><td>皮肤毛细血管扩张和癌症综合征</td><td>遗传性肌病伴乳酸性酸中毒</td></tr>
<tr><td>Usher综合征1F型</td><td>肌阵挛性肌张力障碍</td><td>皮肤松弛(AD 1型)</td><td>遗传性肌病早期呼吸衰竭</td></tr>
<tr><td>Usher综合征1G型</td><td>肌质管肌病</td><td>皮肤松弛(AD 2型)</td><td>遗传性角膜炎</td></tr>
<tr><td>Usher综合征1J型</td><td>基底节疾病</td><td>皮肤松弛(AD 3型)</td><td>遗传性惊跳症</td></tr>
<tr><td>Usher综合征1型</td><td>基底细胞癌7型</td><td>皮肤松弛(X连锁型)</td><td>遗传性口形红细胞增多2型</td></tr>
<tr><td>Usher综合征2A型</td><td>畸形性发育不良</td><td>皮肤松弛1B型</td><td>遗传性淋巴水肿IC型</td></tr>
<tr><td>Usher综合征2C型</td><td>激肽释放酶（尿活性降低）</td><td>皮肤松弛2B型</td><td>遗传性淋巴水肿ID型</td></tr>
<tr><td>Usher综合征2D型</td><td>极长链酰基辅酶A脱氢酶缺乏症</td><td>皮肤松弛3B型</td><td>遗传性淋巴水肿III型</td></tr>
<tr><td>Usher综合征3A型</td><td>急性发热性皮肤粘膜淋巴结综合征</td><td>皮肤松弛IA型</td><td>遗传性淋巴水肿I型</td></tr>
<tr><td>Usher综合征3B型</td><td>急性反复性肌红蛋白尿</td><td>皮肤松弛伴严重的肺，胃肠道和泌尿系统异常</td><td>遗传性弥漫性白质脑病伴球状体</td></tr>
<tr><td>Vacterl相关脑积水</td><td>急性间歇性卟啉症</td><td>皮肤松弛-角膜混浊-发育不全综合征</td><td>遗传性弥漫性胃癌</td></tr>
<tr><td>Vacterl相关脑积水，X连锁</td><td>急性酒精过敏</td><td>皮肤松弛与骨营养不良</td><td>遗传性脑淀粉样血管病（Icelandic型）</td></tr>
<tr><td>Van Buchem病2型</td><td>急性淋巴细胞白血病</td><td>皮肤严重不​​良反应</td><td>遗传性凝血因子IX缺乏症</td></tr>
<tr><td>Van der Woude综合征</td><td>急性淋巴细胞白血病3型</td><td>皮肤异色，遗传性纤维化，肌腱挛缩，肌病，肺纤维化</td><td>遗传性凝血因子VIII缺乏症</td></tr>
<tr><td>Van der Woude综合征2型</td><td>急性噬神经细胞Gaucher病</td><td>皮肤异色症伴中性粒细胞减少</td><td>遗传性凝血因子XI缺乏症</td></tr>
<tr><td>Van Maldergem Wetzburger Verloes综合征</td><td>急性髓性白血病</td><td>皮肤皱折，先天性对称畸形2型</td><td>遗传性前列腺癌12型</td></tr>
<tr><td>Van Maldergem综合征2</td><td>急性早幼粒白血病</td><td>皮纹病</td><td>遗传性前列腺癌13型</td></tr>
<tr><td>VATER相关</td><td>脊髓小脑性共济失调，AR 10型</td><td>皮炎过敏性2型</td><td>遗传性前列腺癌1型</td></tr>
<tr><td>Verheij综合征</td><td>脊髓小脑性共济失调，AR 11型</td><td>皮质发育不良伴局灶性癫痫综合征</td><td>遗传性前列腺癌2型</td></tr>
<tr><td>Verloes Bourguignon综合征</td><td>脊髓小脑性共济失调，AR 12型</td><td>皮质发育不良伴其他脑畸形1型</td><td>遗传性乳腺癌和卵巢癌综合征</td></tr>
<tr><td>VII因子缺乏症</td><td>脊髓小脑性共济失调，AR 13型</td><td>皮质发育不良伴其他脑畸形2型</td><td>遗传性神经节细胞瘤和嗜铬细胞瘤综合征</td></tr>
<tr><td>Vohwinkel综合征</td><td>脊髓小脑性共济失调，AR 14型</td><td>皮质发育不良伴其他脑畸形3型</td><td>遗传性神经痛肌萎缩</td></tr>
<tr><td>von Eulenburg先天性肌强直</td><td>脊髓小脑性共济失调，AR 15型</td><td>皮质发育不良伴其他脑畸形4型</td><td>遗传性肾上腺皮质癌</td></tr>
<tr><td>Von Hippel-Lindau综合征</td><td>脊髓小脑性共济失调，AR 16型</td><td>皮质发育不良伴其他脑畸形5型</td><td>遗传性特发性震颤1型</td></tr>
<tr><td>V因子和VIII因子结合缺乏2型</td><td>脊髓小脑性共济失调，AR 17型</td><td>皮质发育不良伴其他脑畸形6型</td><td>遗传性铁粒幼细胞性贫血</td></tr>
<tr><td>Wagner综合征</td><td>脊髓小脑性共济失调，AR 18型</td><td>皮质畸形</td><td>遗传性听力损失和耳聋</td></tr>
<tr><td>Waldenstrom巨球蛋白血症</td><td>脊髓小脑性共济失调，AR 1型</td><td>皮质类固醇结合球蛋白缺乏症</td><td>遗传性舞蹈病</td></tr>
<tr><td>Warburg micro综合征1型</td><td>脊髓小脑性共济失调，AR 20型</td><td>皮质酮缺陷1型</td><td>遗传性细胞增多症</td></tr>
<tr><td>Warburg micro综合征2型</td><td>脊髓小脑性共济失调，AR 21型</td><td>皮质酮缺陷2型</td><td>遗传性先天性面瘫3型</td></tr>
<tr><td>Warburg micro综合征3型</td><td>脊髓小脑性共济失调，AR 22型</td><td>脾发育不全</td><td>遗传性血管病</td></tr>
<tr><td>Warburg micro综合征4型</td><td>脊髓小脑性共济失调，AR 23型</td><td>偏头痛</td><td>遗传性血管神经性水肿伴正常的C1酯酶抑制剂活性</td></tr>
<tr><td>Warsaw断裂综合征</td><td>脊髓小脑性共济失调，AR 2型</td><td>偏头痛伴有或无先兆13型</td><td>遗传性血管水肿1型</td></tr>
<tr><td>Weaver综合征</td><td>脊髓小脑性共济失调，AR 5型</td><td>胼胝体不全性白内障免疫缺陷</td><td>遗传性血栓形成倾向，蛋白质C缺乏症，AD</td></tr>
<tr><td>Webb-Dattani综合征</td><td>脊髓小脑性共济失调，AR 8型</td><td>胼胝体发育不良（智力低下，眼部缺损，以及小颌畸形）</td><td>遗传性血栓形成倾向，蛋白质C缺乏症，AR</td></tr>
<tr><td>Weill-Marchesani样综合征</td><td>脊髓小脑性共济失调10型</td><td>胼胝体发育不全（面部畸形和小脑性共济失调）</td><td>遗传性眼球萎缩</td></tr>
<tr><td>Weill-Marchesani综合征1型</td><td>脊髓小脑性共济失调11型</td><td>胼胝体局部发育不全（X连锁）</td><td>遗传性胰腺炎</td></tr>
<tr><td>Weill-Marchesani综合征2型</td><td>脊髓小脑性共济失调12型</td><td>嘌呤核苷磷酸化酶缺乏</td><td>遗传性硬纤维瘤疾病</td></tr>
<tr><td>Weill-Marchesani综合征3型</td><td>脊髓小脑性共济失调13型</td><td>贫血（AD）</td><td>遗传性运动和感觉神经病（Okinawa型）</td></tr>
<tr><td>Weissenbacher-Zweymuller综合征</td><td>脊髓小脑性共济失调14型</td><td>贫血（AR）</td><td>遗传性运动和感觉神经病VIB型</td></tr>
<tr><td>Werdnig-Hoffmann病</td><td>脊髓小脑性共济失调17型</td><td>贫血（G6PD缺乏）</td><td>遗传性运动和视神经萎缩感觉神经病变</td></tr>
<tr><td>Werner综合征</td><td>脊髓小脑性共济失调19型</td><td>贫血（Ib型）</td><td>遗传性震颤4型</td></tr>
<tr><td>WFS1相关疾病</td><td>脊髓小脑性共济失调1型</td><td>脯氨酸肽酶缺乏症</td><td>遗传性震颤5型</td></tr>
<tr><td>Wiedemann-Steiner综合征</td><td>脊髓小脑性共济失调21型</td><td>脯氨酸脱氢酶缺乏症</td><td>遗传性中性粒细胞增多</td></tr>
<tr><td>Williams综合征</td><td>脊髓小脑性共济失调23型</td><td>葡聚糖体肌病1型</td><td>乙基丙脑病</td></tr>
<tr><td>Wilson-TurnerX连锁智力障碍综合征</td><td>脊髓小脑性共济失调26型</td><td>葡聚糖体肌病2型</td><td>乙酰辅酶A羧化酶缺乏症</td></tr>
<tr><td>Wilson症</td><td>脊髓小脑性共济失调27型</td><td>葡萄胎</td><td>乙酰辅酶A乙酰基转移酶-2缺乏症</td></tr>
<tr><td>Winchester综合症</td><td>脊髓小脑性共济失调28型</td><td>葡萄糖-6-磷酸运输缺陷症</td><td>乙酰辅酶A乙酰转移酶缺乏症</td></tr>
<tr><td>Wiskott-Aldrich综合征2型</td><td>脊髓小脑性共济失调2型</td><td>普遍的糖皮质激素抵抗性</td><td>异丁酰辅酶A脱氢酶缺乏症</td></tr>
<tr><td>Wolcott-Rallison发育不良</td><td>脊髓小脑性共济失调31型</td><td>普遍显性营养不良大疱性表皮松解</td><td>异染性脑白质退化症</td></tr>
<tr><td>Wolff-Parkinson-White综合征</td><td>脊髓小脑性共济失调35型</td><td>气管食管瘘</td><td>异戊酰辅酶A脱氢酶缺乏症</td></tr>
<tr><td>Wolfram样综合征，AD</td><td>脊髓小脑性共济失调36型</td><td>前β-脂蛋白血症，棘红细胞增多症，色素性视网膜炎，和苍白球变性</td><td>易患丙型肝炎病毒</td></tr>
<tr><td>Wolfram综合征2型</td><td>脊髓小脑性共济失调38型</td><td>前列腺癌/脑肿瘤易感性</td><td>易患脑内出血，</td></tr>
<tr><td>Woolly毛发，常染色体显性遗传</td><td>脊髓小脑性共济失调40型</td><td>前列腺恶性肿瘤</td><td>易患人类免疫缺陷病毒1型</td></tr>
<tr><td>woolly毛发3型</td><td>脊髓小脑性共济失调41型</td><td>前脑无裂畸形11型</td><td>易患遗传性压迫</td></tr>
<tr><td>Worth病</td><td>脊髓小脑性共济失调42型</td><td>前脑无裂畸形2型</td><td>易患乙肝病毒</td></tr>
<tr><td>XFE progeroid综合征</td><td>脊髓小脑性共济失调5型</td><td>前脑无裂畸形3型</td><td>易患幽门螺杆菌感染</td></tr>
<tr><td>Xia-Gibbs综合征</td><td>脊髓小脑性共济失调6型</td><td>前脑无裂畸形4型</td><td>因子V和因子VIII联合缺乏症1型</td></tr>
<tr><td>XII因子缺乏症</td><td>脊髓小脑性共济失调7型</td><td>前脑无裂畸形5型</td><td>银屑病13型</td></tr>
<tr><td>XX性反转1型</td><td>脊髓小脑性共济失调8型</td><td>前脑无裂畸形7型</td><td>银屑病1型</td></tr>
<tr><td>XY性反转10型</td><td>脊髓小脑性共济失调伴轴索神经病</td><td>前脑无裂畸形9型</td><td>银屑病2型</td></tr>
<tr><td>XY性反转1型</td><td>脊髓性肌萎缩</td><td>前脑无裂畸形续发</td><td>银屑病7型</td></tr>
<tr><td>XY性反转2型</td><td>脊髓性肌萎缩，II型</td><td>前血管舒缓素缺乏症</td><td>银屑病关节炎</td></tr>
<tr><td>XY性反转5型</td><td>脊髓性肌萎缩，jokela型</td><td>腔视神经盘异常</td><td>银屑病性皮炎</td></tr>
<tr><td>XY性反转6型</td><td>脊髓性肌萎缩1型，AD</td><td>强迫症</td><td>银屑病元素脂溢性皮炎样皮炎</td></tr>
<tr><td>XY性反转7型</td><td>脊髓性肌萎缩2型，AD</td><td>强直性肌营养不良2型</td><td>隐匿性黄斑营养不良</td></tr>
<tr><td>XY性反转8型</td><td>脊髓性肌萎缩4型</td><td>强直性脊柱炎</td><td>隐性营养不良型大疱性表皮松解</td></tr>
<tr><td>XY性反转9型</td><td>脊髓性肌萎缩伴呼吸窘迫1型</td><td>羟谷胱甘肽水解酶缺乏症</td><td>隐眼综合征</td></tr>
<tr><td>XY性逆转3型</td><td>脊椎发育不良，kimberley型</td><td>羟基犬尿酸尿症</td><td>婴儿GM1神经节苷脂沉积症</td></tr>
<tr><td>XY性腺发育不全（小束状神经病）</td><td>脊椎发育不良，stanescu型</td><td>羟甲基辅酶A裂解酶缺乏症</td><td>婴儿Refsum病</td></tr>
<tr><td>X连锁Bulbo脊髓萎缩</td><td>脊椎跗骨骨性愈合综合征</td><td>桥本甲状腺炎</td><td>婴儿猝死伴睾丸发育不全综合征</td></tr>
<tr><td>X连锁丙球蛋白​​缺乏血症</td><td>脊椎干骺端l发育不良(pakistani型)</td><td>鞘脂激活蛋白1缺陷</td><td>婴儿猝死综合症</td></tr>
<tr><td>X连锁丙种球蛋白血症伴生长激素缺乏症</td><td>脊椎干骺端发育不良(Aggrecan型)</td><td>青光眼开角1型F型</td><td>婴儿低磷酸酯酶</td></tr>
<tr><td>X连锁肌酸缺乏</td><td>脊椎干骺端发育不良(Faden-Alkuraya型)</td><td>青光眼开角1型G型</td><td>婴儿动脉钙化</td></tr>
<tr><td>X连锁精神发育迟滞伴小脑发育不全和独特的面部</td><td>脊椎干骺端发育不良(Genevieve型)</td><td>青光眼开角1型O型</td><td>婴儿短暂型高甘油三酯血症</td></tr>
<tr><td>X连锁精神发育迟滞综合征11型</td><td>脊椎干骺端发育不良(Missouri型)</td><td>青光眼敏感型（正常眼压）</td><td>婴儿肝功能衰竭综合征1型</td></tr>
<tr><td>X-连锁联合免疫缺陷</td><td>脊椎干骺端发育不良(Sedaghatian型)</td><td>青年发病型糖尿病10型</td><td>婴儿肝功能衰竭综合征2型</td></tr>
<tr><td>X连锁脑积水综合征</td><td>脊椎干骺端发育不良(Strudwick型)</td><td>青年发病型糖尿病11型</td><td>婴儿高钙血症2型</td></tr>
<tr><td>X连锁脑室周围异位</td><td>脊椎干骺端发育不良(X连锁)</td><td>青年发病型糖尿病13型</td><td>婴儿骨皮质增生症</td></tr>
<tr><td>X连锁神经慢性特发性假性肠梗阻</td><td>脊椎干骺端发育不良(胞外基质-3相关)</td><td>青年发病型糖尿病14型</td><td>婴儿肌纤维瘤病1型</td></tr>
<tr><td>X连锁型腭裂</td><td>脊椎干骺端发育不良(科兹洛夫斯基类型)</td><td>青年发病型糖尿病1型</td><td>婴儿肌纤维瘤病2型</td></tr>
<tr><td>X-连锁严重联合免疫缺陷</td><td>脊椎干骺端发育不良伴多重错位</td><td>青年发病型糖尿病2型</td><td>婴儿肌张力低下伴精神运动发育迟缓</td></tr>
<tr><td>X连锁遗传性运动感觉神经病变</td><td>脊椎干骺端发育不良伴关节松弛</td><td>青年发病型糖尿病4型</td><td>婴儿肌张力低下伴精神运动发育迟缓2型</td></tr>
<tr><td>X连锁隐性肾结石肾功能衰竭</td><td>脊椎干骺端发育不良伴锥杆营养不良</td><td>青年发病型糖尿病6型</td><td>婴儿肌张力低下伴精神运动发育迟缓3型</td></tr>
<tr><td>X连锁鱼鳞病伴固醇硫酸酯酶缺乏症</td><td>脊椎-骨骺，干骺端发育不良</td><td>青年发病型糖尿病7型</td><td>婴儿毛细血管血管瘤</td></tr>
<tr><td>X连锁智力低下41型</td><td>脊椎骨骺发育不良</td><td>青年发病型糖尿病8型</td><td>婴儿帕金森肌张力障碍</td></tr>
<tr><td>X连锁智力低下90型</td><td>脊椎骨骺发育不良(Maroteaux型)</td><td>青年发病型糖尿病9型</td><td>婴儿期持续高胰岛素低血糖</td></tr>
<tr><td>X连锁智力低下伴marfanoid型综合征</td><td>脊椎骨骺发育不良(短肢手型)</td><td>青少年癫痫</td><td>婴儿期普遍动脉钙化2型</td></tr>
<tr><td>X因子缺乏症</td><td>脊椎骨骺发育不良伴先天性脱位关节</td><td>青少年发病白内障（粉状）</td><td>婴儿期重症肌阵挛性癫痫</td></tr>
<tr><td>You-Hoover-Fong综合征</td><td>脊椎肋骨发育不全1型</td><td>青少年发病型白内障</td><td>婴儿神经退行性疾病轴索与面部畸形</td></tr>
<tr><td>Young Simpson综合征</td><td>脊椎肋骨发育不全2型</td><td>青少年胱氨酸肾病</td><td>婴儿肾单位肾痨</td></tr>
<tr><td>Yunis Varon综合征</td><td>脊椎肋骨发育不全3型</td><td>青少年肾消耗病</td><td>婴儿小脑视网膜变性</td></tr>
<tr><td>Zellweger综合征</td><td>脊椎肋骨发育不全4型</td><td>青少年视网膜劈裂</td><td>婴儿型肉碱棕榈酰转移酶II缺乏症</td></tr>
<tr><td>Zimmermann-Laband综合征1型</td><td>脊椎肋骨发育不全5型</td><td>青少年型原发性开角型青光眼1型</td><td>婴儿型纹状体黑质变性</td></tr>
<tr><td>Zimmermann-Laband综合征2型</td><td>脊椎肋骨发育不全6型</td><td>轻度枫糖尿症</td><td>婴儿眼球震颤（X连锁）</td></tr>
<tr><td>ZNF711相关X连锁智力低下</td><td>脊椎内生软骨发育不全与免疫失调</td><td>轻度淋巴水肿伴脊髓发育不良</td><td>婴儿遗传性痉挛性瘫痪</td></tr>
<tr><td>Zunich神经外胚层综合征</td><td>脊椎手发育不全，Ehlers-Danlos综合征样</td><td>轻度疟疾</td><td>婴儿致死性线粒体肌病</td></tr>
<tr><td>Z蛋白缺乏症</td><td>继发性甲减</td><td>轻度小头畸形16型，AR</td><td>婴儿轴索营养不良</td></tr>
<tr><td>α，α-海藻糖酶缺乏症</td><td>家族X连锁低磷维生素D佝偻病</td><td>轻度正中神经单神经病</td><td>婴幼儿型多系统自身免疫性疾病</td></tr>
<tr><td>α/βT淋巴细胞减少症</td><td>家族低钾血症，低镁血症</td><td>球体肌病</td><td>婴幼儿型多系统自身免疫性疾病2型</td></tr>
<tr><td>α-1-抗胰蛋白酶缺乏</td><td>家族淀粉样蛋白肾病荨麻疹和耳聋</td><td>球形红细胞增多症1型</td><td>营养不良性大疱性表皮松解</td></tr>
<tr><td>α-2巨球蛋白缺乏症</td><td>家族非典型分枝杆菌1型，X连锁</td><td>球形红细胞增多症2型</td><td>硬化性骨化病</td></tr>
<tr><td>α-B晶体视网膜病</td><td>家族高胰岛素血症</td><td>球形红细胞增多症3型</td><td>硬化性骨化病2型</td></tr>
<tr><td>α白细胞介素2受体缺乏症</td><td>家族渐进性色素沉着带或不带色素减退</td><td>球形红细胞增多症4型</td><td>硬化性角膜，常染色体隐性遗传</td></tr>
<tr><td>α-地中海贫血</td><td>家族男性乳房发育症</td><td>球形红细胞增多症5型</td><td>永久性多克隆B细胞增多症</td></tr>
<tr><td>α-甘露糖苷酶缺乏症</td><td>家族型高脂蛋白血症5型</td><td>球形晶状体</td><td>永久性苗勒管综合征</td></tr>
<tr><td>α-甲酰辅酶A消旋酶缺乏症</td><td>家族性CD8缺乏症</td><td>屈曲指关节髋内翻性综合征</td><td>尤因氏肉瘤</td></tr>
<tr><td>α-酮戊二酸脱氢酶缺陷</td><td>家族性Guillain-Barre综合征</td><td>屈曲指和耳聋综合征</td><td>由细胞色素P450 CYP2D6变异引起的失调</td></tr>
<tr><td>β-D-甘露糖贮积症</td><td>家族性X染色体失活1型</td><td>屈肢骨发育不良</td><td>疣，低丙球蛋白血症，无效生成性慢性粒细胞缺乏</td></tr>
<tr><td>β-地中海贫血</td><td>家族性部分脂肪代谢障碍2型</td><td>曲霉病易感</td><td>疣状表皮发育不良</td></tr>
<tr><td>β地中海贫血（AR）</td><td>家族性部分脂肪代谢障碍3型</td><td>全垂体机能减退X连锁</td><td>幼年特发性高钙血症</td></tr>
<tr><td>β-螺旋桨蛋白相关神经变性</td><td>家族性部分脂肪代谢障碍4型</td><td>全脑髓鞘形成减少</td><td>幼年性肌张力障碍</td></tr>
<tr><td>β-脲酰丙酸酶缺乏症</td><td>家族性部分脂肪代谢障碍5型</td><td>全身脓疱型银屑病</td><td>幼年性息肉病/遗传性出血性毛细血管扩张症</td></tr>
<tr><td>β-羟基异丁酰辅酶A脱酰酶不足</td><td>家族性部分脂肪代谢障碍6型</td><td>全身性癫痫伴高热惊厥1型</td><td>幼年性息肉综合征</td></tr>
<tr><td>γ-氨基丁酸转氨酶缺乏</td><td>家族性痴呆</td><td>全身性癫痫伴高热惊厥2型</td><td>幼年严重常染色体隐性遗传性肌营养不良症(北非型)</td></tr>
<tr><td>γ-谷氨酰半胱氨酸合成酶缺乏症</td><td>家族性迟发性皮肤卟啉</td><td>全身性癫痫伴高热惊厥6型</td><td>釉质发育不全（1E型）</td></tr>
<tr><td>阿尔茨海默病18型</td><td>家族性单纯性自然杀伤细胞缺乏症</td><td>全身性癫痫伴高热惊厥7型</td><td>釉质发育不全（AD）</td></tr>
<tr><td>阿尔茨海默病19型</td><td>家族性低B脂蛋白血1型</td><td>全身性癫痫伴高热惊厥9型</td><td>釉质发育不全（IA型）</td></tr>
<tr><td>阿尔茨海默病2型</td><td>家族性低B脂蛋白血2型</td><td>全身性癫痫发作性和运动障碍</td><td>釉质发育不全（IC型）</td></tr>
<tr><td>阿尔茨海默病3型</td><td>家族性低钙高血钙症1型</td><td>全身性少年类风湿关节炎</td><td>釉质发育不全（IF型）</td></tr>
<tr><td>阿尔茨海默病4型</td><td>家族性地中海热</td><td>缺血性中风</td><td>釉质发育不全（IH型）</td></tr>
<tr><td>阿尔茨海默病9型</td><td>家族性地中海热，常染色体显性遗传</td><td>缺指畸形-外胚层发育不良和唇裂/腭裂综合征3型</td><td>釉质发育不全（IV型）</td></tr>
<tr><td>阿尔茨海默氏病</td><td>家族性多发性毛囊上皮瘤</td><td>缺转铁球蛋白血症</td><td>釉质发育不全（钙化不全IIA1型）</td></tr>
<tr><td>阿黑皮素缺乏症</td><td>家族性发育不全，肾小球囊性病变</td><td>染色单体过早分离</td><td>釉质发育不全（钙化不全IIA2型）</td></tr>
<tr><td>埃勒斯-当洛样综合征(固生蛋白缺乏)</td><td>家族性发作性疼痛综合征1型</td><td>染色体16p12.1缺失综合征</td><td>釉质发育不全（钙化不全IIA3型）</td></tr>
<tr><td>埃勒斯-当洛综合征(AR)</td><td>家族性反常性痤疮1型</td><td>染色体1q43-Q44缺失综合征</td><td>釉质发育不全（钙化不全IIA4型）</td></tr>
<tr><td>埃勒斯-当洛综合征(musculocontractural 1型)</td><td>家族性反常性痤疮2型</td><td>染色体2q32-Q33缺失综合征</td><td>釉质发育不全（钙化不全IIA5型）</td></tr>
<tr><td>埃勒斯-当洛综合征(musculocontractural 2型)</td><td>家族性反常性痤疮3型</td><td>染色体2q37缺失综合征</td><td>釉质发育不全（钙化不全型）</td></tr>
<tr><td>埃勒斯-当洛综合征(progeroid 2型)</td><td>家族性肥厚心肌病</td><td>染色体Xp22缺失综合征</td><td>鱼鳞病，白细胞空泡，脱发，和硬化性胆管炎</td></tr>
<tr><td>埃勒斯-当洛综合征(脊柱后侧凸，肌病，耳聋综合征)</td><td>家族性肥厚型心肌病10型</td><td>染色体Xq28缺失综合征</td><td>鱼眼疾病</td></tr>
<tr><td>埃勒斯-当洛综合征(胶原蛋白酶缺乏)</td><td>家族性肥厚型心肌病11型</td><td>桡尺骨性愈合与低巨核细胞性血小板减少</td><td>与多尾精子和DNA过多相关的不孕症</td></tr>
<tr><td>埃勒斯-当洛综合征(经典型)</td><td>家族性肥厚型心肌病12型</td><td>桡尺骨性愈合与低巨核细胞性血小板减少2型</td><td>语言障碍1型</td></tr>
<tr><td>埃勒斯-当洛综合征(羟缺陷)</td><td>家族性肥厚型心肌病13型</td><td>桡肱骨融合伴其他骨骼和颅面畸形</td><td>原发性常染色体隐性畸形10型</td></tr>
<tr><td>埃勒斯-当洛综合征3型</td><td>家族性肥厚型心肌病14型</td><td>热带性钙化性胰腺炎</td><td>原发性常染色体隐性畸形11型</td></tr>
<tr><td>埃勒斯-当洛综合征4型</td><td>家族性肥厚型心肌病15型</td><td>认知功能障碍有或无小脑性共济失调</td><td>原发性常染色体隐性畸形12型</td></tr>
<tr><td>埃勒斯-当洛综合征7型</td><td>家族性肥厚型心肌病16型</td><td>妊娠肝内胆汁淤积症</td><td>原发性常染色体隐性畸形13型</td></tr>
<tr><td>埃勒斯-当洛综合征progeroid型</td><td>家族性肥厚型心肌病17型</td><td>溶酶体储积症</td><td>原发性常染色体隐性畸形14型</td></tr>
<tr><td>安德森氏症候群</td><td>家族性肥厚型心肌病18型</td><td>溶酶体酸性脂肪酶缺乏症</td><td>原发性常染色体隐性畸形15型</td></tr>
<tr><td>氨基丙二酸尿症</td><td>家族性肥厚型心肌病19型</td><td>溶血性贫血（己糖激酶缺乏）</td><td>原发性常染色体隐性畸形1型</td></tr>
<tr><td>氨基糖苷类耳聋</td><td>家族性肥厚型心肌病1型</td><td>溶血性贫血（葡萄糖磷酸异构酶缺乏）</td><td>原发性常染色体隐性畸形2型</td></tr>
<tr><td>氨基酰化酶1缺乏</td><td>家族性肥厚型心肌病20型</td><td>溶血性贫血（醛缩酶A缺乏症）</td><td>原发性常染色体隐性畸形3型</td></tr>
<tr><td>奥托 - 腭数字综合征，I型</td><td>家族性肥厚型心肌病2型</td><td>肉碱脂酰转移酶缺乏症</td><td>原发性常染色体隐性畸形4型</td></tr>
<tr><td>拔毛癖</td><td>家族性肥厚型心肌病3型</td><td>肉碱棕榈酰转移酶II缺乏症</td><td>原发性常染色体隐性畸形5型</td></tr>
<tr><td>白癜风相关多种自身免疫性疾病易感1型</td><td>家族性肥厚型心肌病4型</td><td>肉碱棕榈酰转移酶I缺乏症</td><td>原发性常染色体隐性畸形6型</td></tr>
<tr><td>白甲秃</td><td>家族性肥厚型心肌病6型</td><td>乳糜微粒滞留病</td><td>原发性常染色体隐性畸形7型</td></tr>
<tr><td>白内障（AD)</td><td>家族性肥厚型心肌病7型</td><td>乳糜泻3型</td><td>原发性常染色体隐性畸形8型</td></tr>
<tr><td>白内障（AD,1型)</td><td>家族性肥厚型心肌病8型</td><td>乳糜泻4型</td><td>原发性常染色体隐性畸形9型</td></tr>
<tr><td>白内障（AR,2型)</td><td>家族性肥厚型心肌病9型</td><td>乳清酸尿症</td><td>原发性低镁血症</td></tr>
<tr><td>白内障（AR,4型)</td><td>家族性肺毛细血管瘤</td><td>乳酸脱氢酶B缺乏症</td><td>原发性肥大性骨关节病2型，AR</td></tr>
<tr><td>白内障（AR,5型)</td><td>家族性肝腺瘤</td><td>乳突状肾细胞癌1型</td><td>原发性肺动脉高压</td></tr>
<tr><td>白内障（coppock样）</td><td>家族性高胆固醇</td><td>乳腺多发性纤维腺瘤</td><td>原发性肺动脉高压2型</td></tr>
<tr><td>白内障（Hutterite型）</td><td>家族性高钙尿症</td><td>软骨发育不良</td><td>原发性肺动脉高压3型</td></tr>
<tr><td>白内障（带状）</td><td>家族性高甘油三酯血症</td><td>软骨发育不全</td><td>原发性肺动脉高压4型</td></tr>
<tr><td>白内障（感觉神经性耳聋，唐氏综合征样面容，身材矮小，智力低下）</td><td>家族性高热惊厥11型</td><td>软骨发育不全</td><td>原发性高草酸盐III型</td></tr>
<tr><td>白内障（核性）</td><td>家族性高热惊厥4型</td><td>软骨发育不全（megarbane-dagher-melki型）</td><td>原发性高草酸盐II型</td></tr>
<tr><td>白内障（核性非渐进性弥漫）</td><td>家族性高胰岛素低血糖症4型</td><td>软骨发育不全（脑积水和小眼球）</td><td>原发性高草酸盐I型</td></tr>
<tr><td>白内障（花状型）</td><td>家族性骨髓衰竭</td><td>软骨发育不全1A型</td><td>原发性高血压</td></tr>
<tr><td>白内障（膜质）</td><td>家族性骨髓增生/淋巴组织肿瘤</td><td>软骨发育不全1B型</td><td>原发性红斑性肢痛症</td></tr>
<tr><td>白内障（生长激素缺乏症，感觉神经病变，感觉神经性听力损失和骨骼发育不良）</td><td>家族性红细胞增多2型</td><td>软骨发育不全2型</td><td>原发性家族肥厚型心肌病</td></tr>
<tr><td>白内障（小眼球及眼球震颤）</td><td>家族性红细胞增多3型</td><td>软骨钙质沉着病2型</td><td>原发性局部皮肤淀粉样变1型</td></tr>
<tr><td>白内障13型</td><td>家族性红细胞增多4型</td><td>软骨关节脱位</td><td>原发性开角型青光眼</td></tr>
<tr><td>白内障15型</td><td>家族性红细胞增多症1型</td><td>软骨肉瘤</td><td>原发性扩张型心肌病</td></tr>
<tr><td>白内障19型</td><td>家族性混合型高脂血症</td><td>软骨外胚层发育不良症</td><td>原发性青光眼3型B型</td></tr>
<tr><td>白内障1型</td><td>家族性肌阵挛</td><td>软骨肢中端发育不全</td><td>原发性青光眼3型D型</td></tr>
<tr><td>白内障23型</td><td>家族性脊髓神经纤维瘤，</td><td>萨拉病</td><td>原发性醛固酮增多症，癫痫，神经系统异常</td></tr>
<tr><td>白内障39型</td><td>家族性甲状旁腺功能减退症</td><td>腮-耳-肾症候群2型</td><td>原发性色素性结节状肾上腺皮质疾病1型</td></tr>
<tr><td>白内障3型</td><td>家族性甲状腺髓样癌</td><td>三甲基胺尿症</td><td>原发性色素性结节状肾上腺皮质疾病2型</td></tr>
<tr><td>白内障40型</td><td>家族性假性高钾血症1A型</td><td>三甲基巴豆酰辅酶A羧化酶1缺乏</td><td>原发性色素性结节状肾上腺皮质疾病3型</td></tr>
<tr><td>白内障43型</td><td>家族性假性高钾血症1B型</td><td>三甲基赖氨酸羟化酶缺陷症</td><td>原发性色素性结节状肾上腺皮质疾病4型</td></tr>
<tr><td>白内障44型</td><td>家族性假性高钾血症1C型</td><td>三角头畸形1型</td><td>原发性纤毛运动障碍</td></tr>
<tr><td>白内障45型</td><td>家族性假性高钾血症1型（AD）</td><td>三角头畸形2型</td><td>原发性纤毛运动障碍10型</td></tr>
<tr><td>白内障4型</td><td>家族性假性高钾血症1型（AR）</td><td>三磷酸肌苷不足</td><td>原发性纤毛运动障碍11型</td></tr>
<tr><td>白内障6型</td><td>家族性假性高钾血症2B型</td><td>桑德霍夫病</td><td>原发性纤毛运动障碍12型</td></tr>
<tr><td>白内障伴小角膜和糖尿</td><td>家族性假性高钾血症2C型</td><td>色氨酸5单加氧酶缺乏症</td><td>原发性纤毛运动障碍13型</td></tr>
<tr><td>白内障和心肌病</td><td>家族性假性高钾血症2D型</td><td>色盲</td><td>原发性纤毛运动障碍14型</td></tr>
<tr><td>白三烯C4合成酶缺乏症</td><td>家族性假性高钾血症2E型</td><td>色盲2型</td><td>原发性纤毛运动障碍15型</td></tr>
<tr><td>白色海绵状痣2型</td><td>家族性假性高钾血症2型</td><td>色盲3型</td><td>原发性纤毛运动障碍16型</td></tr>
<tr><td>白色海绵状痣cannon型</td><td>家族性口吃1型</td><td>色盲4型</td><td>原发性纤毛运动障碍17型</td></tr>
<tr><td>白细胞粘附缺陷1型</td><td>家族性良性天疱疮</td><td>色盲7型</td><td>原发性纤毛运动障碍18型</td></tr>
<tr><td>白细胞粘附缺陷III型</td><td>家族性淋巴组织增生症2型</td><td>色素巨痣多毛</td><td>原发性纤毛运动障碍19型</td></tr>
<tr><td>白质脑病伴脑干和脊髓受累、乳酸分泌提高</td><td>家族性淋巴组织增生症3型</td><td>色素失调综合征</td><td>原发性纤毛运动障碍20型</td></tr>
<tr><td>斑花叶非整倍体综合征1型</td><td>家族性淋巴组织增生症4型</td><td>色素性脉络膜视网膜静脉旁萎缩</td><td>原发性纤毛运动障碍21型</td></tr>
<tr><td>斑花叶非整倍体综合征2型</td><td>家族性淋巴组织增生症5型</td><td>色素性视网膜炎</td><td>原发性纤毛运动障碍22型</td></tr>
<tr><td>半胱天冬蛋白酶-8缺乏</td><td>家族性慢性皮肤粘膜念珠菌病</td><td>色素性视网膜炎（X连锁）</td><td>原发性纤毛运动障碍23型</td></tr>
<tr><td>半乳糖的β-半乳糖苷酶缺乏症</td><td>家族性泌乳素瘤</td><td>色素性视网膜炎10型</td><td>原发性纤毛运动障碍24型</td></tr>
<tr><td>半乳糖激酶缺乏症</td><td>家族性脑病</td><td>色素性视网膜炎11型</td><td>原发性纤毛运动障碍25型</td></tr>
<tr><td>瓣上主动脉瓣狭窄</td><td>家族性脑膜瘤</td><td>色素性视网膜炎12型</td><td>原发性纤毛运动障碍26型</td></tr>
<tr><td>包涵体肌病2型</td><td>家族性内脏淀粉样变性，Ostertag型</td><td>色素性视网膜炎13型</td><td>原发性纤毛运动障碍27型</td></tr>
<tr><td>包涵体肌病3型</td><td>家族性念珠菌病2型</td><td>色素性视网膜炎14型</td><td>原发性纤毛运动障碍28型</td></tr>
<tr><td>包涵体肌病伴早发Paget病和额颞叶痴呆</td><td>家族性念珠菌病5型</td><td>色素性视网膜炎15型</td><td>原发性纤毛运动障碍29型</td></tr>
<tr><td>包涵体肌病伴早发Paget病有或无额颞叶痴呆2型</td><td>家族性念珠菌病6型</td><td>色素性视网膜炎17型</td><td>原发性纤毛运动障碍2型</td></tr>
<tr><td>包涵体肌病伴早发Paget病有或无额颞叶痴呆3型</td><td>家族性念珠菌病8型</td><td>色素性视网膜炎18型</td><td>原发性纤毛运动障碍30型</td></tr>
<tr><td>胞浆磷酸烯醇不足</td><td>家族性念珠菌病9型</td><td>色素性视网膜炎19型</td><td>原发性纤毛运动障碍32型</td></tr>
<tr><td>暴食症1型</td><td>家族性凝视麻痹，进行性脊柱侧弯</td><td>色素性视网膜炎1型</td><td>原发性纤毛运动障碍33型</td></tr>
<tr><td>暴食症2型</td><td>家族性膨胀性骨溶解</td><td>色素性视网膜炎20型</td><td>原发性纤毛运动障碍3型</td></tr>
<tr><td>备解缺乏，X连锁</td><td>家族性偏瘫型偏头痛1型</td><td>色素性视网膜炎25型</td><td>原发性纤毛运动障碍5型</td></tr>
<tr><td>苯丙酮尿症</td><td>家族性偏瘫型偏头痛2型</td><td>色素性视网膜炎26型</td><td>原发性纤毛运动障碍6型</td></tr>
<tr><td>鼻咽癌</td><td>家族性偏瘫型偏头痛3型</td><td>色素性视网膜炎27型</td><td>原发性纤毛运动障碍7型</td></tr>
<tr><td>鼻咽毛囊发育不良I型</td><td>家族性醛固酮增多症1型</td><td>色素性视网膜炎28型</td><td>原发性纤毛运动障碍9型</td></tr>
<tr><td>鼻咽毛囊综合征3型</td><td>家族性醛固酮增多症3型</td><td>色素性视网膜炎30型</td><td>原发性血小板增多症</td></tr>
<tr><td>吡哆醇依赖性癫痫</td><td>家族性醛固酮增多症IV型</td><td>色素性视网膜炎31型</td><td>原发性自发性气胸</td></tr>
<tr><td>吡哆醛5'-磷酸依赖性癫痫</td><td>家族性热性惊厥8型</td><td>色素性视网膜炎33型</td><td>圆头精子症</td></tr>
<tr><td>吡咯啉-5-羧酸还原酶缺乏症</td><td>家族性乳房卵巢癌1型</td><td>色素性视网膜炎35型</td><td>圆锥角膜1型</td></tr>
<tr><td>扁平角膜2型</td><td>家族性乳房卵巢癌2型</td><td>色素性视网膜炎36型</td><td>远侧脊肌萎缩症(X连锁3型)</td></tr>
<tr><td>扁平髋</td><td>家族性乳房卵巢癌3型</td><td>色素性视网膜炎37型</td><td>远端脊肌萎缩症(AR 2型)</td></tr>
<tr><td>表观盐皮质激素过多综合征</td><td>家族性乳房卵巢癌4型</td><td>色素性视网膜炎38型</td><td>远端脊肌萎缩症(AR 4型)</td></tr>
<tr><td>表皮掌跖角化病</td><td>家族性乳腺癌</td><td>色素性视网膜炎39型</td><td>远端脊髓性肌萎缩，AR 5型</td></tr>
<tr><td>表皮痣</td><td>家族性少年高尿酸血症肾病4型</td><td>色素性视网膜炎40型</td><td>远端肾小管性酸中毒（AD）</td></tr>
<tr><td>表皮痣综合征</td><td>家族性少年痛风</td><td>色素性视网膜炎41型</td><td>远端肾小管性酸中毒（AR）</td></tr>
<tr><td>别嘌呤醇反应</td><td>家族性什高胆烷血症</td><td>色素性视网膜炎42型</td><td>远端肾小管性酸中毒（溶血性贫血）</td></tr>
<tr><td>丙二酰辅酶A脱羧酶缺乏症</td><td>家族性肾性低尿酸血症</td><td>色素性视网膜炎43型</td><td>远端型肌病1型</td></tr>
<tr><td>丙酸血症</td><td>家族性肾性糖尿</td><td>色素性视网膜炎44型</td><td>远端型肌病2型</td></tr>
<tr><td>丙酮酸羧化酶缺乏症</td><td>家族性渗出性玻璃体视网膜病变，X-连锁</td><td>色素性视网膜炎45型</td><td>远端型肌病4型</td></tr>
<tr><td>丙酮酸脱氢酶E1-α缺乏症</td><td>家族性室性心动过速</td><td>色素性视网膜炎46型</td><td>远端型肌病5型</td></tr>
<tr><td>丙酮酸脱氢酶E1-β缺乏症</td><td>家族性睡眠相位前移症候群</td><td>色素性视网膜炎47型</td><td>远端型肌病伴胫前发病</td></tr>
<tr><td>丙酮酸脱氢酶E2缺乏症</td><td>家族性睡眠相位前移症候群2型</td><td>色素性视网膜炎48型</td><td>远端遗传性运动神经元病2A型</td></tr>
<tr><td>丙酮酸脱氢酶E3结合蛋白缺乏症</td><td>家族性睡眠相位前移症候群3型</td><td>色素性视网膜炎49型</td><td>远端遗传性运动神经元病2B型</td></tr>
<tr><td>丙酮酸脱氢酶磷酸酶缺乏症</td><td>家族性无汗症</td><td>色素性视网膜炎4型</td><td>远端遗传性运动神经元病2C型</td></tr>
<tr><td>丙酮酸脱氢酶硫辛酸合成酶缺乏症</td><td>家族性酰基辅酶A脱氢酶缺陷9型</td><td>色素性视网膜炎50型</td><td>远端遗传性运动神经元病2D型</td></tr>
<tr><td>并指1型</td><td>家族性限制型心肌病1型</td><td>色素性视网膜炎51型</td><td>远端遗传性运动神经元病5B型</td></tr>
<tr><td>并指2型</td><td>家族性限制型心肌病3型</td><td>色素性视网膜炎54型</td><td>远端遗传性运动神经元病5型</td></tr>
<tr><td>并指畸形，Cenani Lenz型</td><td>家族性腺瘤性息肉病1型</td><td>色素性视网膜炎55型</td><td>远端遗传性运动神经元病7B型</td></tr>
<tr><td>并指畸形3型</td><td>家族性腺瘤性息肉病3型</td><td>色素性视网膜炎56型</td><td>远端遗传性运动神经元病7型</td></tr>
<tr><td>并指畸形9型</td><td>家族性小脑蚓部发育不全</td><td>色素性视网膜炎57型</td><td>远端指间关节骨性关节炎</td></tr>
<tr><td>并指畸形IV型</td><td>家族性心房颤动</td><td>色素性视网膜炎58型</td><td>阅读障碍1型</td></tr>
<tr><td>并指畸形V型</td><td>家族性新生儿惊厥1型</td><td>色素性视网膜炎59型</td><td>阅读障碍2型</td></tr>
<tr><td>病态窦房结综合征1型</td><td>家族性新生儿惊厥2型</td><td>色素性视网膜炎60型</td><td>运动过程中甘油释放缺陷症</td></tr>
<tr><td>病态窦房结综合征2型</td><td>家族性新生儿婴儿惊厥</td><td>色素性视网膜炎61型</td><td>运动介导的高胰岛索血症性低血糖症</td></tr>
<tr><td>病态窦房结综合征3型</td><td>家族性性低钙高钙血症III型</td><td>色素性视网膜炎62型</td><td>载脂蛋白C2缺乏</td></tr>
<tr><td>病态肥胖和生精障碍</td><td>家族性胸主动脉瘤4型</td><td>色素性视网膜炎66型</td><td>再生障碍性贫血</td></tr>
<tr><td>玻璃膜疣</td><td>家族性胸主动脉瘤6型</td><td>色素性视网膜炎67型</td><td>再生障碍性贫血</td></tr>
<tr><td>玻璃体视网膜病变，新生血管炎</td><td>家族性胸主动脉瘤7型</td><td>色素性视网膜炎68型</td><td>再生障碍性贫血、血小板减少综合征</td></tr>
<tr><td>玻璃体视网膜脉络膜病</td><td>家族性胸主动脉瘤8型</td><td>色素性视网膜炎69型</td><td>早产儿鱼鳞病综合征</td></tr>
<tr><td>剥脱性骨软骨炎</td><td>家族性胸主动脉瘤9型</td><td>色素性视网膜炎70型</td><td>早产胎膜早破</td></tr>
<tr><td>剥脱性青光眼</td><td>家族性血尿</td><td>色素性视网膜炎71型</td><td>早产性小脑共济失调</td></tr>
<tr><td>剥脱性鱼鳞病，常染色体隐性遗传</td><td>家族性血栓形成倾向，组织纤维蛋白溶酶原活化剂减少</td><td>色素性视网膜炎72型</td><td>早发型痉挛伴高氨酸血症</td></tr>
<tr><td>播散型非典型分枝杆菌感染</td><td>家族性血小板紊乱伴相关的​​恶性骨髓瘤</td><td>色素性视网膜炎73型</td><td>早发性高血压伴妊娠期严重恶化</td></tr>
<tr><td>播散性豆状皮肤纤维瘤病</td><td>家族性荨麻疹</td><td>色素性视网膜炎74型</td><td>早发性肌病，反射消失，呼吸窘迫和吞咽困难</td></tr>
<tr><td>补体成分2缺乏</td><td>家族性胰岛素低血糖3型</td><td>色素性视网膜炎75型</td><td>早发性肌病伴致命性心肌病</td></tr>
<tr><td>补体成分3缺乏</td><td>家族性胰岛素低血糖5型</td><td>色素性视网膜炎7型</td><td>早发性结节病</td></tr>
<tr><td>补体成分4A缺乏</td><td>家族性异常白蛋白高甲状腺素血症</td><td>色素性视网膜炎9型</td><td>早发性纹状体黑质变性</td></tr>
<tr><td>补体成分4B缺乏</td><td>家族性婴儿型重症</td><td>色素性视网膜炎伴或不伴内脏转位</td><td>早发性自闭症</td></tr>
<tr><td>补体成分4缺乏</td><td>家族性婴儿型重症肌无力1型</td><td>色素性视网膜炎和小红细胞增多症</td><td>早发严重性肌病，体重减轻（X连锁）</td></tr>
<tr><td>补体成分6缺乏</td><td>家族性幼年高尿酸性肾病2型</td><td>色素性视网膜营养不良</td><td>早期肌阵挛性脑病</td></tr>
<tr><td>补体成分7缺乏</td><td>家族性圆柱瘤</td><td>上皮复发性糜烂营养不良</td><td>早期婴儿癫痫性脑病10型</td></tr>
<tr><td>补体成分8缺乏1型</td><td>家族性运动障碍伴面部肌纤维颤搐</td><td>上皮肌上皮癌</td><td>早期婴儿癫痫性脑病11型</td></tr>
<tr><td>补体成分8缺乏2型</td><td>家族性阵发性疼痛综合征2型</td><td>少汗型X连锁外胚层发育不良</td><td>早期婴儿癫痫性脑病12型</td></tr>
<tr><td>补体成分9缺乏</td><td>家族性阵发性疼痛综合征3型</td><td>少汗型外胚层发育不良</td><td>早期婴儿癫痫性脑病13型</td></tr>
<tr><td>补体成分C1R/C1S缺乏</td><td>家族性肿瘤钙质沉着</td><td>少汗型外胚层发育不良免疫缺陷症</td><td>早期婴儿癫痫性脑病14型</td></tr>
<tr><td>补体成分C1S缺乏</td><td>家族性重症肢带肌无力</td><td>少汗型外胚层发育不良综合症</td><td>早期婴儿癫痫性脑病17型</td></tr>
<tr><td>补体因子B缺乏症</td><td>家族性自身炎症综合征2型</td><td>少毛症，淋巴水肿，毛细血管扩张症</td><td>早期婴儿癫痫性脑病18型</td></tr>
<tr><td>补体因子D缺乏症</td><td>家族性自身炎症综合征3型</td><td>少毛症11型</td><td>早期婴儿癫痫性脑病19型</td></tr>
<tr><td>不对称多小脑回</td><td>家族性自身炎症综合征4型</td><td>少毛症12型</td><td>早期婴儿癫痫性脑病1型</td></tr>
<tr><td>部分白化病</td><td>家族性自主神经功能异常</td><td>少毛症13型</td><td>早期婴儿癫痫性脑病21型</td></tr>
<tr><td>部分次黄嘌呤-鸟嘌呤磷酸缺陷症</td><td>家族血症</td><td>少毛症2型</td><td>早期婴儿癫痫性脑病23型</td></tr>
<tr><td>部分绿色盲</td><td>甲床细胞瘤</td><td>少毛症3型</td><td>早期婴儿癫痫性脑病24型</td></tr>
<tr><td>蚕豆敏感病</td><td>甲钴胺缺乏，cblG TYPE</td><td>少毛症6型</td><td>早期婴儿癫痫性脑病25型</td></tr>
<tr><td>苍白球色素变性</td><td>甲基丙二酸半醛脱氢酶缺乏症</td><td>少毛症7型</td><td>早期婴儿癫痫性脑病26型</td></tr>
<tr><td>草酸钙结石</td><td>甲基丙二酸单酰辅酶A异构酶缺乏</td><td>少毛症8型</td><td>早期婴儿癫痫性脑病27型</td></tr>
<tr><td>产后渐进性小头畸形（癫痫发作和脑萎缩）</td><td>甲基丙二酸尿症（甲基丙二酰辅酶A变位酶缺乏）</td><td>少年单核细胞白血病</td><td>早期婴儿癫痫性脑病28型</td></tr>
<tr><td>肠癌</td><td>甲基丙二酸尿症（受体​​传递蛋白缺陷）</td><td>少年黄斑变性和少毛症</td><td>早期婴儿癫痫性脑病29型</td></tr>
<tr><td>肠道乳糖酶缺乏</td><td>甲基丙二酸尿症CBLA型</td><td>少年肌病，脑病，乳酸性酸中毒和中风</td><td>早期婴儿癫痫性脑病2型</td></tr>
<tr><td>肠低镁血症1型</td><td>甲基丙二酸尿症CBLB型</td><td>少年肌阵挛性癫痫</td><td>早期婴儿癫痫性脑病30型</td></tr>
<tr><td>肠激酶缺乏症</td><td>甲基丙二酸尿症和胱氨酸尿症cblF型</td><td>少年神经元蜡样脂褐质</td><td>早期婴儿癫痫性脑病31型</td></tr>
<tr><td>常见变异免疫缺陷10型</td><td>甲基丙二酸尿症和胱氨酸尿症cblJ型</td><td>少年原发性侧索硬化症</td><td>早期婴儿癫痫性脑病32型</td></tr>
<tr><td>常见变异免疫缺陷11型</td><td>甲基丙二酸血症与胱氨酸尿症</td><td>身材矮小，发育迟缓，先天性心脏缺陷</td><td>早期婴儿癫痫性脑病33型</td></tr>
<tr><td>常见变异免疫缺陷1型</td><td>甲基丙二酸血症与胱氨酸尿症cblD型</td><td>身材矮小，关节骨指甲发育不全，面部畸形和少毛症</td><td>早期婴儿癫痫性脑病34型</td></tr>
<tr><td>常见变异免疫缺陷2型</td><td>甲亢性周期性麻痹</td><td>身材矮小，视神经萎缩，pelger-huet异常</td><td>早期婴儿癫痫性脑病35型</td></tr>
<tr><td>常见变异免疫缺陷3型</td><td>甲亢性周期性麻痹2型</td><td>身材矮小，外耳道闭锁，下颌骨发育不良，骨骼异常</td><td>早期婴儿癫痫性脑病37型</td></tr>
<tr><td>常见变异免疫缺陷4型</td><td>甲羟戊酸尿症</td><td>身材矮小，小头畸形，以及内分泌功能紊乱</td><td>早期婴儿癫痫性脑病38型</td></tr>
<tr><td>常见变异免疫缺陷5型</td><td>甲胎蛋白缺乏症</td><td>身材矮小伴非特异性骨骼异常</td><td>早期婴儿癫痫性脑病40型</td></tr>
<tr><td>常见变异免疫缺陷6型</td><td>甲状旁腺功能低下畸型综合征</td><td>身材矮小伴小头畸形和畸形相</td><td>早期婴儿癫痫性脑病4型</td></tr>
<tr><td>常见变异免疫缺陷7型</td><td>甲状腺癌</td><td>神经病共济失调视网膜色素变性症</td><td>早期婴儿癫痫性脑病5型</td></tr>
<tr><td>常见变异免疫缺陷8型</td><td>甲状腺发育不全</td><td>神经冲动胃肠脑病综合征</td><td>早期婴儿癫痫性脑病7型</td></tr>
<tr><td>常见变异免疫缺陷9型</td><td>甲状腺功能减退症和睾丸肿大</td><td>神经传导速度减慢，AD</td><td>早期婴儿癫痫性脑病8型</td></tr>
<tr><td>成骨不全症</td><td>甲状腺功能亢进症（非自身免疫）</td><td>神经发育障碍</td><td>早期婴儿癫痫性脑病9型</td></tr>
<tr><td>成骨不全症，隐性围产期致死</td><td>甲状腺功能亢进症（家族性妊娠）</td><td>神经管缺陷</td><td>泽克尔综合征1型</td></tr>
<tr><td>成骨不全症10型</td><td>甲状腺激素代谢异常</td><td>神经管缺陷（叶酸敏感）</td><td>泽克尔综合征2型</td></tr>
<tr><td>成骨不全症11型</td><td>甲状腺激素抵抗综合征，AD</td><td>神经节苷脂GM1 3型</td><td>泽克尔综合征4型</td></tr>
<tr><td>成骨不全症12型</td><td>甲状腺激素抵抗综合征，AR</td><td>神经节苷脂唾液酸酶缺乏症</td><td>泽克尔综合征5型</td></tr>
<tr><td>成骨不全症13型</td><td>甲状腺内分泌障碍1型</td><td>神经母细胞瘤</td><td>泽克尔综合征6型</td></tr>
<tr><td>成骨不全症14型</td><td>甲状腺内分泌障碍6型</td><td>神经母细胞瘤2型</td><td>泽克尔综合征7型</td></tr>
<tr><td>成骨不全症15型</td><td>甲状腺球蛋白合成缺陷</td><td>神经母细胞瘤3型</td><td>泽克尔综合征8型</td></tr>
<tr><td>成骨不全症17型</td><td>甲状腺乳头状癌</td><td>神经皮肤黑变病</td><td>泽克尔综合征9型</td></tr>
<tr><td>成骨不全症5型</td><td>甲状腺嗜酸细胞癌</td><td>神经鞘瘤</td><td>增强型S-圆锥综合征</td></tr>
<tr><td>成骨不全症6型</td><td>甲状腺素结合球蛋白缺乏症</td><td>神经鞘瘤2型</td><td>增生性血管病和积水，脑积水综合征</td></tr>
<tr><td>成骨不全症7型</td><td>甲状腺肿大，结节1型伴或不支持间质细胞瘤</td><td>神经铁蛋白病变</td><td>粘多糖病IIIΓ型</td></tr>
<tr><td>成骨不全症8型</td><td>钾加重肌强直</td><td>神经退行性疾病与脑铁积累2B型</td><td>粘多糖贮积症Ⅶ型</td></tr>
<tr><td>成骨不全症9型</td><td>假神经胶质瘤性骨质疏松症</td><td>神经退行性疾病与脑铁积累4型</td><td>粘多糖贮积症IH/S型</td></tr>
<tr><td>成骨不全症III型</td><td>假性假甲状旁腺功能减退症</td><td>神经退行性疾病与脑铁积累5型</td><td>粘多糖贮积症IIIA型</td></tr>
<tr><td>成骨不全症I型</td><td>假性醛甾酮脊椎骨骺发育不良综合征</td><td>神经退行性疾病与脑铁积累6型</td><td>粘多糖贮积症IIIB型</td></tr>
<tr><td>成骨不全症伴正常巩膜，显性</td><td>尖头并指1型</td><td>神经退行性疾病与视神经萎缩</td><td>粘多糖贮积症IIIC型</td></tr>
<tr><td>成年非免疫性慢性特发性中性粒细胞减少</td><td>尖头股骨发育不良</td><td>神经纤维瘤病1型</td><td>粘多糖贮积症IIID型</td></tr>
<tr><td>成年型共济失调（眼球运动障碍）</td><td>间质细胞发育不全</td><td>神经纤维瘤病2型</td><td>粘多糖贮积症II型</td></tr>
<tr><td>成人黄斑营养不良</td><td>间质性肺和肝脏疾病</td><td>神经纤维瘤病-Noonan综合征</td><td>粘多糖贮积症IS型</td></tr>
<tr><td>成人脑白质营养不良</td><td>间质性肾炎，组织内细胞核增大</td><td>神经性肩胛腓骨综合征(Kaeser型)</td><td>粘多糖贮积症IVA型</td></tr>
<tr><td>成人葡聚糖体病</td><td>肩腓肌营养不良性心肌病</td><td>神经性厌食症1型</td><td>粘多糖贮积症IVB型</td></tr>
<tr><td>成人型低碱性磷酸酯酶症</td><td>肩胛腓骨肌病，MYH7相关</td><td>肾病伴胫前大疱性表皮松解和耳聋</td><td>长QT综合征10型</td></tr>
<tr><td>成人型交界性大疱性表皮松解</td><td>肩胛腓骨肌病，X连锁显性</td><td>肾病综合征10型</td><td>长QT综合征11型</td></tr>
<tr><td>成人型近侧脊肌萎缩症</td><td>肩胛腓骨脊髓性肌萎缩</td><td>肾病综合征11型</td><td>长QT综合征12型</td></tr>
<tr><td>成人型神经元蜡样质脂褐质沉积症</td><td>睑裂</td><td>肾病综合征12型</td><td>长QT综合征13型</td></tr>
<tr><td>迟发性帕金森病</td><td>渐进骨发育异常</td><td>肾病综合征3型</td><td>长QT综合征14型</td></tr>
<tr><td>迟发性肉碱棕榈酰转移酶II缺乏症</td><td>渐进骨化性肌炎</td><td>肾病综合征5型</td><td>长QT综合征15型</td></tr>
<tr><td>迟发性视网膜变性</td><td>渐进性肝内胆汁淤积</td><td>肾病综合征6型</td><td>长QT综合征1型</td></tr>
<tr><td>尺骨和腓骨缺失严重肢体缺陷</td><td>渐进性肌阵挛癫痫共济失调</td><td>肾病综合征7型</td><td>长QT综合征2型</td></tr>
<tr><td>尺骨-乳腺综合症</td><td>渐进性脑病伴有或无脂肪代谢障碍</td><td>肾病综合征8型</td><td>长QT综合征3型</td></tr>
<tr><td>齿状苍白球萎缩</td><td>渐进性线粒体肌病，先天性白内障，耳聋，发育迟缓</td><td>肾病综合征9型</td><td>长QT综合征5型</td></tr>
<tr><td>抽动秽语综合征</td><td>渐进性小头畸形（癫痫发作，脑和小脑萎缩）</td><td>肾错构瘤肾母细胞瘤形成和巨型胎儿</td><td>长QT综合征6型</td></tr>
<tr><td>出汗性外胚层发育不良综合症</td><td>渐进性牙周炎1型</td><td>肾低发育异常/再生障碍性贫血2型</td><td>长QT综合征9型</td></tr>
<tr><td>储铁蛋白白内障综合征</td><td>渐进性延髓麻痹</td><td>肾低镁血症2型</td><td>长链3-羟基酰基辅酶A脱氢酶缺乏症</td></tr>
<tr><td>垂体后叶尿崩症</td><td>渐进性眼外肌麻痹伴线粒体DNA缺失2型</td><td>肾低镁血症4型</td><td>掌跖角化病（nagashima型）</td></tr>
<tr><td>垂体腺瘤，生长激素分泌2型</td><td>渐进硬化灰质营养不良</td><td>肾低镁血症5型，眼部受累</td><td>掌跖角化病（nonepidermolytic）</td></tr>
<tr><td>垂体依赖性皮质醇增多症</td><td>胶原蛋白VI相关肌病</td><td>肾低镁血症6型</td><td>掌跖角化病（nonepidermolytic，局灶性或弥漫性）</td></tr>
<tr><td>唇裂/腭裂和外胚层发育不良综合症</td><td>焦点面部皮肤发育不良4型</td><td>肾发育不良</td><td>掌跖角化病（nonepidermolytic病灶）</td></tr>
<tr><td>醇症</td><td>焦点皮质发育不良Taylor型</td><td>肾发育不良，视网膜色素萎缩，小脑性共济失调及骨骼发育不良</td><td>掌跖角化病（nonepidermolytic病灶2型）</td></tr>
<tr><td>雌激素抗性</td><td>角化病</td><td>肾肝胰发育不良</td><td>掌跖角化病1型</td></tr>
<tr><td>促卵泡激素缺乏</td><td>角化病3型</td><td>肾肝胰发育不良2型</td><td>掌跖角化病2型</td></tr>
<tr><td>促肾上腺皮质激素耐受</td><td>角化毁损</td><td>肾功能缺损综合征</td><td>掌跖角化病3型</td></tr>
<tr><td>促肾上腺皮质激素缺乏</td><td>角膜脆弱（蓝巩膜和关节过度活动）</td><td>肾结石/骨质疏松症1型</td><td>掌跖角化病papulosa</td></tr>
<tr><td>促性腺激素非依赖性家族性早熟</td><td>角膜内皮营养不良2型</td><td>肾结石/骨质疏松症2型</td><td>掌跖角化病伴腔口周围角化斑块</td></tr>
<tr><td>脆性X震颤/共济失调综合征</td><td>角膜皮样环</td><td>肾母细胞瘤，无虹膜，泌尿生殖异常，智力低下综合征</td><td>掌跖角化病伴腔口周围角化斑块，X连锁</td></tr>
<tr><td>脆性X综合征</td><td>角膜上皮角化不良和外胚层发育不良</td><td>肾母细胞瘤1型</td><td>掌跖角化病和羊毛发</td></tr>
<tr><td>脆性角膜综合征2型</td><td>角膜上皮营养不良</td><td>肾母细胞瘤2型</td><td>掌跖角化过度伴皮肤鳞状细胞癌和46/XX性反转</td></tr>
<tr><td>大动脉转位</td><td>角膜炎，鱼鳞病，耳聋综合征，常染色体显性遗传</td><td>肾母细胞瘤6型</td><td>掌跖角化症耳聋</td></tr>
<tr><td>大动脉转位2型</td><td>角膜营养不良1型</td><td>肾母细胞瘤和双边再生障碍性贫血</td><td>蔗糖酶-异麦芽糖酶缺乏症</td></tr>
<tr><td>大动脉转位3型</td><td>角膜营养不良2型</td><td>肾肉碱运输缺陷</td><td>着色性干皮</td></tr>
<tr><td>大口病</td><td>角膜营养不良3型</td><td>肾上腺脑白质营养不良</td><td>着色性干皮(变体型)</td></tr>
<tr><td>大口病2型</td><td>角膜营养不良4型</td><td>肾细胞癌，XP11相关</td><td>着色性干皮(互补B组)</td></tr>
<tr><td>大脑-肋骨-下颌综合征;</td><td>角膜营养不良6型</td><td>肾消耗病</td><td>着色性干皮1型</td></tr>
<tr><td>大脑性瘫痪1型</td><td>角膜营养不良8型</td><td>肾消耗病11型</td><td>着色性干皮C组</td></tr>
<tr><td>大脑性瘫痪2型</td><td>角膜营养不良和感音性耳聋</td><td>肾消耗病12型</td><td>着色性干皮D组</td></tr>
<tr><td>大脑性瘫痪3型</td><td>脚分离畸形伴多趾</td><td>肾消耗病14型</td><td>着色性干皮E组</td></tr>
<tr><td>大疱单纯和肢体带型肌营养不良</td><td>酵母氨酸尿</td><td>肾消耗病15型</td><td>着色性干皮F组</td></tr>
<tr><td>大疱性表皮松解（棘层松解致死）</td><td>结肠癌</td><td>肾消耗病16型</td><td>着色性干皮G组</td></tr>
<tr><td>大疱性表皮松解伴幽门闭锁</td><td>结肠直肠癌12型</td><td>肾消耗病18型</td><td>着丝粒不稳定</td></tr>
<tr><td>大疱性表皮松解疱疹(Dowling-Meara型)</td><td>结合鞘脂不足</td><td>肾消耗病19型</td><td>真性红细胞增多症</td></tr>
<tr><td>大疱性鱼鳞病样红皮病</td><td>中央核肌病4型</td><td>肾消耗病1型</td><td>阵发性家族性室颤</td></tr>
<tr><td>大前庭水管综合征</td><td>中央核肌病5型</td><td>肾消耗病4型</td><td>阵发性家族性室颤2型</td></tr>
<tr><td>大头畸形，畸形相及精神运动性迟滞</td><td>中央轴空病</td><td>肾消耗病7型</td><td>阵发性剧痛症</td></tr>
<tr><td>大头畸形，巨大儿，面部畸形综合征</td><td>终端骨发育不良</td><td>肾消耗病8型</td><td>阵发性睡眠性血红蛋白尿1型</td></tr>
<tr><td>大头畸形，脱发，皮肤松弛，脊柱侧弯</td><td>终端乙酰胆碱酯酶不足</td><td>肾消耗病9型</td><td>阵发性睡眠性血红蛋白尿2型</td></tr>
<tr><td>大头畸形/自闭症综合征</td><td>重度情感障碍7型</td><td>肾消耗病样肾病1型</td><td>阵发性舞蹈手足徐动症</td></tr>
<tr><td>大头畸形多骨骺发育不良和独特的面相</td><td>重度抑郁症</td><td>肾小球病伴纤维蛋白沉积2型</td><td>支链酮酸脱氢酶激酶缺乏</td></tr>
<tr><td>代谢X综合征</td><td>重症X连锁肌小管肌病</td><td>肾小球囊肿病伴高尿酸血症和等渗尿</td><td>支气管扩张</td></tr>
<tr><td>单胺氧化酶A缺乏症</td><td>重症联合免疫缺陷(ADA缺陷)</td><td>肾性低尿酸血症2型</td><td>支气管扩张2型</td></tr>
<tr><td>单侧或双侧隐睾</td><td>重症联合免疫缺陷(AR，T细胞阴性​​，B细胞阳性，NK细胞阳性)</td><td>肾性尿崩症，X连锁</td><td>支气管扩张3型</td></tr>
<tr><td>单侧中切牙缺失</td><td>重症联合免疫缺陷(AR，T细胞阴性​​，B细胞阳性，NK细胞阴性)</td><td>肾性尿崩症，常染色体</td><td>肢带型肌营养不良2R型</td></tr>
<tr><td>单纯疱疹病毒性脑炎1型</td><td>重症联合免疫缺陷(电离辐射敏感性)</td><td>肾脏和泌尿道的先天性畸形1型</td><td>肢带型肌营养不良症</td></tr>
<tr><td>单纯疱疹病毒性脑炎3型</td><td>重症联合免疫缺陷(非典型)</td><td>渗出性玻璃体视网膜病变1型</td><td>肢带型肌营养不良症1A型</td></tr>
<tr><td>单纯疱疹病毒性脑炎4型</td><td>重症联合免疫缺陷(小头畸形，发育迟缓，电离辐射敏感性)</td><td>渗出性玻璃体视网膜病变4型</td><td>肢带型肌营养不良症1B型</td></tr>
<tr><td>单纯疱疹病毒性脑炎7型</td><td>重症免疫缺陷(AR，T细胞阴性​​，B细胞阴性，NK细胞阳性)</td><td>渗出性玻璃体视网膜病变5型</td><td>肢带型肌营养不良症1C型</td></tr>
<tr><td>单纯型大疱性表皮松解(AR 2型)</td><td>重症先天性中性粒细胞减少(AD)</td><td>渗出性玻璃体视网膜病变6型</td><td>肢带型肌营养不良症1E型</td></tr>
<tr><td>单纯型大疱性表皮松解(AR)</td><td>重症先天性中性粒细胞减少(X连锁)</td><td>生精功能衰竭(X连锁，2型)</td><td>肢带型肌营养不良症1G型</td></tr>
<tr><td>单纯型大疱性表皮松解（Cockayne-Touraine型）</td><td>重症先天性中性粒细胞减少2型(AD)</td><td>生精功能衰竭(Y连锁，2型)</td><td>肢带型肌营养不良症2A型</td></tr>
<tr><td>单纯型大疱性表皮松解（Koebner型）</td><td>重症先天性中性粒细胞减少3型(AR)</td><td>生精功能衰竭10型</td><td>肢带型肌营养不良症2B型</td></tr>
<tr><td>单纯型大疱性表皮松解（Ogna型）</td><td>重症先天性中性粒细胞减少4型(AR)</td><td>生精功能衰竭11型</td><td>肢带型肌营养不良症2D型</td></tr>
<tr><td>单纯型大疱性表皮松解伴迁移性漩涡状红斑</td><td>重症先天性中性粒细胞减少5型(AR)</td><td>生精功能衰竭12型</td><td>肢带型肌营养不良症2E型</td></tr>
<tr><td>单纯型大疱性表皮松解伴色素沉着</td><td>重症先天性中性粒细胞减少6型(AR)</td><td>生精功能衰竭13型</td><td>肢带型肌营养不良症2F型</td></tr>
<tr><td>单纯型大疱性表皮松解伴幽门闭锁</td><td>重症眼距增宽（面中部突出，近视，智力低下和骨质脆弱）</td><td>生精功能衰竭14型</td><td>肢带型肌营养不良症2G型</td></tr>
<tr><td>单纯型大疱性表皮松解伴指甲营养不良</td><td>重症婴儿型唾液酸贮积症</td><td>生精功能衰竭15型</td><td>肢带型肌营养不良症2J型</td></tr>
<tr><td>单纯型大疱性表皮松解痒疹</td><td>舟状头畸形，上颌后缩，智力低下</td><td>生精功能衰竭3型</td><td>肢带型肌营养不良症2L型</td></tr>
<tr><td>单纯型少毛症</td><td>周期性发热，月经周期依赖性</td><td>生精功能衰竭8型</td><td>肢带型肌营养不良症2Q型</td></tr>
<tr><td>单纯性腭裂</td><td>周期性中性粒细胞减少</td><td>生精功能衰竭9型</td><td>肢带型肌营养不良症2S型</td></tr>
<tr><td>单纯性生长激素缺乏症1B型</td><td>周围脊椎发育不良</td><td>生物素缺乏症</td><td>肢带型肌营养不良症C14型</td></tr>
<tr><td>单纯性问号耳</td><td>周围神经病变，肌病，声音嘶哑和听力损失</td><td>生长迟缓，发育迟缓，粗相，和过早死亡</td><td>肢带型肌营养不良症C1型</td></tr>
<tr><td>单纯性线粒体肌病，AD</td><td>周围神经病变脱髓鞘，中央髓鞘形成障碍，瓦登伯革氏症候群，先天性巨结肠症</td><td>生长和智力发育迟缓（下颌骨发育不全，小头​​畸形和唇腭裂）</td><td>肢带型肌营养不良症C2型</td></tr>
<tr><td>单纯性小眼畸形2型</td><td>轴后不足，轴后多趾和尿道下裂</td><td>生长激素不敏感免疫缺陷症</td><td>肢带型肌营养不良症C3型</td></tr>
<tr><td>单纯性小眼畸形3型</td><td>轴后多趾2型</td><td>生长激素缺乏症</td><td>肢带型肌营养不良症C4型</td></tr>
<tr><td>单纯性小眼畸形4型</td><td>轴后多趾4型</td><td>生长激素腺瘤</td><td>肢带型肌营养不良症C5型</td></tr>
<tr><td>单纯性小眼畸形5型</td><td>轴后多趾A1型</td><td>生殖系BAP1突变相关的肿瘤易感</td><td>肢带型肌营养不良症C7型</td></tr>
<tr><td>单纯性小眼畸形6型</td><td>轴后多趾A6型</td><td>石骨症（AD 1型）</td><td>肢带型肌营养不良症C9型</td></tr>
<tr><td>单纯性小眼畸形7型</td><td>皱梅腹综合征</td><td>石骨症（AD 2型）</td><td>肢端额鼻发育不全</td></tr>
<tr><td>单纯性小眼畸形8型</td><td>皱皮综合征</td><td>石骨症（AR 1型）</td><td>肢端发育不全（Cincinnati型）</td></tr>
<tr><td>单纯性小眼畸形伴眼缺损10型</td><td>竹叶骨发育不良</td><td>石骨症（AR 2型）</td><td>肢端发育不全1型</td></tr>
<tr><td>单纯性小眼畸形伴眼缺损3型</td><td>竹叶综合征</td><td>石骨症（AR 4型）</td><td>肢端发育不全2型</td></tr>
<tr><td>单纯性小眼畸形伴眼缺损5型</td><td>主动脉瓣病变2型</td><td>石骨症（AR 5型）</td><td>肢端中部发育不良（Hunter Thompson型）</td></tr>
<tr><td>单纯性小眼畸形伴眼缺损6型</td><td>主动脉瓣疾病</td><td>石骨症（AR 6型）</td><td>肢端中部发育不良(Maroteaux类型)</td></tr>
<tr><td>单纯性小眼畸形伴眼缺损7型</td><td>注意力缺陷多动障碍</td><td>石骨症（AR 7型）</td><td>肢根型点状软骨1型</td></tr>
<tr><td>单纯性小眼畸形伴眼缺损9型</td><td>注意力缺陷多动障碍7型</td><td>石骨症（AR 8型）</td><td>肢根型点状软骨2型</td></tr>
<tr><td>单独性促黄体激素缺乏症</td><td>转甲状腺素淀粉样变性</td><td>石骨症伴肾小管酸中毒</td><td>肢根型点状软骨3型</td></tr>
<tr><td>单核细胞和树突状细胞缺乏症</td><td>转醛醇酶缺乏症</td><td>食管恶性肿瘤</td><td>肢根型点状软骨5型</td></tr>
<tr><td>单羧酸转运1缺陷症</td><td>椎骨体扁平致死性骨骼发育不良（Torrance型）</td><td>视神经节缺损</td><td>肢体乳腺综合征</td></tr>
<tr><td>胆固醇单加氧酶缺乏症</td><td>椎间盘疾病</td><td>视神经萎缩10型</td><td>脂蛋白肾病</td></tr>
<tr><td>胆囊病变4型</td><td>锥杆营养不良</td><td>视神经萎缩1型</td><td>脂肪代谢障碍与先天性白内障和神经退行性病变</td></tr>
<tr><td>胆囊炎</td><td>锥杆营养不良、釉质生长不全</td><td>视神经萎缩7型</td><td>脂肪酸转移酶1缺陷</td></tr>
<tr><td>胆色素原合成酶缺乏症</td><td>锥杆营养不良10型</td><td>视神经萎缩9型</td><td>脂溢性角化症</td></tr>
<tr><td>胆汁酸吸收不良</td><td>锥杆营养不良11型</td><td>视神经萎缩白内障</td><td>脂质沉积性肌病</td></tr>
<tr><td>胆汁淤积3型</td><td>锥杆营养不良12型</td><td>视网膜动脉大动脉瘤伴瓣上肺动脉瓣狭窄</td><td>脂质蛋白沉积症</td></tr>
<tr><td>胆汁淤积5型</td><td>锥杆营养不良13型</td><td>视网膜动脉迂曲</td><td>直立不耐受</td></tr>
<tr><td>胆贮积症</td><td>锥杆营养不良15型</td><td>视网膜母细胞瘤</td><td>植入前胚胎致死</td></tr>
<tr><td>弹性假样病症（多个凝血因子缺乏）</td><td>锥杆营养不良16型</td><td>视网膜色素变性23型</td><td>植烷酸贮积症</td></tr>
<tr><td>弹性纤维假黄瘤</td><td>锥杆营养不良18型</td><td>视网膜色素变性2型</td><td>指(趾)间关节粘连-短指综合症</td></tr>
<tr><td>弹性纤维假黄瘤（不完全型）</td><td>锥杆营养不良19型</td><td>视网膜营养不良，虹膜缺损，以及粉刺痤疮综合征</td><td>指节垫，耳聋白甲综合征</td></tr>
<tr><td>蛋白S缺乏症</td><td>锥杆营养不良20型</td><td>视网膜营养不良，少年白内障和矮小症</td><td>致密性骨发育不全</td></tr>
<tr><td>蛋白尿伴高钙尿症和肾钙质沉着</td><td>锥杆营养不良21型</td><td>视网膜营养不良和肥胖</td><td>致命性脑病(缺陷线粒体和过氧化物酶体裂变)</td></tr>
<tr><td>蛋白质原转换酶1/3缺乏症</td><td>锥杆营养不良2型</td><td>视网膜营养不良和虹膜缺损伴或不先天性白内障</td><td>致死型腘翼状胬肉综合征</td></tr>
<tr><td>登革热病毒</td><td>锥杆营养不良3型</td><td>视网膜营养不良与内层视网膜功能障碍和神经节细胞异常</td><td>致死性Kniest样综合征</td></tr>
<tr><td>登特病1型</td><td>锥杆营养不良5型</td><td>视锥细胞全色盲</td><td>致死性多翼状胬肉综合征</td></tr>
<tr><td>登特病2型</td><td>锥杆营养不良6型</td><td>视锥细胞营养不良3型</td><td>致死性关节挛缩与前角细胞疾病</td></tr>
<tr><td>镫骨关节僵硬伴宽拇指和脚趾</td><td>锥杆营养不良7型</td><td>视锥细胞营养不良4型</td><td>致死性家族性失眠症</td></tr>
<tr><td>低蛋白血症</td><td>锥杆营养不良9型</td><td>视锥营养不良3A型</td><td>致死性紧密性肌肤挛缩症</td></tr>
<tr><td>低钙血症1型</td><td>锥杆营养不良X连锁1型</td><td>视锥营养不良3B型</td><td>致死性先天性挛缩症10型</td></tr>
<tr><td>低钾性周期性麻痹1型</td><td>锥杆营养不良X连锁3型</td><td>视锥营养不良4型</td><td>致死性先天性挛缩症1型</td></tr>
<tr><td>低钾性周期性麻痹2型</td><td>子宫肌瘤</td><td>室间隔缺损1型</td><td>致死性先天性挛缩症2型</td></tr>
<tr><td>低磷佝偻病（X连锁隐性）</td><td>子宫颈癌</td><td>室间隔缺损2型</td><td>致死性先天性挛缩症3型</td></tr>
<tr><td>低磷佝偻病2型</td><td>子宫内膜癌</td><td>室间隔缺损3型</td><td>致死性先天性挛缩症4型</td></tr>
<tr><td>低磷酸酯酶</td><td>紫外线敏感综合征</td><td>室性心动过速1型</td><td>致死性先天性挛缩症5型</td></tr>
<tr><td>低磷维生素D佝偻病</td><td>紫外线敏感综合征2型</td><td>室性心动过速2型</td><td>致死性先天性挛缩症6型</td></tr>
<tr><td>低磷性佝偻病</td><td>紫外线敏感综合征3型</td><td>室性心动过速4型</td><td>致死性先天性挛缩症7型</td></tr>
<tr><td>低磷性骨疾病</td><td>自闭症（X连锁1型）</td><td>室性心动过速5型</td><td>致死性先天性挛缩症8型</td></tr>
<tr><td>低镁血症，癫痫，智力低下</td><td>自闭症（X连锁2型）</td><td>嗜铬细胞瘤</td><td>致死性先天性挛缩症9型</td></tr>
<tr><td>低密度脂蛋白胆固醇数量性状位点6型</td><td>自闭症（X连锁3型）</td><td>嗜酸性粒细胞过氧化酶缺乏</td><td>致心律失常性右室心肌病10型</td></tr>
<tr><td>低色素性贫血与铁超负荷</td><td>自闭症（X连锁5型）</td><td>手/足分离畸形1型</td><td>致心律失常性右室心肌病11型</td></tr>
<tr><td>低色素性贫血与铁超负荷2型</td><td>自闭症15型</td><td>手/足分离畸形4型</td><td>致心律失常性右室心肌病12型</td></tr>
<tr><td>低血糖，肝脏中糖原合成酶缺乏</td><td>自闭症16型</td><td>手/足分离畸形6型</td><td>致心律失常性右室心肌病5型</td></tr>
<tr><td>狄兰氏症候群1型</td><td>自闭症17型</td><td>手指关节病</td><td>致心律失常性右室心肌病8型</td></tr>
<tr><td>狄兰氏症候群3型</td><td>自闭症18型</td><td>手足子宫综合征</td><td>致心律失常性右室心肌病9型</td></tr>
<tr><td>狄兰氏症候群4型</td><td>自闭症19型</td><td>瘦素受体缺陷</td><td>致心律失常性右心室发育不良13型</td></tr>
<tr><td>骶骨发育不全椎体畸形</td><td>自闭症谱系障碍</td><td>树突状细胞，单核细胞，B细胞和自然杀伤细胞缺乏症</td><td>致心律失常性右心室发育不良1型</td></tr>
<tr><td>骶缺陷前壁膨出</td><td>自身免疫性疾病1型</td><td>双侧多囊性肾发育不良</td><td>致心律失常性右心室发育不良2型</td></tr>
<tr><td>癫痫（X连锁，带有可变学习障碍和行为障碍）</td><td>自身免疫性疾病6型</td><td>双侧额顶多小脑回</td><td>窒息性腔部营养不良2型</td></tr>
<tr><td>癫痫（侧颞叶）</td><td>自身免疫性疾病多系统综合征</td><td>双侧视神经发育不全</td><td>窒息性腔部营养不良4型</td></tr>
<tr><td>癫痫（家族性颞叶5型）</td><td>自身免疫性甲状腺疾病3型</td><td>双侧枕叶多小脑回</td><td>窒息性腔部营养不良5型</td></tr>
<tr><td>癫痫（家族性颞叶7型）</td><td>自身免疫性间质性肺，关节和肾脏疾病</td><td>双功能过氧化物酶缺乏</td><td>智力低下，Cabezas型，X连锁</td></tr>
<tr><td>癫痫（家族性颞叶8型）</td><td>自身免疫性淋巴细胞增生综合征</td><td>双行睫淋巴水肿综合征</td><td>智力低下，Nascimento型，X连锁</td></tr>
<tr><td>癫痫（青少年肌阵挛5型）</td><td>自身免疫性淋巴细胞增生综合征1b型</td><td>双外侧裂多小脑回，常染色体隐性遗传</td><td>智力发育迟钝性血磷酸酯酶过多</td></tr>
<tr><td>癫痫（夜间额叶，1型）</td><td>自身免疫性淋巴细胞增生综合征2型</td><td>水肿，乳酸酸中毒，铁粒幼细胞性贫血</td><td>智力发育迟缓综合征（无泪，贲门失弛缓症）</td></tr>
<tr><td>癫痫（夜间额叶，3型）</td><td>自身免疫性淋巴细胞增生综合征5型</td><td>睡眠觉醒周期紊乱，延迟期型</td><td>中风1型</td></tr>
<tr><td>癫痫（夜间额叶，4型）</td><td>自身炎症反应（Behcet-like）</td><td>四肢对称性色素异常症</td><td>中链酰基辅酶A脱氢酶缺乏症</td></tr>
<tr><td>癫痫（夜间额叶，5型）</td><td>自身炎症反应（PLCG2相关）</td><td>松果体增生和糖尿病综合征</td><td>中枢神经系统海绵状变性</td></tr>
<tr><td>癫痫，脊柱侧弯，和大头畸形综合征</td><td>自身炎症反应（婴儿小肠结肠炎）</td><td>酸性磷酸酶缺乏症</td><td>中枢性性早熟</td></tr>
<tr><td>癫痫，听力丧失，智力发育迟缓综合征</td><td>足底脂肪过多症，畸相，发育迟缓</td><td>酸易分解亚基缺乏</td><td>中性1氨基酸转运缺陷</td></tr>
<tr><td>癫痫伴觉醒癫痫大发作</td><td>组氨酸血症</td><td>髓过氧化物酶缺乏症</td><td>中性粒细胞性免疫缺陷综合征</td></tr>
<tr><td>癫痫病（家族性成人肌阵挛2型）</td><td>组织细胞增生症和淋巴结肿大综合征</td><td>髓母细胞瘤</td><td>中央核肌病</td></tr>
<tr><td>癫痫病（家族性成人肌阵挛5型）</td><td>左心室致密化不全10型</td><td>髓鞘脑白质营养不良7型</td><td>中央核肌病1型</td></tr>
<tr><td>左心室致密化不全6型</td><td>左心室致密化不全7型</td><td>左心室致密化不全8型</td><td></td></tr>
</table>
<table id="table1_1" style="display: none;">
<tr><td>Endocrine-cerebro-osteodysplasia综合征</td><td>癫痫渐进性肌阵挛10型</td><td>结合氧化磷酸化缺陷症10型</td><td>髓鞘形成减少伴脑干和脊髓受累和腿部痉挛</td></tr>
<tr><td>Herlitz型交界大疱性表皮松解</td><td>癫痫渐进性肌阵挛3型</td><td>结合氧化磷酸化缺陷症11型</td><td>髓鞘形成减少先天性白内障</td></tr>
<tr><td>15q13.3微缺失综合征</td><td>癫痫渐进性肌阵挛4型</td><td>结合氧化磷酸化缺陷症12型</td><td>髓性网状细胞增生症</td></tr>
<tr><td>1q21.1微缺失综合征</td><td>癫痫渐进性肌阵挛5型</td><td>结合氧化磷酸化缺陷症13型</td><td>髓质囊肾病1型</td></tr>
<tr><td>1型糖尿病</td><td>癫痫渐进性肌阵挛6型</td><td>结合氧化磷酸化缺陷症14型</td><td>髓质囊肾病2型</td></tr>
<tr><td>2,4-二烯醇基-辅酶A还原酶缺乏症</td><td>癫痫渐进性肌阵挛7型</td><td>结合氧化磷酸化缺陷症15型</td><td>羧化全酶合成不足</td></tr>
<tr><td>21-羟化酶缺乏</td><td>癫痫渐进性肌阵挛8型</td><td>结合氧化磷酸化缺陷症16型</td><td>锁骨颅骨发育不全</td></tr>
<tr><td>21三体综合征</td><td>癫痫渐进性肌阵挛9型</td><td>结合氧化磷酸化缺陷症17型</td><td>他汀类药物介导型肌病</td></tr>
<tr><td>22q13.3缺失综合征</td><td>癫痫性脑病（儿童期发病）</td><td>结合氧化磷酸化缺陷症18型</td><td>胎儿宫内发育迟缓，干骺端发育不良，肾上腺先天性发育不良，生殖器畸形</td></tr>
<tr><td>2-甲基-3-羟基丙二酸尿症</td><td>点状软骨1型</td><td>结合氧化磷酸化缺陷症19型</td><td>胎粪性肠梗阻</td></tr>
<tr><td>2-甲基丁酰辅酶A脱氢酶缺乏症</td><td>点状软骨2型</td><td>结合氧化磷酸化缺陷症1型</td><td>碳水化合物缺乏糖蛋白综合征</td></tr>
<tr><td>2型糖尿病</td><td>碘过氧化物酶缺乏症</td><td>结合氧化磷酸化缺陷症20型</td><td>碳水化合物缺乏糖蛋白综合征2型</td></tr>
<tr><td>3M综合征1型</td><td>碘酪氨酸脱碘缺陷</td><td>结合氧化磷酸化缺陷症21型</td><td>糖基化不足</td></tr>
<tr><td>3M综合征2型</td><td>碘酪胺酰偶联缺陷</td><td>结合氧化磷酸化缺陷症22型</td><td>糖尿病、尿崩症伴视神经萎缩、耳聋</td></tr>
<tr><td>3M综合征3型</td><td>丁酰辅酶A脱氢酶缺乏症</td><td>结合氧化磷酸化缺陷症23型</td><td>糖尿病非胰岛素依赖型1型</td></tr>
<tr><td>3-β-羟基脱氢酶缺乏症</td><td>顶叶椎间孔</td><td>结合氧化磷酸化缺陷症24型</td><td>糖尿病非胰岛素依赖型5型</td></tr>
<tr><td>3-甲基巴豆辅酶A羧化酶2缺乏</td><td>顶叶椎间孔2型</td><td>结合氧化磷酸化缺陷症25型</td><td>糖尿病酮症倾向型</td></tr>
<tr><td>3-甲基戊烯二酸尿症</td><td>顶叶椎间孔与锁骨颅骨发育不良</td><td>结合氧化磷酸化缺陷症26型</td><td>糖尿病微血管并发症1型</td></tr>
<tr><td>3-甲基戊烯二酸尿症（白内障，神经系统受累，中性粒细胞减少）</td><td>动脉导管未闭2型</td><td>结合氧化磷酸化缺陷症27型</td><td>糖尿病微血管并发症2型</td></tr>
<tr><td>3-甲基戊烯二酸尿症（耳聋，脑病，和Leigh样综合征）</td><td>动脉导管未闭3型</td><td>结合氧化磷酸化缺陷症28型</td><td>糖尿病微血管并发症3型</td></tr>
<tr><td>3-甲基戊烯二酸尿症2型</td><td>动脉迂曲综合征</td><td>结合氧化磷酸化缺陷症29型</td><td>糖尿病微血管并发症4型</td></tr>
<tr><td>3-甲基戊烯二酸尿症3型</td><td>冻疮样狼疮1型</td><td>结合氧化磷酸化缺陷症2型</td><td>糖尿病微血管并发症5型</td></tr>
<tr><td>3-甲基戊烯二酸尿症V型</td><td>冻疮样狼疮2型</td><td>结合氧化磷酸化缺陷症3型</td><td>糖尿病微血管并发症6型</td></tr>
<tr><td>3-羟酰-CoA脱氢酶缺乏症</td><td>窦房结功能障碍和耳聋</td><td>结合氧化磷酸化缺陷症4型</td><td>糖尿病微血管并发症7型</td></tr>
<tr><td>3-氧代-5-α-类固醇-4-脱氢酶缺乏症</td><td>杜氏肌营养不良症</td><td>结合氧化磷酸化缺陷症5型</td><td>糖尿病胰岛素依赖型10型</td></tr>
<tr><td>5q综合征</td><td>短QT综合征3型</td><td>结核分枝杆菌易感</td><td>糖尿病胰岛素依赖型2型</td></tr>
<tr><td>5-羟脯氨酸酶缺乏症</td><td>短轨枕</td><td>结节病1型</td><td>糖尿病胰岛素依赖型5型</td></tr>
<tr><td>6-丙酮酰-四氢蝶呤合成酶缺乏症</td><td>短脊椎发育异常</td><td>结节病2型</td><td>糖皮质激素不足2型</td></tr>
<tr><td>9Q染色体缺失综合征</td><td>短肋多指畸形综合征5型</td><td>结节肾上腺皮质增生症2型</td><td>糖皮质激素不足4型</td></tr>
<tr><td>ⅩⅢ因子a亚基缺乏症</td><td>短肋多指畸形综合征6型</td><td>结节性硬化症1型</td><td>糖皮质激素缺乏伴贲门失弛缓症</td></tr>
<tr><td>ⅩⅢ因子B亚基缺乏症</td><td>短肋多趾症，Majewski型</td><td>结节性硬化症2型</td><td>糖原贮积病13型</td></tr>
<tr><td>Aarskog综合征</td><td>短肋胸廓发育不良10型</td><td>结直肠癌10型</td><td>糖原贮积病Ⅲ型</td></tr>
<tr><td>Aase综合征</td><td>短肋胸廓发育不良11型</td><td>结直肠癌1型</td><td>糖原贮积病Ⅶ型</td></tr>
<tr><td>ABCD综合症</td><td>短肋胸廓发育不良13型</td><td>结直肠癌3型</td><td>糖原贮积病II型</td></tr>
<tr><td>Abruzzo Erickson综合征</td><td>短肋胸廓发育不良14型</td><td>进行性核上性眼肌麻痹</td><td>糖原贮积病IXa1型</td></tr>
<tr><td>Acrocallosal综合征(Schinzel型)</td><td>短指A1c型</td><td>进行性家族性肝内胆汁淤积2型</td><td>糖原贮积病Ixb型</td></tr>
<tr><td>Acroerythrokeratoderma</td><td>短指A1d型</td><td>进行性家族性肝内胆汁淤积3型</td><td>糖原贮积病IXC型</td></tr>
<tr><td>Acromicric发育不良</td><td>短指A1型</td><td>进行性家族性肝内胆汁淤积4型</td><td>糖原贮积病IXD型</td></tr>
<tr><td>Adams-Oliver综合征1型</td><td>短指A2型</td><td>进行性家族性心脏传导阻滞1A型</td><td>糖原贮积病VI型</td></tr>
<tr><td>Adams-Oliver综合征2型</td><td>短指B1型</td><td>进行性家族性心脏传导阻滞1B型</td><td>糖原贮积病V型</td></tr>
<tr><td>Adams-Oliver综合征3型</td><td>短指B2型</td><td>进行性假性类风湿发育不良症</td><td>糖原贮积病XI型</td></tr>
<tr><td>Adams-Oliver综合征4型</td><td>短指C型</td><td>进行性脑白质病</td><td>糖原贮积病XV型</td></tr>
<tr><td>Adams-Oliver综合征5型</td><td>短指D型</td><td>神经性耳聋肾小管性酸中毒</td><td>糖原贮积病X型</td></tr>
<tr><td>Adams-Oliver综合征6型</td><td>短指E1型</td><td>进行性眼外肌麻痹线粒体DNA缺失1型</td><td>糖原贮积症1A型</td></tr>
<tr><td>ADULT综合征</td><td>短指E2型</td><td>进行性眼外肌麻痹线粒体DNA缺失2型</td><td>糖原贮积症IV型</td></tr>
<tr><td>Aicardi Goutieres综合征1型</td><td>短指伴高血压</td><td>进行性眼外肌麻痹线粒体DNA缺失3型</td><td>特发性基底节钙化1型</td></tr>
<tr><td>Aicardi Goutieres综合征2型</td><td>短指并指畸形综合征</td><td>进行性眼外肌麻痹线粒体DNA缺失4型</td><td>特发性基底节钙化4型</td></tr>
<tr><td>Aicardi Goutieres综合征3型</td><td>多巴胺羟化酶缺陷症</td><td>进行性眼外肌麻痹线粒体DNA缺失5型</td><td>特发性基底节钙化5型</td></tr>
<tr><td>Aicardi Goutieres综合征4型</td><td>多动脉炎结节</td><td>进眼外肌麻痹与线粒体DNA缺失6型</td><td>特发性基底节钙化6型</td></tr>
<tr><td>Aicardi Goutieres综合征5型</td><td>多发性骨骺发育不良（显性）</td><td>近端肾小管性酸中毒（眼部畸形和智力低下）</td><td>特发性敏感性癫痫病14型</td></tr>
<tr><td>Aicardi Goutieres综合征6型</td><td>多发性骨骺发育不良1型</td><td>近端指(趾)间关节粘连1B型</td><td>特发性普遍型癫痫病10型</td></tr>
<tr><td>Aicardi Goutieres综合征7型</td><td>多发性骨骺发育不良2型</td><td>近视眼21型</td><td>特发性普遍型癫痫病8型</td></tr>
<tr><td>AICAR甲酰转移酶/IMP环水解酶不足</td><td>多发性骨骺发育不良3型</td><td>近视眼22型</td><td>特发性普遍型癫痫病9型</td></tr>
<tr><td>Alagille综合征1型</td><td>多发性骨骺发育不良4型</td><td>近视眼23型</td><td>特发性肾病综合征（激素抗性）</td></tr>
<tr><td>Alagille综合征2型</td><td>多发性骨骺发育不良5型</td><td>近视眼24型</td><td>特发性嗜酸细胞增多症</td></tr>
<tr><td>Alazami综合征</td><td>多发性骨骺发育不良6型</td><td>近视眼6型</td><td>特发性网状青斑累及全身</td></tr>
<tr><td>Alexander病</td><td>多发性骨髓瘤</td><td>经典卡波西肉瘤</td><td>特发性血小板减少性紫癜</td></tr>
<tr><td>Allan-Herndon-Dudley综合征</td><td>多发性骨性联接综合征2型</td><td>惊跳症2型</td><td>特异性颗粒缺陷</td></tr>
<tr><td>Alport综合征（AD）</td><td>多发性骨性联接综合征3型</td><td>惊跳症3型</td><td>特异性语言障碍5型</td></tr>
<tr><td>Alport综合征（AR）</td><td>多发性关节脱位，身材矮小，颅面异形和先天性心脏缺陷</td><td>晶状角膜营养不良3A型</td><td>特应性IgE应答</td></tr>
<tr><td>Alport综合征（X连锁隐性）</td><td>多发性基底细胞癌</td><td>晶状角膜营养不良III型</td><td>天冬氨酰葡糖胺尿</td></tr>
<tr><td>AL-RAQAD综合征</td><td>多发性硫酸酯酶缺乏症</td><td>晶状角膜营养不良I型</td><td>天冬酰胺合成酶不足</td></tr>
<tr><td>Alstrom综合征</td><td>多发性内分泌瘤形成综合征</td><td>晶状体及瞳孔异位</td><td>条纹状骨病颅硬化症</td></tr>
<tr><td>Amish婴儿癫痫综合征</td><td>多发性内分泌瘤形成综合征1型</td><td>晶状体异位(AD)</td><td>铁粒幼贫血3型</td></tr>
<tr><td>Amish致死性畸形</td><td>多发性内分泌腺瘤1型</td><td>晶状体异位(AR)</td><td>铁粒幼细胞贫血（脊髓小脑性共济失调）</td></tr>
<tr><td>Anauxetic发育不良</td><td>多发性内分泌腺瘤2A型</td><td>晶状体异位(自发滤过泡，和颅面异形)</td><td>铁粒幼细胞贫血B细胞免疫缺陷，周期性发热，发育迟缓</td></tr>
<tr><td>Andermann综合征</td><td>多发性内分泌腺瘤2B型</td><td>精氨基​​琥珀酸裂解酶缺乏症</td><td>铁氧化酶缺乏症</td></tr>
<tr><td>Angelman样综合征</td><td>多发性内分泌腺瘤4型</td><td>精氨酸甘氨酸脒基转移酶不足</td><td>听觉神经病变</td></tr>
<tr><td>Angelman综合征</td><td>多发性皮肤粘膜和静脉畸形</td><td>精氨酸酶缺乏症</td><td>同型半胱氨酸（MTHFR缺乏）</td></tr>
<tr><td>Anhaptoglobinemia</td><td>多发性溶骨性病变，nodulosis和关节病</td><td>精神发育迟滞（ARX相关，有或无癫痫，X连锁）</td><td>头部和颈部鳞状细胞癌</td></tr>
<tr><td>Antley-Bixler综合征（生殖器异常）</td><td>多发性溶骨性肾病</td><td>精神发育迟滞（fra12a类型）</td><td>头发稀疏和毛细血管扩张性肾小球肾炎</td></tr>
<tr><td>Antley-Bixler综合征（生殖器正常）</td><td>多发性神经病，听力减退，共济失调，色素性视网膜炎，白内障</td><td>精神发育迟滞（X连锁100型）</td><td>头发形态1型</td></tr>
<tr><td>Arts综合征</td><td>多发性外生骨疣2型</td><td>精神发育迟滞（X连锁101型）</td><td>头皮耳乳头综合征</td></tr>
<tr><td>Asperger综合征</td><td>多发性胃肠萎缩</td><td>精神发育迟滞（X连锁102型）</td><td>透明纤维瘤病综合征</td></tr>
<tr><td>Asperger综合征2型</td><td>多发性先天性异常，肌张力低下，癫痫综合征1型</td><td>精神发育迟滞（X连锁12型）</td><td>透明质酸氨基葡糖苷酶缺乏症</td></tr>
<tr><td>Athabaskan脑干发育不全</td><td>多发性先天性异常，肌张力低下，癫痫综合征2型</td><td>精神发育迟滞（X连锁19型）</td><td>图案状中心凹色素上皮营养不良</td></tr>
<tr><td>ATR-X综合征</td><td>多发性先天性异常，肌张力低下，癫痫综合征3型</td><td>精神发育迟滞（X连锁1型）</td><td>腿畸形伴先天性白内障</td></tr>
<tr><td>AU-KLINE综合征</td><td>多发性纤维性毛囊瘤</td><td>精神发育迟滞（X连锁45型）</td><td>脱发性毛发角化病</td></tr>
<tr><td>Avellino角膜营养不良</td><td>多发性线粒体功能障碍综合征1型</td><td>精神发育迟滞（X连锁61型）</td><td>脱皮伴白甲（肢端点状角化病，唇炎，和指节垫皮肤）</td></tr>
<tr><td>Axenfeld-Rieger 综合征1型</td><td>多发性线粒体功能障碍综合征2型</td><td>精神发育迟滞（X连锁93型）</td><td>脱皮综合征</td></tr>
<tr><td>Axenfeld-Rieger 综合征3型</td><td>多发性线粒体功能障碍综合征3型</td><td>精神发育迟滞（X连锁96型）</td><td>脱皮综合征（肢端型）</td></tr>
<tr><td>Azores病</td><td>多发性线粒体功能障碍综合征4型</td><td>精神发育迟滞（X连锁98型）</td><td>脱皮综合征3型</td></tr>
<tr><td>Bainbridge-Ropers综合征</td><td>多发性修复性鳞状上皮瘤</td><td>精神发育迟滞（X连锁99型）</td><td>椭圆形红细胞性贫血1型</td></tr>
<tr><td>Baller-Gerold综合征</td><td>多发性翼状胬肉综合征Escobar型</td><td>精神发育迟滞（低渗相综合征X连锁1型）</td><td>椭圆形红细胞性贫血2型</td></tr>
<tr><td>Bamforth综合征</td><td>多发性硬化5型</td><td>精神发育迟滞,动作刻板，癫痫和/或脑畸形</td><td>唾液酸II型</td></tr>
<tr><td>Bannayan-Riley-Ruvalcaba综合征</td><td>多发性硬化症</td><td>精神发育迟滞，前上颌前突，和斜视</td><td>唾液酸酶和β-半乳糖苷酶联合缺陷症</td></tr>
<tr><td>Baraitser-Winter综合症1型</td><td>多发性脂囊瘤</td><td>精神发育迟滞10型，AD</td><td>唾液腺多形性腺瘤</td></tr>
<tr><td>Baraitser-Winter综合症2型</td><td>多汗症1型</td><td>精神发育迟滞11型，AD</td><td>瓦登伯革氏症候群1型</td></tr>
<tr><td>Barakat综合征</td><td>多汗症2型</td><td>精神发育迟滞12型，AD</td><td>瓦登伯革氏症候群2A型</td></tr>
<tr><td>Barber-Say综合征</td><td>多汗症3</td><td>精神发育迟滞13型，AD</td><td>瓦登伯革氏症候群2D型</td></tr>
<tr><td>Bardet-Biedl综合征</td><td>多可凝集性红细胞综合征</td><td>精神发育迟滞13型，AR</td><td>瓦登伯革氏症候群2E型</td></tr>
<tr><td>Bardet-Biedl综合征10型</td><td>多毛，精神发育迟滞，侏儒症和视网膜色素变性</td><td>精神发育迟滞14型，AD</td><td>瓦登伯革氏症候群4A型</td></tr>
<tr><td>Bardet-Biedl综合征11型</td><td>多毛症</td><td>精神发育迟滞14型，AR</td><td>瓦登伯革氏症候群4B型</td></tr>
<tr><td>Bardet-Biedl综合征12型</td><td>多囊肝2型</td><td>精神发育迟滞15型，AD</td><td>瓦登伯革氏症候群4C型</td></tr>
<tr><td>Bardet-Biedl综合征13型</td><td>多囊卵巢伴硬化性白质脑病</td><td>精神发育迟滞15型，AR</td><td>外侧多小脑回伴小脑发育不全及关节挛缩</td></tr>
<tr><td>Bardet-Biedl综合征14型</td><td>多囊肾（成人型）</td><td>精神发育迟滞16型，AD</td><td>外胚层发育不良(“纯”毛钉型)</td></tr>
<tr><td>Bardet-Biedl综合征15型</td><td>多囊肾（婴儿型）</td><td>精神发育迟滞17型，AD</td><td>外胚层发育不良(无汗性，T细胞免疫缺陷，AD)</td></tr>
<tr><td>Bardet-Biedl综合征16型</td><td>多囊肾2型</td><td>精神发育迟滞18型，AD</td><td>外胚层发育不良(无汗性，免疫缺陷，骨硬化病，淋巴水肿)</td></tr>
<tr><td>Bardet-Biedl综合征17型</td><td>多囊肾3型</td><td>精神发育迟滞18型，AR</td><td>外胚层发育不良/矮小综合征</td></tr>
<tr><td>Bardet-Biedl综合征18型</td><td>多内分泌腺病，神经病综合征</td><td>精神发育迟滞19型，AD</td><td>外胚层发育不良11A型</td></tr>
<tr><td>Bardet-Biedl综合征19型</td><td>多微小轴空病</td><td>精神发育迟滞1型，AD</td><td>外胚层发育不良11B型</td></tr>
<tr><td>Bardet-Biedl综合征2型</td><td>多系统平滑肌功能障碍综合征</td><td>精神发育迟滞1型，AR</td><td>外胚层发育不良7型</td></tr>
<tr><td>Bardet-Biedl综合征3型</td><td>多系统小儿型神经，内分泌和胰腺疾病</td><td>精神发育迟滞21型，AD</td><td>外胚层发育不良9型</td></tr>
<tr><td>Bardet-Biedl综合征4型</td><td>多腺体自身免疫综合征1型</td><td>精神发育迟滞21型，X连锁</td><td>外胚层发育不良Hay-Wells综合征</td></tr>
<tr><td>Bardet-Biedl综合征5型</td><td>多小脑回伴癫痫</td><td>精神发育迟滞23型，AD</td><td>外胚层发育不良并指畸形综合征1型</td></tr>
<tr><td>Bardet-Biedl综合征6型</td><td>多小脑回钙化</td><td>精神发育迟滞24型，AD</td><td>外胚层发育不良皮肤脆弱性综合征</td></tr>
<tr><td>Bardet-Biedl综合征7型</td><td>多小脑回视神经发育不全</td><td>精神发育迟滞26型，AD</td><td>弯骨发育不良综合征</td></tr>
<tr><td>Bardet-Biedl综合征8型</td><td>多形性后角膜营养不良1型</td><td>精神发育迟滞27型，AD</td><td>烷醇症</td></tr>
<tr><td>Bardet-Biedl综合征9型</td><td>多形性后角膜营养不良3型</td><td>精神发育迟滞27型，AR</td><td>腕管综合症</td></tr>
<tr><td>Barrett食管</td><td>多种物质滥用</td><td>精神发育迟滞28型，AD</td><td>网状色素皮病</td></tr>
<tr><td>Bartter综合征1型</td><td>多重骨骺发育不良伴近视和传导性耳聋</td><td>精神发育迟滞29型，AD</td><td>网状色素性疾病</td></tr>
<tr><td>Bartter综合征2型</td><td>额鼻发育不良1型</td><td>精神发育迟滞2型，AD</td><td>网状组织发育不全</td></tr>
<tr><td>Bartter综合征3型</td><td>额鼻发育不良2型</td><td>精神发育迟滞2型，AR</td><td>维生素D羟化缺乏性佝偻病1b型</td></tr>
<tr><td>Bartter综合征4B型</td><td>额鼻发育不良3型</td><td>精神发育迟滞30型，AD</td><td>维生素D依赖性佝偻病1型</td></tr>
<tr><td>Bartter综合征4型</td><td>额骨骺发育异常</td><td>精神发育迟滞30型，X连锁</td><td>维生素D依赖性佝偻病2型</td></tr>
<tr><td>Bartter综合征5型</td><td>额颞叶痴呆</td><td>精神发育迟滞31型，AD</td><td>维生素K依赖性凝血因子结合缺乏症1型</td></tr>
<tr><td>Basel-Vanagaite-Smirin-Yosef综合征</td><td>额颞叶痴呆（3号染色体相关）</td><td>精神发育迟滞32型，AD</td><td>维生素K依赖性凝血因子结合缺乏症2型</td></tr>
<tr><td>Beaulieu-Boycott-Innes综合征</td><td>额颞叶痴呆（泛素阳性）</td><td>精神发育迟滞33型，AD</td><td>伪血管性血友病</td></tr>
<tr><td>Becker型肌营养不良</td><td>额颞叶性痴呆和/或肌萎缩性侧索硬化</td><td>精神发育迟滞34型，AD</td><td>尾侧重复畸形</td></tr>
<tr><td>Beckwith-Wiedemann综合征</td><td>额颞叶性痴呆和/或肌萎缩性侧索硬化2型</td><td>精神发育迟滞34型，AR</td><td>胃肠道间质瘤</td></tr>
<tr><td>Best病</td><td>额颞叶性痴呆和/或肌萎缩性侧索硬化3型</td><td>精神发育迟滞35型，AD</td><td>胃淋巴瘤</td></tr>
<tr><td>Bethlem肌病</td><td>额颞叶性痴呆和/或肌萎缩性侧索硬化4型</td><td>精神发育迟滞36型，AD</td><td>胃肿瘤</td></tr>
<tr><td>Bethlem肌病2型</td><td>恶性高热易感1型</td><td>精神发育迟滞36型，AR</td><td>纹状体变性</td></tr>
<tr><td>Bietti晶体角膜视网膜营养不良</td><td>恶性高热易感5型</td><td>精神发育迟滞37型，AD</td><td>纹状体变性2型</td></tr>
<tr><td>Birbeck颗粒缺乏</td><td>恶性间皮瘤</td><td>精神发育迟滞37型，AR</td><td>纹状体坏死，渐进性多发性神经病</td></tr>
<tr><td>Birk Barel精神发育迟滞畸形综合征</td><td>腭裂（精神运动迟缓和五官异常）</td><td>精神发育迟滞38型，AD</td><td>无β脂蛋白血症</td></tr>
<tr><td>Blau综合征</td><td>儿​童癫痫2型</td><td>精神发育迟滞38型，AR</td><td>无白蛋白血症</td></tr>
<tr><td>Bloom综合征</td><td>儿​童癫痫5型</td><td>精神发育迟滞39型，AD</td><td>无丙种球蛋白血症（非Bruton型）</td></tr>
<tr><td>Boomerang发育不良</td><td>儿​童癫痫6型</td><td>精神发育迟滞39型，AR</td><td>无丙种球蛋白血症2型</td></tr>
<tr><td>Borjeson-Forssman-Lehmann综合征</td><td>儿童交替性偏瘫1型</td><td>精神发育迟滞3型，AD</td><td>无丙种球蛋白血症3型</td></tr>
<tr><td>Bosch-Boonstra-Schaaf视神经萎缩症</td><td>儿童交替性偏瘫2型</td><td>精神发育迟滞3型，AR</td><td>无丙种球蛋白血症4型</td></tr>
<tr><td>Bothnia视网膜营养不良</td><td>儿童磷酸酶过低症</td><td>精神发育迟滞3型，X连锁</td><td>无丙种球蛋白血症5型</td></tr>
<tr><td>Boucher Neuhauser综合征</td><td>耳腭面部综合征II型</td><td>精神发育迟滞40型，AD</td><td>无丙种球蛋白血症6型</td></tr>
<tr><td>Bowen-Conradi综合征</td><td>耳聋 (AD 1型)</td><td>精神发育迟滞40型，AR</td><td>无丙种球蛋白血症7型</td></tr>
<tr><td>Branchiooculofacial综合征</td><td>耳聋(AD 10型）</td><td>精神发育迟滞41型，AR</td><td>无丙种球蛋白血症8型</td></tr>
<tr><td>Branchiootic综合征</td><td>耳聋(AD 11型）</td><td>精神发育迟滞42型，AR</td><td>无过氧化氢酶血症</td></tr>
<tr><td>Branchiootic综合征3型</td><td>耳聋(AD 12型）</td><td>精神发育迟滞43型，AD</td><td>无汗性外胚层发育不良免疫缺陷</td></tr>
<tr><td>Brody肌病</td><td>耳聋(AD 13型）</td><td>精神发育迟滞43型，AR</td><td>无睑-巨口综合征</td></tr>
<tr><td>Brown-Vialetto-Van Laere综合征1型</td><td>耳聋(AD 15型）</td><td>精神发育迟滞44型，AR</td><td>无脸症1型</td></tr>
<tr><td>Brown-Vialetto-Van Laere综合征2型</td><td>耳聋(AD 17型）</td><td>精神发育迟滞45型，AR</td><td>无脸症2型</td></tr>
<tr><td>Bruck综合征1型</td><td>耳聋(AD 20型）</td><td>精神发育迟滞46型，AR</td><td>无脉络膜症</td></tr>
<tr><td>Bruck综合征2型</td><td>耳聋(AD 22型）</td><td>精神发育迟滞46型，X连锁</td><td>无毛症伴丘疹性损害</td></tr>
<tr><td>Brugada综合征1型</td><td>耳聋(AD 23型）</td><td>精神发育迟滞47型，AR</td><td>无脑回畸形，X连锁</td></tr>
<tr><td>Brugada综合征2型</td><td>耳聋(AD 25型）</td><td>精神发育迟滞48型，AR</td><td>无脑回畸形1型</td></tr>
<tr><td>Brugada综合征3型</td><td>耳聋(AD 28型）</td><td>精神发育迟滞49型，AR</td><td>无脑回畸形2型</td></tr>
<tr><td>Brugada综合征4型</td><td>耳聋(AD 2B型）</td><td>精神发育迟滞49型，X连锁</td><td>无脑回畸形2型，X连锁</td></tr>
<tr><td>Brugada综合征5型</td><td>耳聋(AD 36型）</td><td>精神发育迟滞4型，AD</td><td>无脑回畸形3型</td></tr>
<tr><td>Brugada综合征6型</td><td>耳聋(AD 39型）</td><td>精神发育迟滞50型，AR</td><td>无脑回畸形4型</td></tr>
<tr><td>Brugada综合征7型</td><td>耳聋(AD 3A型）</td><td>精神发育迟滞51型，AR</td><td>无脑回畸形5型</td></tr>
<tr><td>Brugada综合征8型</td><td>耳聋(AD 3B型）</td><td>精神发育迟滞52型，AR</td><td>无脑回畸形6型</td></tr>
<tr><td>Brugada综合征9型</td><td>耳聋(AD 40型）</td><td>精神发育迟滞53型，AR</td><td>无脑回畸形7型伴小脑发育不全</td></tr>
<tr><td>Budd-Chiari综合征</td><td>耳聋(AD 41型）</td><td>精神发育迟滞54型，AR</td><td>无手足畸形</td></tr>
<tr><td>Bullous眼黄斑营养不良</td><td>耳聋(AD 44型）</td><td>精神发育迟滞55型，AR</td><td>无血小板减少症贫血（X连锁）</td></tr>
<tr><td>Burkitt淋巴瘤</td><td>耳聋(AD 48型）</td><td>精神发育迟滞58型，X连锁</td><td>无眼/小眼</td></tr>
<tr><td>Burn-McKeown综合征</td><td>耳聋(AD 4B型）</td><td>精神发育迟滞5型，AD</td><td>无眼畸胎伴肢体异常</td></tr>
<tr><td>Buruli溃疡</td><td>耳聋(AD 4型）</td><td>精神发育迟滞5型，AR</td><td>无爪症</td></tr>
<tr><td>B细胞扩张</td><td>耳聋(AD 50型）</td><td>精神发育迟滞63型，X连锁</td><td>舞蹈病</td></tr>
<tr><td>C1q缺陷</td><td>耳聋(AD 56型）</td><td>精神发育迟滞6型，AD</td><td>舞蹈性棘红细胞症</td></tr>
<tr><td>Cafe-au-lait斑点伴肺动脉狭窄</td><td>耳聋(AD 5型）</td><td>精神发育迟滞6型，AR</td><td>舞蹈徐动症</td></tr>
<tr><td>CARD11免疫缺陷</td><td>耳聋(AD 64型）</td><td>精神发育迟滞7型，AD</td><td>戊二酸尿症1型</td></tr>
<tr><td>Cardiff假性高钾血症</td><td>耳聋(AD 65型）</td><td>精神发育迟滞7型，AR</td><td>戊二酸尿症2型</td></tr>
<tr><td>Carnevale综合征</td><td>耳聋(AD 66型）</td><td>精神发育迟滞8型，AD</td><td>戊二酰辅酶A氧化酶缺乏症</td></tr>
<tr><td>Carpenter综合征1型</td><td>耳聋(AD 67型）</td><td>精神发育迟滞91型，X连锁</td><td>戊糖尿症</td></tr>
<tr><td>Carpenter综合征2型</td><td>耳聋(AD 68型）</td><td>精神发育迟滞9型，AD</td><td>西尼罗河病毒</td></tr>
<tr><td>Catel Manzke综合征</td><td>耳聋(AD 70型）</td><td>精神发育迟滞9型，X连锁</td><td>系统性红斑狼疮</td></tr>
<tr><td>CATSPER相关男性不育</td><td>耳聋(AD 9型）</td><td>精神发育迟滞伴全垂体功能减退，X连锁</td><td>系统性红斑狼疮10型</td></tr>
<tr><td>CD11C+/+CD1C树突状细胞缺乏症</td><td>耳聋(AR 101型）</td><td>精神发育迟滞伴鲜明五官及有或无心脏缺陷</td><td>系统性红斑狼疮11型</td></tr>
<tr><td>CD59缺失</td><td>耳聋(AR 102型）</td><td>精神发育迟滞伴语言障碍和有或没有自闭症特征</td><td>系统性红斑狼疮16型</td></tr>
<tr><td>Cerebellofaciodental综合征</td><td>耳聋(AR 103型）</td><td>精神发育迟滞和小头畸形与脑桥小脑发育不全</td><td>系统性红斑狼疮1型</td></tr>
<tr><td>CFHR5不足</td><td>耳聋(AR 104型）</td><td>精神发育迟滞和言语运动障碍性癫痫（X连锁）</td><td>系统性红斑狼疮6型</td></tr>
<tr><td>CFHR5相关致密物沉积病</td><td>耳聋(AR 105型）</td><td>精神发育迟滞综合征（Claes-Jensen型，X连锁）</td><td>系统性红斑狼疮9型</td></tr>
<tr><td>CHARGE联合征</td><td>耳聋(AR 12型）</td><td>精神发育迟滞综合征（X连锁14型）</td><td>细胞和体液联合免疫缺陷（肉芽肿相关）</td></tr>
<tr><td>Char综合征</td><td>耳聋(AR 15型）</td><td>精神发育迟滞综合征X连锁（Hedera型）</td><td>细胞静脉畸形</td></tr>
<tr><td>Chediak-Higashi综合征</td><td>耳聋(AR 16型）</td><td>精神发育迟滞综合征X连锁（raymond型）</td><td>细胞内钴胺素代谢紊乱</td></tr>
<tr><td>Child综合征</td><td>耳聋(AR 18B型）</td><td>精神发育迟滞综合征X连锁（turner型）</td><td>细胞色素B5还原酶缺乏症</td></tr>
<tr><td>Chops综合征</td><td>耳聋(AR 18型）</td><td>精神发育迟滞综合征X连锁（wu型）</td><td>细胞色素C氧化酶缺乏症</td></tr>
<tr><td>Christianson综合征</td><td>耳聋(AR 1A型）</td><td>精神发育迟滞综合征X连锁10型</td><td>细胞色素P450氧化还原酶缺乏类固醇激素紊乱</td></tr>
<tr><td>Chudley-McCulloug综合征</td><td>耳聋(AR 1B型）</td><td>精神发育迟滞综合 X连锁13型</td><td>细齿</td></tr>
<tr><td>COACH综合征</td><td>耳聋(AR 21型）</td><td>精神发育迟滞综合征X连锁32型</td><td>下颌骨发育不全，耳聋，早衰样和脂肪代谢障碍综合征</td></tr>
<tr><td>Cocoon综合征</td><td>耳聋(AR 22型）</td><td>精神发育迟滞综合征X连锁33型</td><td>下丘脑错构瘤</td></tr>
<tr><td>CODAS综合征</td><td>耳聋(AR 23型）</td><td>精神发育迟滞综合征X连锁34型</td><td>下丘脑功能减退</td></tr>
<tr><td>Coffin-Lowry综合征</td><td>耳聋(AR 24型）</td><td>精神发育迟滞综合征X连锁99型（X连锁，女性受限）</td><td>先​​天性糖基化1R型</td></tr>
<tr><td>Coffin-Siris症候群</td><td>耳聋(AR 25型）</td><td>精神分裂症</td><td>先天性白内障（面部畸形和神经病变）</td></tr>
<tr><td>Coffin-Siris综合征5型</td><td>耳聋(AR 28型）</td><td>精神分裂症15型</td><td>先天性白内障（听力丧失和和神经退行性病变）</td></tr>
<tr><td>Cole Carpenter综合征</td><td>耳聋(AR 29型）</td><td>精神分裂症17型</td><td>先天性白内障伴缝间骨混浊</td></tr>
<tr><td>Cole-carpenter综合征2型</td><td>耳聋(AR 2型）</td><td>精神分裂症18型</td><td>先天性表皮发育不全</td></tr>
<tr><td>Cousin综合征</td><td>耳聋(AR 30型）</td><td>精神分裂症4型</td><td>先天性表皮发育不全（小头畸形）</td></tr>
<tr><td>Cowden综合征1型</td><td>耳聋(AR 31型）</td><td>精神分裂症6型</td><td>先天性杵状指</td></tr>
<tr><td>Cowden综合征2型</td><td>耳聋(AR 35型）</td><td>精神分裂症9型</td><td>先天性垂直距骨</td></tr>
<tr><td>Cowden综合征3型</td><td>耳聋(AR 36型）</td><td>精神运动发育迟缓，癫痫和颅面异形</td><td>先天性胆汁酸合成缺陷1型</td></tr>
<tr><td>Cowden综合征4型</td><td>耳聋(AR 37型）</td><td>精子发生阻滞</td><td>先天性胆汁酸合成缺陷2型</td></tr>
<tr><td>Cowden综合征5型</td><td>耳聋(AR 39型）</td><td>颈动脉内膜中层厚1型</td><td>先天性胆汁酸合成缺陷3型</td></tr>
<tr><td>Cowden综合征6型</td><td>耳聋(AR 3型）</td><td>胫骨，发育不良，多趾</td><td>先天性胆汁酸合成缺陷4型</td></tr>
<tr><td>Cowden综合征7型</td><td>耳聋(AR 42型）</td><td>胫前大疱性表皮松解</td><td>先天性胆汁酸合成缺陷5型</td></tr>
<tr><td>Craniolenticulosutural发育不良</td><td>耳聋(AR 44型）</td><td>痉挛性共济失调，Charlevoix-Saguenay型</td><td>先天性短肠综合征</td></tr>
<tr><td>Crigler-Najjar综合征</td><td>耳聋(AR 48型）</td><td>痉挛性共济失调5型，AR</td><td>先天性多发性外生骨疣</td></tr>
<tr><td>Crigler-Najjar综合征II型</td><td>耳聋(AR 49型）</td><td>痉挛性截瘫，视神经萎缩，和神经病</td><td>先天性非进行性远端脊肌萎缩症</td></tr>
<tr><td>Crouzon综合征</td><td>耳聋(AR 53型）</td><td>痉挛性截瘫10型</td><td>先天性分泌性腹泻（氯化物型）</td></tr>
<tr><td>Crouzon综合征伴黑棘皮病</td><td>耳聋(AR 59型）</td><td>痉挛性截瘫11型</td><td>先天性分泌性腹泻（钠型）</td></tr>
<tr><td>Currarino综合征</td><td>耳聋(AR 61型）</td><td>痉挛性截瘫12型</td><td>先天性感觉神经病变小髓神经纤维选择性丧失</td></tr>
<tr><td>Curry-Hall综合征</td><td>耳聋(AR 63型）</td><td>痉挛性截瘫13型</td><td>先天性高氨血症I型</td></tr>
<tr><td>Cushing综合征</td><td>耳聋(AR 66型）</td><td>痉挛性截瘫15型</td><td>先天性谷氨酰胺缺乏症</td></tr>
<tr><td>Cushing综合征伴指关节粘连</td><td>耳聋(AR 67型）</td><td>痉挛性截瘫17型</td><td>先天性骨折脊髓性肌萎缩2型</td></tr>
<tr><td>Cutis Gyrata综合征</td><td>耳聋(AR 68型）</td><td>痉挛性截瘫18型</td><td>先天性核性白内障2型</td></tr>
<tr><td>Czech跖骨发育不良</td><td>耳聋(AR 6型）</td><td>痉挛性截瘫1型</td><td>先天性核性白内障3型</td></tr>
<tr><td>C-样综合征</td><td>耳聋(AR 70型）</td><td>痉挛性截瘫28型</td><td>先天性红皮病伴掌跖角化病（少毛症，和高IgE）</td></tr>
<tr><td>C综合征</td><td>耳聋(AR 74型）</td><td>痉挛性截瘫2型</td><td>先天性红细胞生成性卟啉病</td></tr>
<tr><td>D-2-和L-2-羟基戊二酸联合尿症</td><td>耳聋(AR 76型）</td><td>痉挛性截瘫30型</td><td>先天性红细胞生成异常性贫血II型</td></tr>
<tr><td>D-2-羟基戊二酸尿症1型</td><td>耳聋(AR 77型）</td><td>痉挛性截瘫31型</td><td>先天性红细胞生成异常性贫血IV型</td></tr>
<tr><td>D-2-羟基戊二酸尿症2型</td><td>耳聋(AR 79型）</td><td>痉挛性截瘫33型</td><td>先天性红细胞生成异常性贫血I型</td></tr>
<tr><td>Dandy-Walker相关畸形</td><td>耳聋(AR 7型）</td><td>痉挛性截瘫35型</td><td>先天性厚甲1型</td></tr>
<tr><td>De Lange综合征</td><td>耳聋(AR 81型）</td><td>痉挛性截瘫39型</td><td>先天性厚甲2型</td></tr>
<tr><td>DE SANCTIS-CACCHIONE综合征</td><td>耳聋(AR 84B型）</td><td>痉挛性截瘫3型</td><td>先天性厚甲4型</td></tr>
<tr><td>Dejerine-Sottas病</td><td>耳聋(AR 84型）</td><td>痉挛性截瘫42型</td><td>先天性肌病（compton-north）</td></tr>
<tr><td>Desanto-shinawi综合征</td><td>耳聋(AR 86型）</td><td>痉挛性截瘫43型</td><td>先天性肌病（纤维不均衡）</td></tr>
<tr><td>Desbuquois发育不良2型</td><td>耳聋(AR 88型）</td><td>痉挛性截瘫44型</td><td>先天性肌肥大脑综合征</td></tr>
<tr><td>Desbuquois综合征</td><td>耳聋(AR 89型）</td><td>痉挛性截瘫45型</td><td>先天性肌强直（AD）</td></tr>
<tr><td>DFNA 2非综合征性耳聋</td><td>耳聋(AR 91型）</td><td>痉挛性截瘫46型</td><td>先天性肌强直（AR）</td></tr>
<tr><td>Diamond-Blackfan贫血10型</td><td>耳聋(AR 93型）</td><td>痉挛性截瘫47型</td><td>先天性肌无力综合征</td></tr>
<tr><td>Diamond-Blackfan贫血11型</td><td>耳聋(AR 97型）</td><td>痉挛性截瘫48型</td><td>先天性肌无力综合征（CHRNA1相关）</td></tr>
<tr><td>Diamond-Blackfan贫血12型</td><td>耳聋(AR 98型）</td><td>痉挛性截瘫49型</td><td>先天性肌无力综合征（慢通道型）</td></tr>
<tr><td>Diamond-Blackfan贫血13型</td><td>耳聋(AR 9型）</td><td>痉挛性截瘫4型</td><td>先天性肌无力综合征（突触前，有或没有运动神经病）</td></tr>
<tr><td>Diamond-Blackfan贫血14型</td><td>耳聋(GJB2/GJB3型)</td><td>痉挛性截瘫50型</td><td>先天性肌无力综合征（突触前和后缺陷）</td></tr>
<tr><td>Diamond-Blackfan贫血1型</td><td>耳聋(X连锁2型)</td><td>痉挛性截瘫51型</td><td>先天性肌无力综合征（乙酰胆碱受体缺乏）</td></tr>
<tr><td>Diamond-Blackfan贫血3型</td><td>耳聋(X连锁5型)</td><td>痉挛性截瘫53型</td><td>先天性肌无力综合征（乙酰唑胺敏感）</td></tr>
<tr><td>Diamond-Blackfan贫血4型</td><td>耳聋(X连锁6型)</td><td>痉挛性截瘫54型</td><td>先天性肌无力综合征11型</td></tr>
<tr><td>Diamond-Blackfan贫血5型</td><td>耳聋(人工耳蜗，近视和智力障碍)</td><td>痉挛性截瘫56型</td><td>先天性肌无力综合征13型</td></tr>
<tr><td>Diamond-Blackfan贫血7型</td><td>耳聋(先天性单侧或不对称)</td><td>痉挛性截瘫57型</td><td>先天性肌无力综合征17型</td></tr>
<tr><td>Diamond-Blackfan贫血8型</td><td>耳聋(先天性指甲营养不良)</td><td>痉挛性截瘫5A型</td><td>先天性肌无力综合征18型</td></tr>
<tr><td>Diamond-Blackfan贫血9型</td><td>耳聋Hystrix状鱼鳞病</td><td>痉挛性截瘫61型</td><td>先天性肌无力综合征19型</td></tr>
<tr><td>Diamond-Blackfan贫血伴耳畸形和腭裂</td><td>耳聋-不孕综合征</td><td>痉挛性截瘫62型</td><td>先天性肌无力综合征1B型</td></tr>
<tr><td>Diaphanospondylodysostosis</td><td>耳聋线粒体型</td><td>痉挛性截瘫63型</td><td>先天性肌无力综合征2a型</td></tr>
<tr><td>DICER1相关胸膜肺母细胞癌易感综合征</td><td>耳聋牙釉质发育不全</td><td>痉挛性截瘫64型</td><td>先天性肌无力综合征2c型</td></tr>
<tr><td>DiGeorge序列征</td><td>耳聋与小耳畸形和小牙发育不全</td><td>痉挛性截瘫6型</td><td>先天性肌无力综合征3a型</td></tr>
<tr><td>DNM2相关的中间腓骨肌萎缩病变</td><td>耳聋综合征</td><td>痉挛性截瘫72型</td><td>先天性肌无力综合征3b型</td></tr>
<tr><td>Donnai Barrow综合征</td><td>耳突综合征1型</td><td>痉挛性截瘫73型</td><td>先天性肌无力综合征3c型</td></tr>
<tr><td>Dowling-Degos病1型</td><td>耳突综合征2型</td><td>痉挛性截瘫74型</td><td>先天性肌无力综合征4b型</td></tr>
<tr><td>Dowling-Degos病2型</td><td>耳突综合征3型</td><td>痉挛性截瘫75型</td><td>先天性肌无力综合征9型</td></tr>
<tr><td>Dowling-Degos病4型</td><td>二甲基甘氨酸脱氢酶缺乏症</td><td>痉挛性截瘫76型</td><td>先天性肌无力综合征伴管状聚集3型</td></tr>
<tr><td>Drash综合征</td><td>二尖瓣脱垂2型</td><td>痉挛性截瘫77型</td><td>先天性肌无力综合征管状聚集1型</td></tr>
<tr><td>Duane-radial放射线综合征</td><td>二磷酸甘油酸变位酶缺乏症</td><td>痉挛性截瘫7型</td><td>先天性肌无力综合征无管状聚集</td></tr>
<tr><td>DUANE后退综合征3型</td><td>二氢蝶啶还原酶缺乏症</td><td>痉挛性截瘫8型</td><td>先天性肌营养不良（DAVIGNON-CHAUVEAU型）</td></tr>
<tr><td>Duane综合征2型</td><td>二氢嘧啶缺乏症</td><td>痉挛性截瘫9B型</td><td>先天性肌营养不良（LMNA相关）</td></tr>
<tr><td>Dubin-Johnson综合征</td><td>二氢脱氢酶缺乏症</td><td>痉挛性截瘫9型</td><td>先天性肌营养不良（megaconial型）</td></tr>
<tr><td>Dyggve-Melchior-Clausen综合征</td><td>发育不全侏儒症</td><td>痉挛性截瘫和精神运动性迟滞</td><td>先天性肌营养不良（整合素-7不足）</td></tr>
<tr><td>Dysgnathia复合体</td><td>发育迟缓矮小(畸形特征和头发稀疏)</td><td>痉挛性四肢瘫，薄胼胝体，渐进性小头畸形</td><td>先天性肌营养不良A10型</td></tr>
<tr><td>Dystransthyretinemic euthyroidal hyperthyroxinemia</td><td>发育异常1型</td><td>镜像运动2型</td><td>先天性肌营养不良A11型</td></tr>
<tr><td>Edict综合征</td><td>发育异常2型</td><td>镜像运动3型</td><td>先天性肌营养不良A12型</td></tr>
<tr><td>EEM综合征</td><td>发作性共济失调1型</td><td>酒精依赖</td><td>先天性肌营养不良A13型</td></tr>
<tr><td>Eiken骨骼发育不良</td><td>发作性共济失调2型</td><td>局部性癫痫</td><td>先天性肌营养不良A14型</td></tr>
<tr><td>Emery-Dreifuss肌营养不良1型</td><td>发作性共济失调5型</td><td>局部原发性皮肤淀粉样变2型</td><td>先天性肌营养不良A1型</td></tr>
<tr><td>Emery-Dreifuss肌营养不良3型</td><td>发作性共济失调6型</td><td>局灶性癫痫有或没有精神发育迟滞言语障碍</td><td>先天性肌营养不良A2型</td></tr>
<tr><td>Emery-Dreifuss肌营养不良4型</td><td>发作性睡病1型</td><td>局灶性节段性肾小球硬化1型</td><td>先天性肌营养不良A5型</td></tr>
<tr><td>Emery-Dreifuss肌营养不良5型</td><td>发作性睡病7型</td><td>局灶性节段性肾小球硬化2型</td><td>先天性肌营养不良A6型</td></tr>
<tr><td>Emery-Dreifuss肌营养不良7型</td><td>法乐氏四联症</td><td>局灶性节段性肾小球硬化3型</td><td>先天性肌营养不良A7型</td></tr>
<tr><td>Enamel-renal综合征</td><td>反复性流产2型</td><td>局灶性节段性肾小球硬化4型</td><td>先天性肌营养不良A8型</td></tr>
<tr><td>encephalomyopathic代谢危机，横纹肌溶解症，心律失常，神经退行性病变</td><td>反复性流产3型</td><td>局灶性节段性肾小球硬化5型</td><td>先天性肌营养不良A9型</td></tr>
<tr><td>Epstein综合征</td><td>范可尼贫血（互补A组）</td><td>局灶性节段性肾小球硬化6型</td><td>先天性肌营养不良B14型</td></tr>
<tr><td>ERCC1相关的着色性干皮</td><td>范可尼贫血（互补B组）</td><td>局灶性节段性肾小球硬化7型</td><td>先天性肌营养不良B1型</td></tr>
<tr><td>Even-plus综合征</td><td>范可尼贫血（互补C组）</td><td>局灶性节段性肾小球硬化8型</td><td>先天性肌营养不良B2型</td></tr>
<tr><td>Fabry病</td><td>范可尼贫血（互补D1组）</td><td>局灶性节段性肾小球硬化9型</td><td>先天性肌营养不良B3型</td></tr>
<tr><td>Fanconi renotubular综合征2型</td><td>范可尼贫血（互补D2组）</td><td>局灶性皮肤发育不全</td><td>先天性肌营养不良B4型</td></tr>
<tr><td>Fanconi renotubular综合征3型</td><td>范可尼贫血（互补E组）</td><td>巨大血小板综合征</td><td>先天性肌营养不良B5型</td></tr>
<tr><td>Fanconi renotubular综合征4型</td><td>范可尼贫血（互补F组）</td><td>巨大血小板综合征A2型</td><td>先天性肌营养不良B6型</td></tr>
<tr><td>Fanconi-Bickel 综合征</td><td>范可尼贫血（互补G组）</td><td>巨脑，多小脑回，多指畸形，脑积水综合征</td><td>先天性肌营养不良C12型</td></tr>
<tr><td>Farber's脂肪肉芽肿病</td><td>范可尼贫血（互补I组）</td><td>巨脑，多小脑回，多指畸形，脑积水综合征2型</td><td>先天性肌营养不良Eichsfeld型</td></tr>
<tr><td>Fechtner综合征</td><td>范可尼贫血（互补J组）</td><td>巨脑，多小脑回，多指畸形，脑积水综合征3型</td><td>先天性基质角膜营养不良</td></tr>
<tr><td>Feingold综合征1型</td><td>范可尼贫血（互补L组）</td><td>巨脑性白质脑病伴皮质下囊肿</td><td>先天性脊椎骨骺发育不良</td></tr>
<tr><td>Feingold综合征2型</td><td>范可尼贫血（互补M组）</td><td>巨脑性白质脑病伴皮质下囊肿1型</td><td>先天性甲状腺功能低下非甲状腺肿1型</td></tr>
<tr><td>FG综合征</td><td>范可尼贫血（互补N组）</td><td>巨脑性白质脑病伴皮质下囊肿2A型</td><td>先天性甲状腺功能低下非甲状腺肿5型</td></tr>
<tr><td>FG综合征2型</td><td>范可尼贫血（互补O组）</td><td>巨脑性白质脑病伴皮质下囊肿2B型</td><td>先天性甲状腺功能低下非甲状腺肿6型</td></tr>
<tr><td>FG综合征4型</td><td>范可尼贫血（互补P组）</td><td>巨血小板减少症，常染色体显性遗传</td><td>先天性间质性肺病，肾病综合症，大疱性表皮松解</td></tr>
<tr><td>Fibrochondrogenesis</td><td>范可尼贫血（互补Q组）</td><td>巨血小板减少症和渐进性感觉神经性耳聋</td><td>先天性角化不良(AD 2型)</td></tr>
<tr><td>Fibrochondrogenesis 2型</td><td>范可尼贫血（互补T组）</td><td>巨幼细胞贫血（二氢叶酸还原酶缺乏）</td><td>先天性角化不良(AD 3型)</td></tr>
<tr><td>Filippi综合征</td><td>芳香化酶缺乏症</td><td>巨幼细胞贫血（先天性代谢缺陷）</td><td>先天性角化不良(AD 6型)</td></tr>
<tr><td>Fitzsimmons-Guilbert综合征</td><td>芳族基-L-氨基酸脱羧酶缺乏症</td><td>巨幼细胞贫血伴糖尿病和神经性耳聋</td><td>先天性角化不良(AR 2型)</td></tr>
<tr><td>Fleck角膜营养不良</td><td>房间隔缺损3型</td><td>巨轴突病变，常染色体显性遗传</td><td>先天性角化不良(AR 3型)</td></tr>
<tr><td>Floating-Harbor综合征</td><td>房间隔缺损4型</td><td>巨轴突神经病</td><td>先天性角化不良(AR 5型)</td></tr>
<tr><td>Frank Ter Haar综合征</td><td>房间隔缺损5型</td><td>军团病</td><td>先天性角化不良(AR 6型)</td></tr>
<tr><td>Frasier综合征</td><td>房间隔缺损6型</td><td>菌血症1型</td><td>先天性角化不良X连锁</td></tr>
<tr><td>FRAXE</td><td>房间隔缺损7型</td><td>菌血症2型</td><td>先天性角化不良常染色体显性遗传</td></tr>
<tr><td>Freeman-Sheldon综合征</td><td>房间隔缺损8型</td><td>卡尔曼综合征1型</td><td>先天性角化不良常染色体隐性1型</td></tr>
<tr><td>Friedreich共济失调1型</td><td>房间隔缺损9型</td><td>卡尔曼综合征2型</td><td>先天性静止性夜盲（AD 1型）</td></tr>
<tr><td>Fuhrmann综合征</td><td>房室间隔缺损（共同房室交界区）</td><td>卡尔曼综合征3型</td><td>先天性静止性夜盲（AD 2型）</td></tr>
<tr><td>Gamstorp-Wohlfart综合征</td><td>房室间隔缺损2型</td><td>卡尔曼综合征4型</td><td>先天性静止性夜盲（AD 3型）</td></tr>
<tr><td>GATA-1相关的血小板减少与异常红系造血</td><td>房室间隔缺损4型</td><td>卡尔曼综合征5型</td><td>先天性静止性夜盲1A型</td></tr>
<tr><td>Gaucher's病1型</td><td>房室间隔缺损5型</td><td>卡尔曼综合征6型</td><td>先天性静止性夜盲1B型</td></tr>
<tr><td>Geleophysic发育不良1型</td><td>非典型分枝杆菌病</td><td>抗利尿激素不适当分泌综合征</td><td>先天性静止性夜盲1C型</td></tr>
<tr><td>Geleophysic发育不良2型</td><td>非典型戈谢病，由于鞘脂激活蛋白C缺乏症</td><td>抗凝血酶III缺乏症</td><td>先天性静止性夜盲1D型</td></tr>
<tr><td>Genitopatellar综合征</td><td>非典型克拉伯病（鞘脂A缺乏症）</td><td>科恩综合征</td><td>先天性静止性夜盲1E型</td></tr>
<tr><td>Gerstmann-Straussler-Scheinker综合征</td><td>非典型溶血性尿毒综合征</td><td>科尔病</td><td>先天性静止性夜盲1F型</td></tr>
<tr><td>Ghosal综合征</td><td>非典型溶血性尿毒综合征1型</td><td>科尔顿血型系统疾病</td><td>先天性静止性夜盲2A型</td></tr>
<tr><td>Gilbert综合征</td><td>非典型溶血性尿毒综合征2型</td><td>科凯恩综合征A型</td><td>先天性静止性夜盲2B型</td></tr>
<tr><td>Gillessen-kaesbach-nishimura综合征</td><td>非典型溶血性尿毒综合征4型</td><td>科凯恩综合征B型</td><td>先天性静止性夜盲症1G型</td></tr>
<tr><td>GM1神经节苷脂2型</td><td>非典型溶血性尿毒综合征6型</td><td>科斯特洛综合征</td><td>先天性静止性夜盲症1H型</td></tr>
<tr><td>Gnathodiaphyseal发育不良</td><td>非典型溶血性尿毒综合症3型</td><td>壳三糖酶缺乏症</td><td>先天性镜像运动</td></tr>
<tr><td>Goldberg-Shprintzen巨结肠症</td><td>非典型溶血性尿毒综合症5型</td><td>可的松还原酶缺乏1型</td><td>先天性巨结肠症</td></tr>
<tr><td>Gower型肌营养不良</td><td>非动脉炎性前部缺血性视神经病变</td><td>可的松还原酶缺乏2型</td><td>先天性巨结肠症，心脏缺陷，植物神经功能紊乱</td></tr>
<tr><td>Grebe综合征</td><td>非霍奇金恶性淋巴瘤</td><td>空肠闭锁与小头和眼部异常</td><td>先天性巨结肠症1型</td></tr>
<tr><td>Greenberg发育不良</td><td>非渐进性小脑性共济失调（智力低下）</td><td>空腹血糖数量性状位点5型</td><td>先天性巨结肠症2型</td></tr>
<tr><td>Griscelli综合征1型</td><td>非乳突状肾细胞癌</td><td>恐慌症1型</td><td>先天性巨结肠症3型</td></tr>
<tr><td>Griscelli综合征2型</td><td>非髓样甲状腺癌4型</td><td>口面裂10型</td><td>先天性巨结肠症4型</td></tr>
<tr><td>Griscelli综合征3型</td><td>非髓样甲状腺癌5型</td><td>口面裂11型</td><td>先天性抗纤维蛋白溶酶缺乏症</td></tr>
<tr><td>Groenouw角膜营养不良Ⅰ型</td><td>非特异性大疱性表皮松解</td><td>口面裂15型</td><td>先天性挛缩（肌张力低下和发育迟缓）</td></tr>
<tr><td>GTP环化水解酶I缺陷症</td><td>非酮性高甘氨酸血症</td><td>口面裂5型</td><td>先天性挛缩细长指</td></tr>
<tr><td>Haim-Munk综合征</td><td>非新生儿肾上腺脑白质营养不良</td><td>口面裂6型</td><td>先天性毛细管扩张性大理石样皮肤</td></tr>
<tr><td>Hajdu-Cheney综合征</td><td>非原发性醛固酮增多症</td><td>口腔颌面部综合征</td><td>先天性毛细血管畸形1型</td></tr>
<tr><td>Hecht综合征</td><td>非综合征型X连锁智力障碍</td><td>口腔颌面部综合征5型</td><td>先天性面部外胚层发育不良</td></tr>
<tr><td>Heimler综合征2型</td><td>肥大细胞增多症</td><td>口腔颌面部综合征6型</td><td>先天性凝血酶原不足</td></tr>
<tr><td>Hennekam淋巴管扩张和淋巴水肿综合征</td><td>肥厚性皮肤骨膜炎综合征</td><td>口腔颌面部综合征IV型</td><td>先天性葡萄糖，半乳糖吸收不良</td></tr>
<tr><td>Hennekam淋巴管扩张和淋巴水肿综合征2型</td><td>肥胖</td><td>口腔颌面部综合征型</td><td>先天性普秃</td></tr>
<tr><td>Hermansky Pudlak综合征1型</td><td>肥胖，饮食过量，发育迟缓</td><td>口形红细胞增多I型</td><td>先天性青光眼</td></tr>
<tr><td>Hermansky Pudlak综合征2型</td><td>腓骨发育不全和短指复杂</td><td>库鲁病</td><td>先天性全身性脂肪代谢障碍3型</td></tr>
<tr><td>Hermansky Pudlak综合征3型</td><td>腓骨肌萎缩症(声带麻痹)</td><td>髋关节发育不良（beukes型）</td><td>先天性全身性脂肪代谢障碍4型</td></tr>
<tr><td>Hermansky Pudlak综合征4型</td><td>腓骨肌萎缩症1A型</td><td>髋关节骨性关节炎</td><td>先天性全身脂肪营养不良1型</td></tr>
<tr><td>Hermansky Pudlak综合征5型</td><td>腓骨肌萎缩症1B型</td><td>扩张型心肌病（ANKRD1相关）</td><td>先天性全身脂肪营养不良2型</td></tr>
<tr><td>Hermansky Pudlak综合征6型</td><td>腓骨肌萎缩症1C型</td><td>扩张型心肌病（woolly毛发和皮肤角化）</td><td>先天性乳糖酶缺乏</td></tr>
<tr><td>Hermansky Pudlak综合征7型</td><td>腓骨肌萎缩症1D型</td><td>扩张型心肌病（woolly毛发和皮肤角化牙齿发育不全）</td><td>先天性肾上腺发育不全（X连锁）</td></tr>
<tr><td>Hermansky Pudlak综合征8型</td><td>腓骨肌萎缩症1E型</td><td>扩张型心肌病1AA型</td><td>先天性肾上腺皮质功能不全</td></tr>
<tr><td>Hermansky Pudlak综合征9型</td><td>腓骨肌萎缩症1F型</td><td>扩张型心肌病1A型</td><td>先天性双侧输精管缺乏</td></tr>
<tr><td>Holt-Oram 综合征</td><td>腓骨肌萎缩症1VFR型</td><td>扩张型心肌病1BB型</td><td>先天性四肢切断症，AR</td></tr>
<tr><td>Hopf疣状肢端角化病</td><td>腓骨肌萎缩症1V型</td><td>扩张型心肌病1CC型</td><td>先天性髓鞘神经病变</td></tr>
<tr><td>Howel-Evans综合征</td><td>腓骨肌萎缩症2A1型</td><td>扩张型心肌病1DD型</td><td>先天性糖基化1B型障碍</td></tr>
<tr><td>Hoyeraal赫雷达尔森综合征</td><td>腓骨肌萎缩症2A2型</td><td>扩张型心肌病1EE型</td><td>先天性糖基化1C型障碍</td></tr>
<tr><td>Hutchinson-Gilford综合征</td><td>腓骨肌萎缩症2B1型</td><td>扩张型心肌病1E型</td><td>先天性糖基化1D型障碍</td></tr>
<tr><td>Hydrolethalus综合征1型</td><td>腓骨肌萎缩症2B2型</td><td>扩张型心肌病1FF型</td><td>先天性糖基化1E型障碍</td></tr>
<tr><td>Hydrolethalus综合征2型</td><td>腓骨肌萎缩症2B型</td><td>扩张型心肌病1F型</td><td>先天性糖基化1F型障碍</td></tr>
<tr><td>Hyperbiliverdinemia</td><td>腓骨肌萎缩症2CC型</td><td>扩张型心肌病1GG型</td><td>先天性糖基化1G型障碍</td></tr>
<tr><td>Hyperchlorhidrosis</td><td>腓骨肌萎缩症2C型</td><td>扩张型心肌病1G型</td><td>先天性糖基化1H型障碍</td></tr>
<tr><td>H因子缺乏症</td><td>腓骨肌萎缩症2D型</td><td>扩张型心肌病1HH型</td><td>先天性糖基化1I型障碍</td></tr>
<tr><td>IFAP综合征伴有或无BRESHECK综合征</td><td>腓骨肌萎缩症2E型</td><td>扩张型心肌病1II型</td><td>先天性糖基化1J型障碍</td></tr>
<tr><td>IgA肾病3型</td><td>腓骨肌萎缩症2F型</td><td>扩张型心肌病1I型</td><td>先天性糖基化1K型障碍</td></tr>
<tr><td>IL21R免疫缺陷</td><td>腓骨肌萎缩症2I型</td><td>扩张型心肌病1JJ型</td><td>先天性糖基化1M型障碍</td></tr>
<tr><td>IRAK4缺陷</td><td>腓骨肌萎缩症2J型</td><td>扩张型心肌病1J型</td><td>先天性糖基化1N型障碍</td></tr>
<tr><td>Iridogoniodysgenesis 1型</td><td>腓骨肌萎缩症2K型</td><td>扩张型心肌病1KK型</td><td>先天性糖基化1O型障碍</td></tr>
<tr><td>Iridogoniodysgenesis（主导型）</td><td>腓骨肌萎缩症2L型</td><td>扩张型心肌病1L型</td><td>先天性糖基化1P型障碍</td></tr>
<tr><td>Ischiopatellar发育不良</td><td>腓骨肌萎缩症2N型</td><td>扩张型心肌病1M型</td><td>先天性糖基化1Q型障碍</td></tr>
<tr><td>IVIC综合征</td><td>腓骨肌萎缩症2O型</td><td>扩张型心肌病1NN型</td><td>先天性糖基化1S型障碍</td></tr>
<tr><td>I细胞病</td><td>腓骨肌萎缩症2P型</td><td>扩张型心肌病1N型</td><td>先天性糖基化1U型障碍</td></tr>
<tr><td>Jackson-Weiss综合症</td><td>腓骨肌萎缩症2Q型</td><td>扩张型心肌病1O型</td><td>先天性糖基化1V型障碍</td></tr>
<tr><td>Jakob-Creutzfeldt病</td><td>腓骨肌萎缩症2R型</td><td>扩张型心肌病1P型</td><td>先天性糖基化1W型障碍</td></tr>
<tr><td>Jankovic Rivera综合征</td><td>腓骨肌萎缩症2S型</td><td>扩张型心肌病1R型</td><td>先天性糖基化1X型障碍</td></tr>
<tr><td>Jarcho-Levin综合征</td><td>腓骨肌萎缩症2T型</td><td>扩张型心肌病1S型</td><td>先天性糖基化1Y型障碍</td></tr>
<tr><td>Jensen综合征</td><td>腓骨肌萎缩症2U型</td><td>扩张型心肌病1T型</td><td>先天性糖基化1Z型障碍</td></tr>
<tr><td>Jervell and Lange-Nielsen综合征1型</td><td>腓骨肌萎缩症2V型</td><td>扩张型心肌病1U型</td><td>先天性糖基化2B型障碍</td></tr>
<tr><td>Jervell and Lange-Nielsen综合征2型</td><td>腓骨肌萎缩症2W型</td><td>扩张型心肌病1V型</td><td>先天性糖基化2C型障碍</td></tr>
<tr><td>Johanson-Blizzard综合征</td><td>腓骨肌萎缩症2X型</td><td>扩张型心肌病1W型</td><td>先天性糖基化2D型障碍</td></tr>
<tr><td>Joubert综合征10型</td><td>腓骨肌萎缩症2Y型</td><td>扩张型心肌病1X型</td><td>先天性糖基化2E型障碍</td></tr>
<tr><td>Joubert综合征13型</td><td>腓骨肌萎缩症2Z型</td><td>扩张型心肌病1Y型</td><td>先天性糖基化2F型障碍</td></tr>
<tr><td>Joubert综合征14型</td><td>腓骨肌萎缩症2型</td><td>扩张型心肌病1Z型</td><td>先天性糖基化2G型障碍</td></tr>
<tr><td>Joubert综合征15型</td><td>腓骨肌萎缩症3型</td><td>扩张型心肌病2A型</td><td>先天性糖基化2H型障碍</td></tr>
<tr><td>Joubert综合征16型</td><td>腓骨肌萎缩症4A型</td><td>扩张型心肌病2B型</td><td>先天性糖基化2I型障碍</td></tr>
<tr><td>Joubert综合征17型</td><td>腓骨肌萎缩症4B1型</td><td>扩张型心肌病3B型</td><td>先天性糖基化2J型障碍</td></tr>
<tr><td>Joubert综合征18型</td><td>腓骨肌萎缩症4B2型</td><td>蜡泪样骨病</td><td>先天性糖基化2K型障碍</td></tr>
<tr><td>Joubert综合征1型</td><td>腓骨肌萎缩症4B3型</td><td>蜡样脂褐质神经元10型</td><td>先天性糖基化2L型障碍</td></tr>
<tr><td>Joubert综合征20型</td><td>腓骨肌萎缩症4C型</td><td>蜡样脂褐质神经元11型</td><td>先天性糖基化紊乱IIM型</td></tr>
<tr><td>Joubert综合征21型</td><td>腓骨肌萎缩症4D型</td><td>蜡样脂褐质神经元13型</td><td>先天性糖基化紊乱IIN型</td></tr>
<tr><td>Joubert综合征22型</td><td>腓骨肌萎缩症4G型</td><td>蜡样脂褐质神经元1型</td><td>先天性糖基化紊乱IIO型</td></tr>
<tr><td>Joubert综合征23型</td><td>腓骨肌萎缩症4H型</td><td>蜡样脂褐质神经元2型</td><td>先天性糖基化紊乱IIP型</td></tr>
<tr><td>Joubert综合征24型</td><td>腓骨肌萎缩症4J型</td><td>蜡样脂褐质神经元5型</td><td>先天性糖基化紊乱II型</td></tr>
<tr><td>Joubert综合征25型</td><td>腓骨肌萎缩症4K型</td><td>蜡样脂褐质神经元6型</td><td>先天性糖基化障碍</td></tr>
<tr><td>Joubert综合征26型</td><td>腓骨肌萎缩症5型</td><td>蜡样脂褐质神经元7型</td><td>先天性脱发掌跖角化症</td></tr>
<tr><td>Joubert综合征2型</td><td>腓骨肌萎缩症A型</td><td>蜡样脂褐质神经元8型</td><td>先天性外耳道闭锁</td></tr>
<tr><td>Joubert综合征3型</td><td>腓骨肌萎缩症B型</td><td>蜡样脂褐质神经元8型</td><td>先天性网状红皮病，鱼鳞病</td></tr>
<tr><td>Joubert综合征4型</td><td>腓骨肌萎缩症C型</td><td>萊伯氏先天性黑蒙症10型</td><td>先天性微绒毛萎缩</td></tr>
<tr><td>Joubert综合征5型</td><td>腓骨肌萎缩症C型</td><td>萊伯氏先天性黑蒙症11型</td><td>先天性无虹膜</td></tr>
<tr><td>Joubert综合征6型</td><td>腓骨肌萎缩症D型</td><td>萊伯氏先天性黑蒙症12型</td><td>先天性无唾液腺</td></tr>
<tr><td>Joubert综合征7型</td><td>腓骨肌萎缩症E型</td><td>萊伯氏先天性黑蒙症13型</td><td>先天性纤维蛋白原缺乏血症</td></tr>
<tr><td>Joubert综合征8型</td><td>腓骨肌萎缩症F型</td><td>萊伯氏先天性黑蒙症14型</td><td>先天性心脏疾病2型</td></tr>
<tr><td>Joubert综合征9型</td><td>肺癌</td><td>萊伯氏先天性黑蒙症15型</td><td>先天性心脏缺陷4型</td></tr>
<tr><td>Kabuki make-up综合征</td><td>肺表面活性物质代谢功能障碍1型</td><td>萊伯氏先天性黑蒙症16型</td><td>先天性选择性缺牙3型</td></tr>
<tr><td>Kabuki综合征2型</td><td>肺表面活性物质代谢功能障碍2型</td><td>萊伯氏先天性黑蒙症17型</td><td>先天性选择性缺牙4型</td></tr>
<tr><td>Kahrizi综合征</td><td>肺表面活性物质代谢功能障碍3型</td><td>萊伯氏先天性黑蒙症1型</td><td>先天性选择性缺牙6型</td></tr>
<tr><td>Kanzaki病</td><td>肺表面活性物质代谢功能障碍5型</td><td>萊伯氏先天性黑蒙症2型</td><td>先天性选择性缺牙7型</td></tr>
<tr><td>Kartagener综合征</td><td>肺静脉闭塞病</td><td>萊伯氏先天性黑蒙症3型</td><td>先天性血小板减少症</td></tr>
<tr><td>Kaufman oculocerebrofacial综合征</td><td>肺泡横纹肌肉瘤</td><td>萊伯氏先天性黑蒙症4型</td><td>先天性眼球震颤6型，X连锁</td></tr>
<tr><td>KBG综合征</td><td>肺泡毛细血管发育不良</td><td>萊伯氏先天性黑蒙症5型</td><td>先天性眼外肌纤维化1B型</td></tr>
<tr><td>Kenny-Caffey综合征1型</td><td>肺泡微石症</td><td>萊伯氏先天性黑蒙症6型</td><td>先天性眼外肌纤维化1型</td></tr>
<tr><td>Kenny-Caffey综合征2型</td><td>肺纤维化和/或骨髓衰竭1型</td><td>萊伯氏先天性黑蒙症7型</td><td>先天性眼外肌纤维化2型</td></tr>
<tr><td>Keppen-Lubinsky综合征</td><td>肺纤维化和/或骨髓衰竭2型</td><td>萊伯氏先天性黑蒙症8型</td><td>先天性眼外肌纤维化3a型</td></tr>
<tr><td>Keutel综合征</td><td>肺纤维化和/或骨髓衰竭3型</td><td>萊伯氏先天性黑蒙症9型</td><td>先天性眼外肌纤维化5型</td></tr>
<tr><td>Kindler综合症</td><td>肺纤维化和/或骨髓衰竭4型</td><td>濑川综合征</td><td>先天性叶酸吸收缺陷</td></tr>
<tr><td>Kitamura网状肢端色素沉着症</td><td>分枝杆菌和病毒易感（AR）</td><td>蓝色盲</td><td>先天性胰腺发育不全</td></tr>
<tr><td>Klein-Waardenberg综合征</td><td>芬兰先天性肾病综合征</td><td>斓卟啉症</td><td>先天性遗传性上睑下垂1型</td></tr>
<tr><td>Klippel-Feil综合征1型</td><td>枫糖尿症</td><td>劳林 - Sandrow综合征</td><td>先天性异常纤维蛋白原血症</td></tr>
<tr><td>Klippel-Feil综合征2型</td><td>枫糖尿症1B型</td><td>老年痴呆症</td><td>先天性鱼鳞病10型</td></tr>
<tr><td>Klippel-Feil综合征3型</td><td>枫糖尿症3型</td><td>酪氨酸激酶2不足</td><td>先天性鱼鳞病1型</td></tr>
<tr><td>Klippel-Feil综合征4型</td><td>蜂窝状视网膜营养不良</td><td>酪氨酸酶阳性眼皮肤白化病</td><td>先天性鱼鳞病2型</td></tr>
<tr><td>Kniest发育不良</td><td>跗腕骨联合综合征</td><td>酪氨酸酶阴性眼皮肤白化病</td><td>先天性鱼鳞病3型</td></tr>
<tr><td>Knobloch综合征1型</td><td>弗莱克视网膜，家族性良性</td><td>酪氨酸血症1型</td><td>先天性鱼鳞病4A型</td></tr>
<tr><td>Kohlschutter综合征</td><td>福山型先天性肌营养不良</td><td>酪氨酸血症2型</td><td>先天性鱼鳞病4B型</td></tr>
<tr><td>Koolen-de Vries综合征</td><td>辅酶Q10缺乏症1型</td><td>雷恩综合征</td><td>先天性鱼鳞病5型</td></tr>
<tr><td>Kosaki过度增生综合征</td><td>辅酶Q10缺乏症2型</td><td>雷曼综合征</td><td>先天性鱼鳞病8型</td></tr>
<tr><td>Kowarski综合征</td><td>辅酶Q10缺乏症3型</td><td>雷诺综合征</td><td>先天性鱼鳞病9型</td></tr>
<tr><td>Kugelberg-Welander病</td><td>辅酶Q10缺乏症4型</td><td>泪管缺陷</td><td>先天性原发性无晶体眼</td></tr>
<tr><td>L-2-羟基戊二酸尿症</td><td>辅酶Q10缺乏症5型</td><td>类鼻疽易感</td><td>先天性远端多重关节挛缩</td></tr>
<tr><td>Lafora病</td><td>辅酶Q10缺乏症6型</td><td>类风湿关节炎</td><td>先天性远端型多重关节挛缩</td></tr>
<tr><td>Lamb-shaffer综合征</td><td>辅酶Q10缺乏症7型</td><td>类固醇11-β-单加氧酶缺乏症</td><td>先天性脂肪瘤样增生（血管畸形和表皮痣）</td></tr>
<tr><td>Laron型生长激素缺陷</td><td>辅酶Q10缺乏症8型</td><td>类固醇17-α单加氧酶尿甙基转化酶</td><td>先天性致死性心脏糖原累积病，</td></tr>
<tr><td>Larsen综合征</td><td>附颅骨骺发育异常（AD)</td><td>类扭伤性侏儒</td><td>先天性中枢性肺换气不足</td></tr>
<tr><td>Laryngoonychocutaneous综合征</td><td>附颅骨骺发育异常（AR)</td><td>里德尔综合征</td><td>先天遗传疼痛不敏感</td></tr>
<tr><td>Laurence-Moon综合征</td><td>复发性肝内胆汁淤积1型</td><td>连珠状毛</td><td>先兆子痫1型</td></tr>
<tr><td>Leber氏视神经萎缩</td><td>复发性肝内胆汁淤积2型</td><td>联合丙二酸和甲基丙二酸尿症</td><td>先兆子痫4型</td></tr>
<tr><td>Legius综合征</td><td>复发性流产</td><td>联合垂体激素缺乏1型</td><td>先兆子痫5型</td></tr>
<tr><td>Leigh综合征</td><td>复发性葡萄胎2型</td><td>联合垂体激素缺乏2型</td><td>纤溶酶原激活物抑制剂1缺陷</td></tr>
<tr><td>Leigh综合征（French Canadian型）</td><td>复发性侵袭性肺炎球菌疾病1型</td><td>联合垂体激素缺乏3型</td><td>纤溶酶原缺乏I型</td></tr>
<tr><td>LEINER病</td><td>复发性侵袭性肺炎球菌疾病2型</td><td>联合垂体激素缺乏4型</td><td>纤维蛋白原缺乏血症</td></tr>
<tr><td>Lenz-Majewski骨质增生综合征</td><td>副神经节瘤1型</td><td>联合垂体激素缺乏6型</td><td>显性遗传性视神经萎缩</td></tr>
<tr><td>LEOPARD综合征1型</td><td>副神经节瘤2型</td><td>联合型高脂血症1型</td><td>显性营养不良大疱性表皮松解</td></tr>
<tr><td>LEOPARD综合征2型</td><td>副神经节瘤3型</td><td>联合脂酶缺乏症</td><td>线粒体3-羟基-3-甲基戊二酰-CoA合成酶缺乏症</td></tr>
<tr><td>LEOPARD综合征3型</td><td>副神经节瘤4型</td><td>亮氨酸介导型低血糖症</td><td>线粒体DNA耗竭综合征，encephalomyopathic型</td></tr>
<tr><td>Leprechaunism综合征</td><td>副神经节瘤5型</td><td>裂鼻</td><td>线粒体DNA耗竭综合征11型</td></tr>
<tr><td>Lesch-Nyhan综合征</td><td>副神经节瘤和胃间质肉瘤</td><td>淋巴管肌瘤病</td><td>线粒体DNA耗竭综合征12型</td></tr>
<tr><td>Levy-Hollister特综合征</td><td>腹部肥胖代谢综合症3型</td><td>淋巴增生综合征1型</td><td>线粒体DNA耗竭综合征13型</td></tr>
<tr><td>Lichtenstein-knorr综合征</td><td>腹腔疾病</td><td>淋巴增生综合征1型，X连锁</td><td>线粒体DNA耗竭综合征14型</td></tr>
<tr><td>Liebenberg综合征</td><td>腹泻4型</td><td>淋巴增生综合征2型</td><td>线粒体DNA耗竭综合征2型</td></tr>
<tr><td>Li-Fraumeni综合征1型</td><td>腹泻5型</td><td>淋巴增生综合征2型，X连锁</td><td>线粒体DNA耗竭综合征3型</td></tr>
<tr><td>Li-Fraumeni综合征2型</td><td>腹泻6型</td><td>磷酸丙糖异构酶缺乏</td><td>线粒体DNA耗竭综合征4B型</td></tr>
<tr><td>LIG4综合征</td><td>腹泻7型</td><td>磷酸甘油酸激酶1缺陷</td><td>线粒体DNA耗竭综合征5型</td></tr>
<tr><td>Loeys-Dietz综合征2型</td><td>腹泻8型</td><td>磷酸核糖焦磷酸合成酶超活性</td><td>线粒体DNA耗竭综合征7型</td></tr>
<tr><td>Loeys-Dietz综合征3型</td><td>甘胺酸N-甲基缺陷症</td><td>磷酸丝氨酸磷酸缺乏症</td><td>线粒体DNA耗竭综合征9型</td></tr>
<tr><td>Loeys-Dietz综合征4型</td><td>甘露糖结合蛋白缺乏症</td><td>磷酸脱氢酶缺乏症</td><td>线粒体DNA相关Le​​igh综合征和NARP</td></tr>
<tr><td>Lowe综合征</td><td>甘油激酶缺乏症</td><td>磷酸盐转运缺陷</td><td>线粒体丙酮酸载体缺乏症</td></tr>
<tr><td>Lucey-Driscoll综合征</td><td>甘油三酯贮积病</td><td>磷酸转移酶缺乏症</td><td>线粒体短链烯酰辅酶A水合酶1缺乏症</td></tr>
<tr><td>Luscan-lumish综合征</td><td>甘油酸激酶缺乏症</td><td>流感</td><td>线粒体复合物III缺陷</td></tr>
<tr><td>Lynch综合征II型</td><td>肝静脉闭塞型免疫缺陷</td><td>硫嘌呤代谢不良2型</td><td>线粒体复合物III缺陷2型</td></tr>
<tr><td>Lynch综合征I型</td><td>肝素辅助因子II缺乏症</td><td>硫嘌呤甲基转移酶缺乏症</td><td>线粒体复合物III缺陷3型</td></tr>
<tr><td>Lysinuric蛋白不耐受</td><td>肝细胞癌</td><td>隆突性皮肤</td><td>线粒体复合物III缺陷4型</td></tr>
<tr><td>L-铁蛋白缺乏症</td><td>肝腺苷蛋氨酸缺乏症</td><td>颅额鼻发育不良</td><td>线粒体复合物III缺陷5型</td></tr>
<tr><td>Majeed综合征</td><td>肝脏先天性囊肿病</td><td>颅缝早闭1型</td><td>线粒体复合物III缺陷6型</td></tr>
<tr><td>Malouf综合征</td><td>肝脂酶缺乏症</td><td>颅缝早闭2型</td><td>线粒体复合物III缺陷7型</td></tr>
<tr><td>Mandibuloacral发育不良伴B型脂肪代谢障碍</td><td>杆状体肌病10型</td><td>颅缝早闭3型</td><td>线粒体复合物III缺陷8型</td></tr>
<tr><td>Mandibuloacral发育不全</td><td>杆状体肌病1型</td><td>颅缝早闭4型</td><td>线粒体复合物III缺陷9型</td></tr>
<tr><td>Mandibulofacial发育不全（Treacher Collins型）</td><td>杆状体肌病2型</td><td>颅缝早闭5型</td><td>线粒体复合物II缺乏症</td></tr>
<tr><td>Mandibulofacial发育不全伴脱发</td><td>杆状体肌病3型</td><td>颅缝早闭6型</td><td>线粒体复合物I缺陷</td></tr>
<tr><td>Marden Walker样综合征</td><td>杆状体肌病4型</td><td>颅缝早闭和牙齿畸形</td><td>线粒体复合物V不足1型</td></tr>
<tr><td>Marden Walker综合征</td><td>杆状体肌病5型</td><td>颅骨骨干发育异常1型</td><td>线粒体复合物V不足2型</td></tr>
<tr><td>Marfan型脂肪代谢障碍综合征</td><td>杆状体肌病6型</td><td>颅骨骨干发育异常2型</td><td>线粒体复合物V不足3型</td></tr>
<tr><td>Marfan综合征</td><td>杆状体肌病7型</td><td>颅骨骨干发育异常3型</td><td>线粒体复合物V缺陷4型</td></tr>
<tr><td>Marie Unna遗传性少毛症1型</td><td>杆状体肌病8型</td><td>颅骨骨干发育异常4型</td><td>线粒体肌病</td></tr>
<tr><td>Marinesco–Sjögren综合征</td><td>杆状体肌病9型</td><td>颅骨骨干发育异常AD型</td><td>线粒体肌病伴乳酸性酸中毒</td></tr>
<tr><td>Marles Greenberg Persaud综合征</td><td>感光毛发硫营养不良</td><td>颅面耳聋手综合征</td><td>线粒体疾病</td></tr>
<tr><td>Marshall-Smith综合征</td><td>感觉神经病变共济失调，构音障碍，眼肌瘫痪</td><td>颅面畸形，多指和皮肤异常和内脏发育不全</td><td>线粒体磷酸烯醇不足</td></tr>
<tr><td>Marshall综合征</td><td>感染，反复发作，脑病，肝功能异常和心血管畸形</td><td>颅面畸形和眼前段发育不全综合征</td><td>线粒体磷酸盐载体缺乏症</td></tr>
<tr><td>Martsolf综合征</td><td>感染引起的急性脑病3型</td><td>路易体痴呆</td><td>线粒体三功能蛋白缺乏症</td></tr>
<tr><td>MASP2缺乏症</td><td>感染引起的急性脑病4型</td><td>卵巢发育不全1型</td><td>线粒体型帕金森病</td></tr>
<tr><td>MASS综合征</td><td>干瘪细胞增多症</td><td>卵巢发育不全2型</td><td>线形角化病鱼鳞病伴先天性和硬化性角化病</td></tr>
<tr><td>Mast综合征</td><td>干骺端anadysplasia 2型</td><td>卵巢发育不全3型</td><td>线性皮肤缺损伴多重先天性异常3型</td></tr>
<tr><td>May-Hegglin异常</td><td>干骺端发育不良颌骨发育不全和短指</td><td>卵巢发育不全4型</td><td>腺苷酸琥珀酸裂解酶缺乏症</td></tr>
<tr><td>McCune-Albright综合征</td><td>干骺端发育不良无少毛症</td><td>卵巢过度刺激综合征</td><td>腺苷酸激酶缺乏症</td></tr>
<tr><td>McKusick Kaufman综合征</td><td>干骺端软骨发育不全（Jansen型）</td><td>卵巢早衰11型</td><td>腺泡状软组织肉瘤</td></tr>
<tr><td>McLeod神经棘红细胞增多综合征</td><td>干骺端软骨发育不全（McKusick型）</td><td>卵巢早衰12型</td><td>腺嘌呤磷酸核糖转移酶缺乏症</td></tr>
<tr><td>Meacham综合征</td><td>干骺端软骨发育不全（Schmid型）</td><td>卵巢早衰1型</td><td>小儿发病的运动四肢和颜面部障碍</td></tr>
<tr><td>Meckel综合征10型</td><td>干骺端软骨发育不全（Spahr型）</td><td>卵巢早衰2A型</td><td>小儿急性肝功能衰竭</td></tr>
<tr><td>Meckel综合征11型</td><td>高IgM免疫缺陷1型</td><td>卵巢早衰2B型</td><td>小耳畸形，听力障碍和腭裂</td></tr>
<tr><td>Meckel综合征12型</td><td>高IgM免疫缺陷2型</td><td>卵巢早衰3型</td><td>小红细胞性贫血</td></tr>
<tr><td>Meckel综合征1型</td><td>高IgM免疫缺陷3型</td><td>卵巢早衰5型</td><td>小角膜，近视脉络膜视网膜萎缩，内眦距过宽</td></tr>
<tr><td>Meckel综合征2型</td><td>高IgM免疫缺陷5型</td><td>卵巢早衰6型</td><td>小脑萎缩（视力障碍和精神运动迟缓）</td></tr>
<tr><td>Meckel综合征3型</td><td>高α脂蛋白血症</td><td>卵巢早衰7型</td><td>小脑性共济失调（cayman型）</td></tr>
<tr><td>Meckel综合征4型</td><td>高α脂蛋白血症2型</td><td>卵巢早衰8型</td><td>小脑性共济失调（耳聋和发作性睡病）</td></tr>
<tr><td>Meckel综合征5型</td><td>高氨血症</td><td>卵巢早衰9型</td><td>小脑性共济失调（视神经萎缩）</td></tr>
<tr><td>Meckel综合征6型</td><td>高氨血症III型</td><td>卵巢肿瘤</td><td>小脑性共济失调（无虹膜和智力低下）</td></tr>
<tr><td>Meckel综合征7型</td><td>高苯丙氨酸血症D型(BH4缺乏)</td><td>卵黄营养不良</td><td>小脑性共济失调（小儿进行性眼外肌麻痹）</td></tr>
<tr><td>Meckel综合征8型</td><td>高胆固醇血症</td><td>卵母细胞成熟缺陷</td><td>小脑性共济失调（性腺机能减退）</td></tr>
<tr><td>Meckel综合征9型</td><td>高胆固醇血症3型</td><td>卵母细胞成熟缺陷2型</td><td>小脑性共济失调智力低下和平衡失调综合征1型</td></tr>
<tr><td>MECP2基因重复综合征</td><td>高胆固醇血症B型</td><td>卵形红细胞症，遗传性溶血性</td><td>小脑性共济失调智力低下和平衡失调综合征2型</td></tr>
<tr><td>Meesman角膜营养不良</td><td>高度近视（白内障和玻璃体视网膜变性）</td><td>伦茨小眼综合征</td><td>小脑性共济失调智力低下和平衡失调综合征3型</td></tr>
<tr><td>Meier-Gorlin综合征1型</td><td>高分子量激肽原不足症</td><td>裸淋巴细胞综合征</td><td>小脑性共济失调智力低下和平衡失调综合征4型</td></tr>
<tr><td>Meier-Gorlin综合征2型</td><td>高甘氨酸尿</td><td>滤泡性甲状腺癌，</td><td>小头畸形，癫痫，糖尿病综合症</td></tr>
<tr><td>Meier-Gorlin综合征3型</td><td>高甲硫胺酸血症(腺苷激酶缺乏)</td><td>滤泡性淋巴瘤1型</td><td>小头畸形，淋巴水肿，或智力低下</td></tr>
<tr><td>Meier-Gorlin综合征4型</td><td>高甲硫胺酸血症与S腺苷高半​​胱氨酸水解酶缺乏症</td><td>麻风2型</td><td>小头畸形，毛细血管畸形综合征</td></tr>
<tr><td>Meier-Gorlin综合征5型</td><td>高钾型周期性麻痹1型</td><td>麻风3型</td><td>小头畸形，身材矮小，葡萄糖代谢受损</td></tr>
<tr><td>Meier-Gorlin综合征6型</td><td>高离氨酸血症</td><td>麻风4型</td><td>小头畸形，身材矮小，葡萄糖代谢受损2型</td></tr>
<tr><td>Meier-Gorlin综合征7型</td><td>高磷酸酶症伴精神发育迟滞综合征1型</td><td>麻风5型</td><td>小头畸形，食管裂孔疝及肾病综合征</td></tr>
<tr><td>Melnick-Fraser综合征</td><td>高磷酸酶症伴精神发育迟滞综合征2型</td><td>马蹄内翻足</td><td>小头畸形，先天性白内障和银屑病性皮炎</td></tr>
<tr><td>Melnick-Needles综合征</td><td>高磷酸酶症伴精神发育迟滞综合征3型</td><td>脉络丛乳头状瘤</td><td>小头畸形，智力正常和免疫缺陷</td></tr>
<tr><td>MEND综合征</td><td>高磷酸酶症伴精神发育迟滞综合征4型</td><td>脉络膜萎缩</td><td>小头畸形伴智力低下</td></tr>
<tr><td>Menkes卷毛症</td><td>高磷酸酶症伴精神发育迟滞综合征5型</td><td>慢性骨髓增殖性疾病</td><td>小头畸形和脉络膜视网膜病变AR</td></tr>
<tr><td>MERCER-BA综合征</td><td>高磷酸酶症伴精神发育迟滞综合征6型</td><td>慢性粒细胞白血病</td><td>小头畸形和脉络膜视网膜病变AR2型</td></tr>
<tr><td>Meretoja综合征</td><td>高磷酸酯酶血症伴骨病</td><td>慢性肉芽肿病（X连锁）</td><td>小头畸形和脉络膜视网膜病变AR3型</td></tr>
<tr><td>Merosin缺陷的先天性肌营养不良</td><td>高镁血症伴肌张力障碍2型</td><td>慢性肉芽肿病，常染色体隐性，色素b阴性</td><td>小细胞肺癌</td></tr>
<tr><td>Metatrophic发育不良</td><td>高镁血症肌伴张力障碍，红细胞增多症，肝硬化</td><td>慢性肉芽肿病1型</td><td>小眼球2型</td></tr>
<tr><td>Microhydranencephaly</td><td>高泌乳素血症</td><td>慢性肉芽肿病2型</td><td>小眼球4型</td></tr>
<tr><td>MiniCore肌病伴眼外肌麻痹</td><td>高免疫球蛋白D综合征</td><td>慢性肉芽肿病3型</td><td>小眼综合征11型</td></tr>
<tr><td>MIRAGE综合征</td><td>高免疫球蛋白E反复感染综合征</td><td>慢性心房颤动和肠道节律紊乱</td><td>小眼综合征12型</td></tr>
<tr><td>Mitchell-Riley综合征</td><td>高免疫球蛋白E综合征</td><td>慢性型特发性纤维性肺泡炎</td><td>小眼综合征13型</td></tr>
<tr><td>Miyoshi肌营养不良1型</td><td>高鸟氨酸血症高氨血症高瓜氨酸尿综合征</td><td>慢性婴儿神经系统，皮肤和关节综合征</td><td>小眼综合征14型</td></tr>
<tr><td>Miyoshi肌营养不良2型</td><td>高尿酸血症，肺动脉高血压，肾功能衰竭，以及性碱中毒</td><td>慢性阻塞性肺疾病</td><td>小眼综合征3型</td></tr>
<tr><td>Mohr-Tranebjaerg综合征</td><td>高前胰岛素血症</td><td>慢乙酰，N-乙酰转移酶变体</td><td>小眼综合征5型</td></tr>
<tr><td>MORM综合征</td><td>高铁血红蛋白血症4型</td><td>毛发肝胆肠综合征</td><td>小眼综合征6型</td></tr>
<tr><td>Mowat-Wilson综合征</td><td>高血压舒张抗性</td><td>毛发肝胆肠综合征2型</td><td>小眼综合征7型</td></tr>
<tr><td>Muenke综合征</td><td>高胰岛素血症，高血氨症</td><td>毛发红糠疹</td><td>小眼综合征9型</td></tr>
<tr><td>Muir-Torré综合征</td><td>高脂蛋白血症ID型</td><td>毛发硫营养障碍症1型</td><td>哮喘</td></tr>
<tr><td>Mulibrey nanism综合征</td><td>高脂蛋白血症I型</td><td>毛发硫营养障碍症2型</td><td>哮喘（鼻息肉和阿司匹林不耐受）</td></tr>
<tr><td>MyD88缺乏症</td><td>睾酮17-β-脱氢酶缺乏症</td><td>毛发硫营养障碍症3型</td><td>哮喘1型</td></tr>
<tr><td>Myelocerebellar障碍</td><td>睾丸恶性肿瘤</td><td>毛发硫营养障碍症5型</td><td>哮喘2型</td></tr>
<tr><td>MYH9相关疾病</td><td>睾丸微石症</td><td>毛发硫营养障碍症6型</td><td>哮喘5型</td></tr>
<tr><td>Myhre综合征</td><td>睾丸异常</td><td>毛发增多骨软骨发育异常</td><td>哮喘7型</td></tr>
<tr><td>MYH相关性息肉病</td><td>戈登综合征</td><td>毛囊角化病</td><td>心房颤动10型</td></tr>
<tr><td>Myotilinopathy</td><td>戈林综合征</td><td>毛细血管畸形（动静脉畸形）</td><td>心房颤动11型</td></tr>
<tr><td>Naegeli-Franceschetti-Jadassohn综合征</td><td>戈谢病，围产期致死</td><td>毛细血管扩张，遗传性出血性，5型</td><td>心房颤动12型</td></tr>
<tr><td>Nager综合征</td><td>戈谢病3C型</td><td>毛-牙-骨综合征</td><td>心房颤动13型</td></tr>
<tr><td>Nail-patella综合征</td><td>隔-视神经发育不良</td><td>美国本土肌病</td><td>心房颤动14型</td></tr>
<tr><td>Nail疾病，先天性非综合征10型</td><td>膈疝3型</td><td>弥漫囊性肾发育不良</td><td>心房颤动15型</td></tr>
<tr><td>Nail疾病，先天性非综合征8型</td><td>共济失调（AD)</td><td>弥漫性系膜硬化</td><td>心房颤动3型</td></tr>
<tr><td>Nakajo综合征</td><td>共济失调（毛细血管扩张症）</td><td>米勒综合征</td><td>心房颤动4型</td></tr>
<tr><td>Nance-Horan综合征</td><td>共济失调（听力损失和糖尿病）</td><td>米其林轮胎婴儿综合征</td><td>心房颤动6型</td></tr>
<tr><td>Navajo neurohepatopathy</td><td>共济失调（维生素E缺乏症）</td><td>米歇尔斯综合征</td><td>心房颤动7型</td></tr>
<tr><td>Naxos病</td><td>共济失调伴毛细血管扩张症样障碍</td><td>免疫球蛋白A缺乏症2型</td><td>心房颤动9型</td></tr>
<tr><td>Nestor-Guillermo早衰综合症</td><td>共济失调伴毛细血管扩张症样障碍2型</td><td>免疫球蛋白κ轻链缺陷</td><td>心房间隔缺损2型</td></tr>
<tr><td>Netherton综合征</td><td>共济失调伴眼球运动失用症3型</td><td>免疫缺陷（CD3-zeta缺陷）</td><td>心房停顿</td></tr>
<tr><td>Neu-Laxova综合征1型</td><td>共济失调伴眼球运动失用症4型</td><td>免疫缺陷（CD3-γ缺陷）</td><td>心房停顿2型</td></tr>
<tr><td>Neu-Laxova综合征2型</td><td>共济失调痉挛1型</td><td>免疫缺陷（ficolin 3缺乏）</td><td>心肌病</td></tr>
<tr><td>Newfoundland杆锥营养不良</td><td>共济失调痉挛2型</td><td>免疫缺陷（mapbp结合蛋白缺陷）</td><td>心肌梗死1型</td></tr>
<tr><td>Nicolaides-Baraitser综合征</td><td>共济失调痉挛3型</td><td>免疫缺陷，着丝粒不稳定，面部异常综合征2型</td><td>心脸皮肤综合征1型</td></tr>
<tr><td>Nijmegen破损综合征样障碍</td><td>共济失调痉挛4型</td><td>免疫缺陷，着丝粒不稳定，面部异常综合征3型</td><td>心脸皮肤综合征2型</td></tr>
<tr><td>Nonaka肌病</td><td>谷氨酸亚氨甲基转移酶缺乏症</td><td>免疫缺陷，着丝粒不稳定，面部异常综合征4型</td><td>心脸皮肤综合征3型</td></tr>
<tr><td>Noonan综合征</td><td>谷固醇血症</td><td>免疫缺陷12型</td><td>心脸皮肤综合征4型</td></tr>
<tr><td>Noonan综合征10型</td><td>谷胱甘肽过氧化物酶缺乏症</td><td>免疫缺陷12型</td><td>心律失常</td></tr>
<tr><td>Noonan综合征1型</td><td>谷胱甘肽合成酶缺乏症</td><td>免疫缺陷13型</td><td>心性脑病</td></tr>
<tr><td>Noonan综合征3型</td><td>股骨头缺血性坏死</td><td>免疫缺陷13型</td><td>心性脑病2型</td></tr>
<tr><td>Noonan综合征4型</td><td>骨脆性与挛缩</td><td>免疫缺陷15型</td><td>心性脑病3型</td></tr>
<tr><td>Noonan综合征5型</td><td>骨发育不全1型</td><td>免疫缺陷16型</td><td>心性脑病4型</td></tr>
<tr><td>Noonan综合征6型</td><td>骨发育不全2型</td><td>免疫缺陷17型</td><td>心血管系统疾病</td></tr>
<tr><td>Noonan综合征7型</td><td>骨发育不全3型</td><td>免疫缺陷18型</td><td>心脏瓣膜发育不良</td></tr>
<tr><td>Noonan综合征8型</td><td>骨发育异常，轻度侏儒症2型</td><td>免疫缺陷19型</td><td>心脏传导障碍</td></tr>
<tr><td>Noonan综合征9型</td><td>骨发育异常性老年状皮肤</td><td>免疫缺陷20型</td><td>心脏和大脑畸形综合征</td></tr>
<tr><td>North american indian童年肝硬化</td><td>骨干发育不良</td><td>免疫缺陷22型</td><td>心脏手综合征，Slovenian型</td></tr>
<tr><td>Norum病</td><td>骨骼Paget病6型</td><td>免疫缺陷23型</td><td>心脏圆锥动脉干畸形</td></tr>
<tr><td>NSDHL相关疾病</td><td>骨骼缺陷，生殖器发育不良，智力低下</td><td>免疫缺陷24型</td><td>心脏左侧发育不全综合征</td></tr>
<tr><td>N末端乙酰转移酶缺乏症</td><td>骨骼早发Paget病2型</td><td>免疫缺陷26型</td><td>心脏左侧发育不全综合征2型</td></tr>
<tr><td>N-乙酰不足</td><td>骨关节炎1型</td><td>免疫缺陷27b型</td><td>新生儿大疱性瞬态皮肤松懈</td></tr>
<tr><td>N综合征</td><td>骨关节炎3型</td><td>免疫缺陷28型</td><td>新生儿低血糖</td></tr>
<tr><td>Ochoa综合征</td><td>骨关节炎轻度软骨</td><td>免疫缺陷29型</td><td>新生儿肺动脉高压</td></tr>
<tr><td>Oculoauricular综合征</td><td>骨骺软骨异常（miura型）</td><td>免疫缺陷30型</td><td>新生儿肝内胆汁淤积症</td></tr>
<tr><td>Oculomaxillofacial发育不全</td><td>骨肉瘤</td><td>免疫缺陷31A型</td><td>新生儿肾上腺白质营养不良</td></tr>
<tr><td>Oculomelic肌发育不全</td><td>骨软骨发育不良</td><td>免疫缺陷31C型</td><td>新生儿糖尿病(先天性甲状腺功能低下)</td></tr>
<tr><td>Odontoonychodermal发育不良</td><td>骨软骨发育不良（symoens-barnes-gistelinck型）</td><td>免疫缺陷36型</td><td>新生儿炎症性皮肤和肠道疾病1型</td></tr>
<tr><td>Odontotrichomelic综合征</td><td>骨髓衰竭综合征2型</td><td>免疫缺陷37型</td><td>新生儿炎症性皮肤和肠道疾病2型</td></tr>
<tr><td>Ohdo综合征（X连锁）</td><td>骨髓衰竭综合征3型</td><td>免疫缺陷38型</td><td>新生儿永久糖尿病</td></tr>
<tr><td>OKT4抗原表位不足</td><td>骨髓纤维化</td><td>免疫缺陷39型</td><td>新生儿永久性糖尿病伴小脑发育不全</td></tr>
<tr><td>OKUR-CHUNG神经综合征</td><td>骨髓炎，无菌多灶性伴骨膜炎和脓疱</td><td>免疫缺陷40型</td><td>新生儿暂时性糖尿病1型</td></tr>
<tr><td>Omodysplasia 1型</td><td>骨髓增生异常综合征</td><td>免疫缺陷42型</td><td>新生儿暂时性糖尿病2型</td></tr>
<tr><td>Opitz G/BBB综合征</td><td>骨纤维发育不良</td><td>免疫缺陷44型</td><td>新生儿暂时性糖尿病3型</td></tr>
<tr><td>Opitz-Frias综合征</td><td>骨质疏松</td><td>免疫缺陷45型</td><td>新生儿暂时性紫绀</td></tr>
<tr><td>Opsismodysplasia</td><td>钴胺传递蛋白II缺乏症</td><td>免疫缺陷46型</td><td>新生儿致死性刚性和多灶性癫痫综合征</td></tr>
<tr><td>Orstavik Lindemann Solberg综合征</td><td>瓜氨酸血症II型</td><td>免疫缺陷47型</td><td>新生儿致死性肉碱棕榈酰转移酶II缺乏症</td></tr>
<tr><td>Osler出血性毛细血管扩张症</td><td>瓜氨酸血症I型</td><td>免疫缺陷8型</td><td>新生儿重症发病脑病畸形</td></tr>
<tr><td>Osteodysplastic原发性侏儒症1型</td><td>胍基乙酸甲基转移酶缺乏症</td><td>免疫缺陷X连锁（硫酸镁缺陷，EB病毒感染，以及肿瘤形成）</td><td>新生儿重症甲状旁腺功能亢进症</td></tr>
<tr><td>Osteoglophonic发育不良</td><td>关节和血管钙化</td><td>面部畸形，免疫缺陷，青斑和身材矮小</td><td>性腺发育不全与听觉功能障碍，常染色体隐性遗传</td></tr>
<tr><td>Otofaciocervical综合征</td><td>关节挛缩（Perthes病）</td><td>面肩肱型肌营养不良症</td><td>性腺功能减退，糖尿病，脱发，精神发育迟缓和心电图异常</td></tr>
<tr><td>Otofaciocervical综合征2型</td><td>关节挛缩（肾功能不全和胆汁淤积）</td><td>面肩肱型肌营养不良症2型</td><td>性腺机能减退伴有或无嗅觉丧失症10型</td></tr>
<tr><td>Otospondylomegaepiphyseal发育不良</td><td>关节挛缩（智力低下和癫痫发作）</td><td>苗勒管发育不良伴高雄</td><td>性腺机能减退伴有或无嗅觉丧失症11型</td></tr>
<tr><td>Pallister-Hall综合征</td><td>关节挛缩肾功能不全胆汁淤积综合征</td><td>膜性肾病</td><td>性腺机能减退伴有或无嗅觉丧失症13型</td></tr>
<tr><td>Pallister-Hall综合征2型</td><td>冠状动脉疾病（AD 1型）</td><td>末端关节弯曲5D型</td><td>性腺机能减退伴有或无嗅觉丧失症14型</td></tr>
<tr><td>Papillon–Lefèvre综合征</td><td>冠状动脉疾病（AD 2型）</td><td>末节关节挛缩1B型</td><td>性腺机能减退伴有或无嗅觉丧失症15型</td></tr>
<tr><td>Parkes Weber综合征</td><td>冠状动脉心脏疾病1型</td><td>末节关节挛缩2B型</td><td>性腺机能减退伴有或无嗅觉丧失症16型</td></tr>
<tr><td>PartingtonX-连锁智力障碍综合征</td><td>冠状动脉心脏疾病5型</td><td>末节关节弯曲型8型</td><td>性腺机能减退伴有或无嗅觉丧失症17型</td></tr>
<tr><td>PC-K6a</td><td>冠状动脉心脏疾病6型</td><td>末节肌病Markesbery-Griggs型</td><td>性腺机能减退伴有或无嗅觉丧失症18型</td></tr>
<tr><td>PEHO综合征</td><td>冠状动脉心脏疾病7型</td><td>末节肌病Tateyama型</td><td>性腺机能减退伴有或无嗅觉丧失症19型</td></tr>
<tr><td>Pelizaeus-Merzbacher病</td><td>冠状骨性愈合</td><td>墨蝶呤还原酶缺乏症</td><td>性腺机能减退伴有或无嗅觉丧失症20型</td></tr>
<tr><td>Pena-Shokeir综合征I型</td><td>胱氨酸病(非肾病型)</td><td>母乳中锌减少</td><td>性腺机能减退伴有或无嗅觉丧失症21型</td></tr>
<tr><td>Pendred综合征</td><td>胱氨酸尿症</td><td>钼辅不足（互补A组）</td><td>性腺机能减退伴有或无嗅觉丧失症22型</td></tr>
<tr><td>Penttinen-Aula综合征</td><td>胱氨酸尿症</td><td>钼辅不足（互补B组）</td><td>性腺机能减退伴有或无嗅觉丧失症7型</td></tr>
<tr><td>Perrault综合征2型</td><td>胱氨酸尿症（CBS缺乏）</td><td>钼辅不足（互补C组）</td><td>性腺机能减退伴有或无嗅觉丧失症8型</td></tr>
<tr><td>Perrault综合征4型</td><td>胱氨酸尿症（钴胺素代谢缺陷，CBLE互补型）</td><td>囊性脑白质病，无巨脑</td><td>性腺机能减退伴有或无嗅觉丧失症9型</td></tr>
<tr><td>Perrault综合征5型</td><td>胱硫醚尿症</td><td>囊性纤维化</td><td>性早熟2型</td></tr>
<tr><td>Perry综合征</td><td>腘翼状胬肉综合征</td><td>脑，室管膜下钙化和白内障的出血破坏</td><td>胸主动脉瘤和主动脉夹层</td></tr>
<tr><td>Peters叠加综合征</td><td>果糖二磷酸酶缺乏症</td><td>脑白质病伴白质消失</td><td>雄激素抵抗综合征</td></tr>
<tr><td>Pfeiffer综合征</td><td>果糖尿症</td><td>脑白质病伴肌张力障碍和运动神经病</td><td>须部假性毛囊炎</td></tr>
<tr><td>Phosphohydroxylysinuria</td><td>过敏毒素灭活因子缺乏症</td><td>脑白质病变​​伴共济失调</td><td>悬韧带粉状白内障3型</td></tr>
<tr><td>PI3K-δ活化综合征</td><td>过敏性鼻炎</td><td>脑白质营养不良，髓鞘形成不足10型</td><td>选择性齿发育不全，X连锁1型</td></tr>
<tr><td>Pick病</td><td>过氧化物酶体生物合成障​​碍（Zellweger综合征谱）</td><td>脑白质营养不良，髓鞘形成不足11型</td><td>选择性垂体对甲状腺激素不应症</td></tr>
<tr><td>Pierson综合征</td><td>过氧化物酶体生物合成障​​碍10A型</td><td>脑白质营养不良，髓鞘形成不足12型</td><td>选择性牙齿发育不全1X2</td></tr>
<tr><td>Pitt-Hopkins综合征</td><td>过氧化物酶体生物合成障​​碍11A型</td><td>脑白质营养不良，髓鞘形成不足13型</td><td>雪花玻璃体视网膜变性</td></tr>
<tr><td>Pitt-Hopkins综合征2型</td><td>过氧化物酶体生物合成障​​碍11B型</td><td>脑白质营养不良，髓鞘形成不足2型</td><td>血管病变，视网膜，脑脑白质营养不良</td></tr>
<tr><td>Pore​​tti-boltshauser综合征</td><td>过氧化物酶体生物合成障​​碍12A型</td><td>脑白质营养不良，髓鞘形成不足3型</td><td>血管瘤样纤维组织细胞瘤</td></tr>
<tr><td>Prader-Willi样综合征</td><td>过氧化物酶体生物合成障​​碍13A型</td><td>脑白质营养不良，髓鞘形成不足4型</td><td>血管性水肿(ACE抑制剂介导）</td></tr>
<tr><td>Prader-Willi综合征</td><td>过氧化物酶体生物合成障​​碍14B型</td><td>脑白质营养不良，髓鞘形成不足9型</td><td>血管性血友病，隐性遗传</td></tr>
<tr><td>Primrose综合征</td><td>过氧化物酶体生物合成障​​碍1B型</td><td>脑白质营养不良和获得性畸形伴有或无张力障碍</td><td>血管性血友病1型</td></tr>
<tr><td>Protan缺陷</td><td>过氧化物酶体生物合成障​​碍2A型</td><td>脑穿通畸形1型</td><td>血管性血友病2型</td></tr>
<tr><td>Proteus综合征</td><td>过氧化物酶体生物合成障​​碍3A型</td><td>脑穿通畸形2型</td><td>血红蛋白（高氧饱和度）</td></tr>
<tr><td>Proud Levine Carpenter综合征</td><td>过氧化物酶体生物合成障​​碍4A型</td><td>脑淀粉样血管病</td><td>血红蛋白H病</td></tr>
<tr><td>Pseudo-Hurler polydystrophy</td><td>过氧化物酶体生物合成障​​碍4B型</td><td>脑动静脉畸形</td><td>血红蛋白SS病</td></tr>
<tr><td>Pseudo-Pelger-Huët异常</td><td>过氧化物酶体生物合成障​​碍5A型</td><td>脑动脉病</td><td>血红素加氧酶1缺乏症</td></tr>
<tr><td>PTEN错构瘤综合征</td><td>过氧化物酶体生物合成障​​碍5B型</td><td>脑动脉病（AD)</td><td>血胡萝卜素过多和维生素A缺乏症</td></tr>
<tr><td>Pyle干骺端发育不良</td><td>过氧化物酶体生物合成障​​碍6A型</td><td>脑动脉病（AR)</td><td>血浆纤维不足</td></tr>
<tr><td>Quebec血小板异常</td><td>过氧化物酶体生物合成障​​碍6B型</td><td>脑发育不全（神经病变，鱼鳞病，和掌跖角化症）</td><td>血清白细胞介素6可溶性受体水平</td></tr>
<tr><td>Rapadilino综合征</td><td>过氧化物酶体生物合成障​​碍7A型</td><td>脑海绵状血管畸形</td><td>血清白细胞介素6水平</td></tr>
<tr><td>Rapp-Hodgkin外胚层发育不良综合症</td><td>过氧化物酶体生物合成障​​碍7B型</td><td>脑海绵状血管瘤1型</td><td>血清脂联素1水平</td></tr>
<tr><td>RAS相关的自身免疫性疾病</td><td>过氧化物酶体生物合成障​​碍8A型</td><td>脑海绵状血管瘤2型</td><td>血色病1型</td></tr>
<tr><td>Reifenstein综合征</td><td>过氧化物酶体生物合成障​​碍8B型</td><td>脑海绵状血管瘤3型</td><td>血色病2A型</td></tr>
<tr><td>Reis-Bucklers角膜营养不良</td><td>过氧化物酶体生物合成障​​碍9B型</td><td>脑积水</td><td>血色病2B型</td></tr>
<tr><td>Renal adysplasia</td><td>过氧化物酶体脂酰辅酶A还原酶1紊乱</td><td>脑积水非综合征2型，常染色体隐性遗传</td><td>血色病3型</td></tr>
<tr><td>Renpenning综合征1型</td><td>海蓝色组织细胞综合征</td><td>脑胶质瘤易感性1型</td><td>血色病型4型</td></tr>
<tr><td>Rett综合征</td><td>海绵状脑病</td><td>脑胶质瘤易感性2型</td><td>血色病型5型</td></tr>
<tr><td>Rett综合征（先天性变异）</td><td>汗孔角化病1型</td><td>脑胶质瘤易感性3型</td><td>血栓素合成不足</td></tr>
<tr><td>Revesz综合征</td><td>汗孔角化病7型</td><td>脑胶质瘤易感性9型</td><td>血栓形成倾向</td></tr>
<tr><td>Richieri Costa Pereira 综合征</td><td>汗孔角化病8型</td><td>脑裂畸形</td><td>血栓形成倾向，X连锁，凝血因子IX缺陷</td></tr>
<tr><td>Rienhoff综合征</td><td>汗孔角化病9型</td><td>脑颅皮肤脂肪过多症</td><td>血栓形成倾向，蛋白S缺乏</td></tr>
<tr><td>Ritscher-schinzel综合征2型</td><td>汗孔角化病Mibelli型</td><td>脑桥小脑发育不全10型</td><td>血栓形成倾向，活化蛋白C抗性</td></tr>
<tr><td>Roberts-SC短肢畸形综合征</td><td>核黄素缺乏症</td><td>脑桥小脑发育不全1b型</td><td>血栓形成倾向，血栓调节蛋白缺陷</td></tr>
<tr><td>Robinow Sorauf综合征</td><td>核糖-5-磷酸异构酶缺乏症</td><td>脑桥小脑发育不全1C型</td><td>血栓形成倾向，组氨酸糖蛋白增多</td></tr>
<tr><td>Robinow综合征</td><td>颌骨纤维异常增殖症</td><td>脑桥小脑发育不全1型</td><td>血小板活化因子乙酰缺乏症</td></tr>
<tr><td>Robinow综合征（AD 2型）</td><td>赫尔利综合征</td><td>脑桥小脑发育不全2A型</td><td>血小板减少症，X连锁</td></tr>
<tr><td>Robinow综合征（AD 3型）</td><td>黑斑息肉综合征</td><td>脑桥小脑发育不全2B型</td><td>血小板减少症，血小板功能异常，溶血和不平衡珠蛋白合成</td></tr>
<tr><td>Robinow综合征（AR）</td><td>黑色素瘤，恶性皮肤10型</td><td>脑桥小脑发育不全2C型</td><td>血小板减少症2型</td></tr>
<tr><td>Roifman综合征</td><td>黑色素瘤，胰腺癌综合征</td><td>脑桥小脑发育不全2D型</td><td>血小板减少症4型</td></tr>
<tr><td>Rothmund-Thomson逊综合症</td><td>黑色素瘤星形细胞瘤综合征</td><td>脑桥小脑发育不全2E型</td><td>血小板减少症5型</td></tr>
<tr><td>Rotor综合征</td><td>黑酸尿症</td><td>脑桥小脑发育不全2F型</td><td>血小板减少症6型</td></tr>
<tr><td>Roussy-Levy 综合征</td><td>黑头粉刺痣</td><td>脑桥小脑发育不全3型</td><td>血小板膜糖蛋白IV不足</td></tr>
<tr><td>Rubinstein-Taybi综合症</td><td>亨氏体贫血</td><td>脑桥小脑发育不全4型</td><td>血小板无力症</td></tr>
<tr><td>Rubinstein-Taybi综合症2型</td><td>亨廷顿病样1型</td><td>脑桥小脑发育不全6型</td><td>血小板型出血性疾病11型</td></tr>
<tr><td>Ruijs-aalfs综合征</td><td>亨廷顿病样2型</td><td>脑桥小脑发育不全8型</td><td>血小板型出血性疾病13型</td></tr>
<tr><td>Russell-Silver综合症</td><td>亨廷顿舞蹈病</td><td>脑视网膜微血管病</td><td>血小板型出血性疾病15型</td></tr>
<tr><td>Saethre-Chotzen综合征</td><td>横纹肌肉瘤1型</td><td>脑室囊肿性肾病</td><td>血小板型出血性疾病16型</td></tr>
<tr><td>Schimke immunoosseous发育不良</td><td>横纹肌样瘤倾向综合征1型</td><td>脑室周围结节性异位6型</td><td>血小板型出血性疾病17型</td></tr>
<tr><td>Schindler疾病1型</td><td>横纹肌样瘤倾向综合征2型</td><td>脑室周围异位（AR）</td><td>血小板型出血性疾病18型</td></tr>
<tr><td>Schinzel-Giedion综合征</td><td>红细胞AMP脱氨酶缺乏</td><td>脑室周围异位（Ehlers-Danlos变异）</td><td>血小板型出血性疾病19型</td></tr>
<tr><td>Schneckenbecken发育不良</td><td>红细胞的丙酮酸激酶缺乏症</td><td>脑小血管病伴出血</td><td>血小板型出血性疾病20型</td></tr>
<tr><td>Schnyder结晶角膜营养不良</td><td>红细胞谷胱甘肽合成酶缺乏症</td><td>脑眼面骨骼综合征</td><td>血小板型出血性疾病8型</td></tr>
<tr><td>Schopf-Schulz-Passarge综合征</td><td>红细胞乳酸转运缺陷</td><td>脑眼面骨骼综合征2型</td><td>血小板型出血性疾病9型</td></tr>
<tr><td>Schwartz Jampel综合征1型</td><td>红细胞三磷酸腺苷升高</td><td>脑眼面骨骼综合征4型</td><td>血小板增多症</td></tr>
<tr><td>SCID，II类HLA抗原缺乏</td><td>红细胞生成性原卟啉症</td><td>脑叶酸缺乏</td><td>血小板增多症3型</td></tr>
<tr><td>SCN2A相关全身性癫痫伴高热惊厥</td><td>红细胞生成原卟啉，X连锁</td><td>内分泌病综合征（脱发和神经缺陷）</td><td>寻常型鱼鳞病</td></tr>
<tr><td>SCOTT综合征</td><td>红椎鱼鳞病（Curth Macklin型）</td><td>内因子缺乏症</td><td>荨麻疹</td></tr>
<tr><td>Sebastian综合症</td><td>虹膜角膜小梁发育不全</td><td>内脏异位2型</td><td>牙本质发育不良I型</td></tr>
<tr><td>Senior-Loken综合征1型</td><td>后鼻孔闭锁及淋巴水肿</td><td>内脏异位4型</td><td>牙本质发育不全III型</td></tr>
<tr><td>Senior-Loken综合征4型</td><td>后极性白内障2型</td><td>内脏异位5型</td><td>牙本质发育不全II型</td></tr>
<tr><td>Senior-Loken综合征5型</td><td>后极性白内障3型</td><td>内脏异位6型</td><td>牙齿萌出失败</td></tr>
<tr><td>Senior-Loken综合征6型</td><td>后极性白内障4型</td><td>内脏异位7型</td><td>牙先天缺失，结直肠癌综合征</td></tr>
<tr><td>Senior-Loken综合征7型</td><td>后柱共济失调与视网膜色素变性</td><td>内脏异位X连锁型</td><td>牙龈纤维瘤病1型</td></tr>
<tr><td>Senior-Loken综合征8型</td><td>琥珀酸半醛脱氢酶缺乏症</td><td>尼曼-皮克病A型</td><td>牙釉质发育不全，甲床剥离，少汗症</td></tr>
<tr><td>Senior-Loken综合征9型</td><td>琥珀酰辅酶A乙酰转移酶缺乏症</td><td>尼曼-匹克病B型</td><td>亚氨基甘氨酸尿症</td></tr>
<tr><td>Serkal综合征</td><td>滑膜肉瘤</td><td>尼曼-匹克病C1型</td><td>亚急性neuronopathic Gaucher病</td></tr>
<tr><td>SeSAME综合征</td><td>化脓性关节炎，坏疽性脓皮病和痤疮</td><td>尼曼-匹克病C2型</td><td>亚硫酸盐氧化酶缺乏症</td></tr>
<tr><td>Shaheen 综合征</td><td>环状鱼鳞病伴表皮角化</td><td>年龄相关黄斑变性15型</td><td>烟雾病2型</td></tr>
<tr><td>SHORT综合征</td><td>黄斑变性，X连锁</td><td>年龄相关性黄斑变性10型</td><td>烟雾病5型</td></tr>
<tr><td>Shprintzen-Goldberg综合征</td><td>黄斑变性，早发</td><td>年龄相关性黄斑变性11型</td><td>烟雾病6型伴贲门失弛缓症</td></tr>
<tr><td>Shprintzen综合征</td><td>黄斑角膜营养不良I型</td><td>年龄相关性黄斑变性12型</td><td>烟瘾</td></tr>
<tr><td>Shwachman综合征</td><td>黄斑营养不良2型</td><td>年龄相关性黄斑变性13型</td><td>延胡索酸酶缺乏症</td></tr>
<tr><td>Shy-Drager综合征</td><td>黄斑营养不良4型</td><td>年龄相关性黄斑变性14型</td><td>严重的生长受限伴鲜明的沉积相</td></tr>
<tr><td>Sialuria</td><td>黄斑营养不良5型</td><td>年龄相关性黄斑变性1型</td><td>严重肥胖症，瘦蛋白缺乏</td></tr>
<tr><td>Siderius X-连锁智力障碍综合征</td><td>黄斑营养不良伴中央锥混乱</td><td>年龄相关性黄斑变性2型</td><td>严重软骨发育不全与发育迟缓和黑棘皮病</td></tr>
<tr><td>Siemens大疱性鱼鳞病</td><td>黄斑中心凹发育不全和眼前段发育不全</td><td>年龄相关性黄斑变性3型</td><td>严重先天性白细胞减少7型</td></tr>
<tr><td>Simpson-Golabi-Behmel综合征</td><td>黄斑中心凹发育不全和早老性白内障综合征</td><td>年龄相关性黄斑变性4型</td><td>岩藻糖苷贮积症</td></tr>
<tr><td>Simpson-Golabi-Behmel综合征2型</td><td>黄嘌呤尿2型</td><td>年龄相关性黄斑变性5型</td><td>岩藻糖转移酶6缺乏症</td></tr>
<tr><td>Singleton-Merten综合征1型</td><td>黄嘌呤氧化酶缺乏症</td><td>年龄相关性黄斑变性6型</td><td>炎症性肠病10型</td></tr>
<tr><td>Singleton-Merten综合征2型</td><td>灰色血小板综合征</td><td>年龄相关性黄斑变性7型</td><td>炎症性肠病13型</td></tr>
<tr><td>Sjögren-Larsson综合征</td><td>混合性软骨瘤病</td><td>年龄相关性黄斑变性8型</td><td>炎症性肠病14型</td></tr>
<tr><td>Smith McCort发育不良</td><td>获得性局部脂肪代谢障碍</td><td>年龄相关性黄斑变性9型</td><td>炎症性肠病17型</td></tr>
<tr><td>Smith McCort发育不良2型</td><td>获得性血红蛋白H病</td><td>黏多糖贮积症VI型</td><td>炎症性肠病19型</td></tr>
<tr><td>Smith-Kingsmore综合征</td><td>肌氨酸脱氢酶缺乏症</td><td>黏液性脂肪肉瘤</td><td>炎症性肠病1型</td></tr>
<tr><td>Smith-Lemli-Opitz综合征</td><td>肌病（X连锁伴过度自噬）</td><td>鸟氨酸氨基转移酶缺乏症</td><td>炎症性肠病25型</td></tr>
<tr><td>Smith-Magenis综合征</td><td>肌病（空泡伴casq1聚集）</td><td>鸟氨酸氨甲酰不足</td><td>炎症性肠病28型</td></tr>
<tr><td>Snyder Robinson综合征</td><td>肌病，scapulohumeroperoneal型</td><td>尿道下裂1型X连锁</td><td>眼白化病（感音神经性耳聋）</td></tr>
<tr><td>Sorsby基底营养不良</td><td>肌病，管状骨料2型</td><td>尿道下裂2型X连锁</td><td>眼白化病1B型</td></tr>
<tr><td>Sotos综合征1型</td><td>肌病，乳酸性酸中毒，铁粒幼细胞贫血1型</td><td>尿苷5-单磷酸水解酶缺乏症</td><td>眼白化病3型</td></tr>
<tr><td>Sotos综合征2型</td><td>肌病，乳酸性酸中毒，铁粒幼细胞贫血2型</td><td>尿苷水合酶缺乏症</td><td>眼白化病4型</td></tr>
<tr><td>Spiegler-Brooke综合征</td><td>肌病，体重减轻（X连锁）</td><td>尿酸肾结石</td><td>眼白化病7型</td></tr>
<tr><td>Spondyloocular综合征</td><td>肌病，透明小体，AR</td><td>凝血因子V缺乏症</td><td>眼白化病II型</td></tr>
<tr><td>Stargardt病1型</td><td>肌病伴管状聚集</td><td>脓疱型牛皮癣15型</td><td>眼白化病I型</td></tr>
<tr><td>Stargardt病4型</td><td>肌病伴体位肌肉萎缩，X连锁</td><td>努南样综合征伴毛发兴盛</td><td>眼部缺损</td></tr>
<tr><td>STAR综合征</td><td>肌病伴锥体外系体征</td><td>努南综合征样疾病</td><td>眼睑痉挛</td></tr>
<tr><td>Steel综合征</td><td>肌病中性脂质贮积症</td><td>疟疾</td><td>眼前段间充质组织发育不全</td></tr>
<tr><td>Steinert强直性肌营养不良症</td><td>肌球蛋白性肌病</td><td>女性特有κ阿片受体激动剂型镇痛增加</td><td>眼缺损（葡萄膜，与唇腭裂和智力迟钝）</td></tr>
<tr><td>Stickler综合征1型</td><td>肌肉AMP脱氨酶缺乏症</td><td>帕金森病11型</td><td>眼牙指发育不良</td></tr>
<tr><td>Stickler综合征2型</td><td>肌肉肥大</td><td>帕金森病13型</td><td>眼牙指发育不良（AR）</td></tr>
<tr><td>Stickler综合征3型</td><td>肌肉生长抑制素相关肌肉肥厚</td><td>帕金森病14型</td><td>眼牙指综合征</td></tr>
<tr><td>Stickler综合征4型</td><td>肌肉松弛疾病</td><td>帕金森病15型</td><td>眼咽型肌营养不良症</td></tr>
<tr><td>Stickler综合征5型</td><td>肌肉糖原贮积病O型</td><td>帕金森病17型</td><td>羊水过多，巨脑和症状性癫痫</td></tr>
<tr><td>Stickler综合征I型，非综合征性眼病</td><td>肌酸磷酸激酶</td><td>帕金森病18型</td><td>胰蛋白酶缺乏症</td></tr>
<tr><td>Stiff皮肤综合征</td><td>肌萎缩性脊髓侧索硬化联合帕金森症1型</td><td>帕金森病19型</td><td>胰岛素抵抗糖尿病和黑棘皮病</td></tr>
<tr><td>Sting相关血管病变</td><td>肌萎缩性脊髓侧索硬化症</td><td>帕金森病1型</td><td>胰岛素样生长因子I缺乏症</td></tr>
<tr><td>Stocco dos Santos综合征</td><td>肌萎缩性脊髓侧索硬化症10型</td><td>帕金森病20型</td><td>胰岛素样生长因子抗性1型</td></tr>
<tr><td>stomatin缺陷</td><td>肌萎缩性脊髓侧索硬化症11型</td><td>帕金森病21型</td><td>胰岛素依赖型糖尿病分泌性腹泻综合症</td></tr>
<tr><td>Sturge-Weber综合征</td><td>肌萎缩性脊髓侧索硬化症12型</td><td>帕金森病22型</td><td>胰岛细胞增生症</td></tr>
<tr><td>Stuve-Wiedemann综合征</td><td>肌萎缩性脊髓侧索硬化症14型</td><td>帕金森病23型</td><td>胰腺癌1型</td></tr>
<tr><td>Sveinsson脉络膜视网膜萎缩</td><td>肌萎缩性脊髓侧索硬化症15型</td><td>帕金森病2型</td><td>胰腺癌2型</td></tr>
<tr><td>Takenouchi-Kosaki综合征</td><td>肌萎缩性脊髓侧索硬化症16型</td><td>帕金森病4型</td><td>胰腺癌3型</td></tr>
<tr><td>Tangier病</td><td>肌萎缩性脊髓侧索硬化症17型</td><td>帕金森病5型</td><td>胰腺癌4型</td></tr>
<tr><td>TARDBP相关额颞叶痴呆</td><td>肌萎缩性脊髓侧索硬化症18型</td><td>帕金森病6型</td><td>胰腺发育不全2型</td></tr>
<tr><td>TARP综合征</td><td>肌萎缩性脊髓侧索硬化症19型</td><td>帕金森病7型</td><td>胰腺发育不全和先天性心脏疾病</td></tr>
<tr><td>Tatton-Brown-rahman综合征</td><td>肌萎缩性脊髓侧索硬化症1型</td><td>帕金森病8型</td><td>胰腺外分泌功能不全，红细胞生成异常性贫血和骨质增生颅骨</td></tr>
<tr><td>Tay-Sachs，变种AB</td><td>肌萎缩性脊髓侧索硬化症20型</td><td>帕金森病9型</td><td>胰脏癌</td></tr>
<tr><td>Tay-Sachs病</td><td>肌萎缩性脊髓侧索硬化症22型</td><td>帕金森痴呆综合征</td><td>胰脂肪酶缺乏症</td></tr>
<tr><td>Temple-Baraitser综合征</td><td>肌萎缩性脊髓侧索硬化症2型</td><td>帕金森痉挛（X连锁）</td><td>移植物抗宿主病</td></tr>
<tr><td>Temtamy 上肢内侧短指综合征</td><td>肌萎缩性脊髓侧索硬化症4型</td><td>膀胱恶性肿瘤</td><td>遗传性卟啉症</td></tr>
<tr><td>Temtamy综合征</td><td>肌萎缩性脊髓侧索硬化症6型</td><td>膀胱输尿管返流2</td><td>遗传性肠病性肢端皮炎</td></tr>
<tr><td>Tenorio综合征</td><td>肌萎缩性脊髓侧索硬化症8型</td><td>膀胱输尿管返流3</td><td>遗传性持续性甲胎蛋白缺乏症</td></tr>
<tr><td>THIAMINE代谢功能障碍综合征5型</td><td>肌萎缩性脊髓侧索硬化症9型</td><td>膀胱输尿管返流8</td><td>遗传性出血性毛细血管扩张2型</td></tr>
<tr><td>Thiel-Behnke角膜营养不良</td><td>肌纤维肌病（BAG3相关）</td><td>胚胎横纹肌肉瘤2型</td><td>遗传性泛发性色素异常症3型</td></tr>
<tr><td>Tietze症候群</td><td>肌纤维肌病（ZASP相关）</td><td>皮肤/毛发/眼色素沉着10型</td><td>遗传性非息肉病性结直肠癌7型</td></tr>
<tr><td>Timothy综合征</td><td>肌纤维肌病（细丝蛋白C-相关）</td><td>皮肤/毛发/眼色素沉着11型</td><td>遗传性非息肉病性结直肠癌型6型</td></tr>
<tr><td>TNF受体相关周期性发热综合征</td><td>肌纤维肌病1型</td><td>皮肤/毛发/眼色素沉着1型</td><td>遗传性非息肉病性结直肠癌型8型</td></tr>
<tr><td>Townes综合征</td><td>肌眼脑病</td><td>皮肤/毛发/眼色素沉着2型</td><td>遗传性非息肉性大肠癌4型</td></tr>
<tr><td>Troyer综合征</td><td>肌硬化症</td><td>皮肤/毛发/眼色素沉着3型</td><td>遗传性非息肉性大肠癌5型</td></tr>
<tr><td>Turcot综合征</td><td>肌张力障碍10型</td><td>皮肤/毛发/眼色素沉着4型</td><td>遗传性感觉迟钝与无汗痛</td></tr>
<tr><td>T细胞免疫缺陷，反复感染，和自身免疫有或无心脏畸形</td><td>肌张力障碍12型</td><td>皮肤/毛发/眼色素沉着5型</td><td>遗传性感觉和自主神经病Ⅶ型</td></tr>
<tr><td>T细胞免疫缺陷，先天性脱发及指甲营养不良</td><td>肌张力障碍16型</td><td>皮肤/毛发/眼色素沉着6型</td><td>遗传性感觉和自主神经病VI型</td></tr>
<tr><td>T细胞失活型免疫功能不全1型</td><td>肌张力障碍1型</td><td>皮肤/毛发/眼色素沉着7型</td><td>遗传性感觉和自主神经病变IC型</td></tr>
<tr><td>T细胞失活型免疫功能不全2型</td><td>肌张力障碍23型</td><td>皮肤/毛发/眼色素沉着8型</td><td>遗传性感觉和自主神经病变IIA型</td></tr>
<tr><td>T细胞受体α/β不足</td><td>肌张力障碍24型</td><td>皮肤/毛发/眼色素沉着9型</td><td>遗传性感觉和自主神经病变IIB型</td></tr>
<tr><td>UDP葡萄糖-4-差向异构酶不足</td><td>肌张力障碍25型</td><td>皮肤脆弱羊毛毛症</td><td>遗传性感觉和自主神经病变IIC型</td></tr>
<tr><td>UD葡萄糖-己糖-1-磷酸-尿甙基转化酶尿甙基转化酶</td><td>肌张力障碍26型</td><td>皮肤恶性黑色素瘤1型</td><td>遗传性感觉和自主型神经病</td></tr>
<tr><td>Ullrich先天性肌营养不良</td><td>肌张力障碍27型</td><td>皮肤恶性黑色素瘤2型</td><td>遗传性感觉神经病伴痉挛性截瘫</td></tr>
<tr><td>Ullrich先天性肌营养不良2</td><td>肌张力障碍2型</td><td>皮肤恶性黑色素瘤3型</td><td>遗传性感觉神经病变1D型</td></tr>
<tr><td>Unverricht-LUNDBORG综合征</td><td>肌张力障碍3型</td><td>皮肤恶性黑色素瘤5型</td><td>遗传性感觉神经病变IE型</td></tr>
<tr><td>Upshaw-Schulman综合征</td><td>肌张力障碍5型</td><td>皮肤恶性黑色素瘤6型</td><td>遗传性感觉神经病变IF型</td></tr>
<tr><td>Urofacial综合征2型</td><td>肌张力障碍6型</td><td>皮肤恶性黑色素瘤8型</td><td>遗传性果糖尿症</td></tr>
<tr><td>Usher综合征1C型</td><td>肌阵挛伴癫痫及无规则红纤维</td><td>皮肤恶性黑色素瘤9型</td><td>遗传性混合息肉综合征2型</td></tr>
<tr><td>Usher综合征1D型</td><td>肌阵挛失张力癫痫</td><td>皮肤毛细血管扩张和癌症综合征</td><td>遗传性肌病伴乳酸性酸中毒</td></tr>
<tr><td>Usher综合征1F型</td><td>肌阵挛性肌张力障碍</td><td>皮肤松弛(AD 1型)</td><td>遗传性肌病早期呼吸衰竭</td></tr>
<tr><td>Usher综合征1G型</td><td>肌质管肌病</td><td>皮肤松弛(AD 2型)</td><td>遗传性角膜炎</td></tr>
<tr><td>Usher综合征1J型</td><td>基底节疾病</td><td>皮肤松弛(AD 3型)</td><td>遗传性惊跳症</td></tr>
<tr><td>Usher综合征1型</td><td>基底细胞癌7型</td><td>皮肤松弛(X连锁型)</td><td>遗传性口形红细胞增多2型</td></tr>
<tr><td>Usher综合征2A型</td><td>畸形性发育不良</td><td>皮肤松弛1B型</td><td>遗传性淋巴水肿IC型</td></tr>
<tr><td>Usher综合征2C型</td><td>激肽释放酶（尿活性降低）</td><td>皮肤松弛2B型</td><td>遗传性淋巴水肿ID型</td></tr>
<tr><td>Usher综合征2D型</td><td>极长链酰基辅酶A脱氢酶缺乏症</td><td>皮肤松弛3B型</td><td>遗传性淋巴水肿III型</td></tr>
<tr><td>Usher综合征3A型</td><td>急性发热性皮肤粘膜淋巴结综合征</td><td>皮肤松弛IA型</td><td>遗传性淋巴水肿I型</td></tr>
<tr><td>Usher综合征3B型</td><td>急性反复性肌红蛋白尿</td><td>皮肤松弛伴严重的肺，胃肠道和泌尿系统异常</td><td>遗传性弥漫性白质脑病伴球状体</td></tr>
<tr><td>Vacterl相关脑积水</td><td>急性间歇性卟啉症</td><td>皮肤松弛-角膜混浊-发育不全综合征</td><td>遗传性弥漫性胃癌</td></tr>
<tr><td>Vacterl相关脑积水，X连锁</td><td>急性酒精过敏</td><td>皮肤松弛与骨营养不良</td><td>遗传性脑淀粉样血管病（Icelandic型）</td></tr>
<tr><td>Van Buchem病2型</td><td>急性淋巴细胞白血病</td><td>皮肤严重不​​良反应</td><td>遗传性凝血因子IX缺乏症</td></tr>
<tr><td>Van der Woude综合征</td><td>急性淋巴细胞白血病3型</td><td>皮肤异色，遗传性纤维化，肌腱挛缩，肌病，肺纤维化</td><td>遗传性凝血因子VIII缺乏症</td></tr>
<tr><td>Van der Woude综合征2型</td><td>急性噬神经细胞Gaucher病</td><td>皮肤异色症伴中性粒细胞减少</td><td>遗传性凝血因子XI缺乏症</td></tr>
<tr><td>Van Maldergem Wetzburger Verloes综合征</td><td>急性髓性白血病</td><td>皮肤皱折，先天性对称畸形2型</td><td>遗传性前列腺癌12型</td></tr>
<tr><td>Van Maldergem综合征2</td><td>急性早幼粒白血病</td><td>皮纹病</td><td>遗传性前列腺癌13型</td></tr>
<tr><td>VATER相关</td><td>脊髓小脑性共济失调，AR 10型</td><td>皮炎过敏性2型</td><td>遗传性前列腺癌1型</td></tr>
<tr><td>Verheij综合征</td><td>脊髓小脑性共济失调，AR 11型</td><td>皮质发育不良伴局灶性癫痫综合征</td><td>遗传性前列腺癌2型</td></tr>
<tr><td>Verloes Bourguignon综合征</td><td>脊髓小脑性共济失调，AR 12型</td><td>皮质发育不良伴其他脑畸形1型</td><td>遗传性乳腺癌和卵巢癌综合征</td></tr>
<tr><td>VII因子缺乏症</td><td>脊髓小脑性共济失调，AR 13型</td><td>皮质发育不良伴其他脑畸形2型</td><td>遗传性神经节细胞瘤和嗜铬细胞瘤综合征</td></tr>
<tr><td>Vohwinkel综合征</td><td>脊髓小脑性共济失调，AR 14型</td><td>皮质发育不良伴其他脑畸形3型</td><td>遗传性神经痛肌萎缩</td></tr>
<tr><td>von Eulenburg先天性肌强直</td><td>脊髓小脑性共济失调，AR 15型</td><td>皮质发育不良伴其他脑畸形4型</td><td>遗传性肾上腺皮质癌</td></tr>
<tr><td>Von Hippel-Lindau综合征</td><td>脊髓小脑性共济失调，AR 16型</td><td>皮质发育不良伴其他脑畸形5型</td><td>遗传性特发性震颤1型</td></tr>
<tr><td>V因子和VIII因子结合缺乏2型</td><td>脊髓小脑性共济失调，AR 17型</td><td>皮质发育不良伴其他脑畸形6型</td><td>遗传性铁粒幼细胞性贫血</td></tr>
<tr><td>Wagner综合征</td><td>脊髓小脑性共济失调，AR 18型</td><td>皮质畸形</td><td>遗传性听力损失和耳聋</td></tr>
<tr><td>Waldenstrom巨球蛋白血症</td><td>脊髓小脑性共济失调，AR 1型</td><td>皮质类固醇结合球蛋白缺乏症</td><td>遗传性舞蹈病</td></tr>
<tr><td>Warburg micro综合征1型</td><td>脊髓小脑性共济失调，AR 20型</td><td>皮质酮缺陷1型</td><td>遗传性细胞增多症</td></tr>
<tr><td>Warburg micro综合征2型</td><td>脊髓小脑性共济失调，AR 21型</td><td>皮质酮缺陷2型</td><td>遗传性先天性面瘫3型</td></tr>
<tr><td>Warburg micro综合征3型</td><td>脊髓小脑性共济失调，AR 22型</td><td>脾发育不全</td><td>遗传性血管病</td></tr>
<tr><td>Warburg micro综合征4型</td><td>脊髓小脑性共济失调，AR 23型</td><td>偏头痛</td><td>遗传性血管神经性水肿伴正常的C1酯酶抑制剂活性</td></tr>
<tr><td>Warsaw断裂综合征</td><td>脊髓小脑性共济失调，AR 2型</td><td>偏头痛伴有或无先兆13型</td><td>遗传性血管水肿1型</td></tr>
<tr><td>Weaver综合征</td><td>脊髓小脑性共济失调，AR 5型</td><td>胼胝体不全性白内障免疫缺陷</td><td>遗传性血栓形成倾向，蛋白质C缺乏症，AD</td></tr>
<tr><td>Webb-Dattani综合征</td><td>脊髓小脑性共济失调，AR 8型</td><td>胼胝体发育不良（智力低下，眼部缺损，以及小颌畸形）</td><td>遗传性血栓形成倾向，蛋白质C缺乏症，AR</td></tr>
<tr><td>Weill-Marchesani样综合征</td><td>脊髓小脑性共济失调10型</td><td>胼胝体发育不全（面部畸形和小脑性共济失调）</td><td>遗传性眼球萎缩</td></tr>
<tr><td>Weill-Marchesani综合征1型</td><td>脊髓小脑性共济失调11型</td><td>胼胝体局部发育不全（X连锁）</td><td>遗传性胰腺炎</td></tr>
<tr><td>Weill-Marchesani综合征2型</td><td>脊髓小脑性共济失调12型</td><td>嘌呤核苷磷酸化酶缺乏</td><td>遗传性硬纤维瘤疾病</td></tr>
<tr><td>Weill-Marchesani综合征3型</td><td>脊髓小脑性共济失调13型</td><td>贫血（AD）</td><td>遗传性运动和感觉神经病（Okinawa型）</td></tr>
<tr><td>Weissenbacher-Zweymuller综合征</td><td>脊髓小脑性共济失调14型</td><td>贫血（AR）</td><td>遗传性运动和感觉神经病VIB型</td></tr>
<tr><td>Werdnig-Hoffmann病</td><td>脊髓小脑性共济失调17型</td><td>贫血（G6PD缺乏）</td><td>遗传性运动和视神经萎缩感觉神经病变</td></tr>
<tr><td>Werner综合征</td><td>脊髓小脑性共济失调19型</td><td>贫血（Ib型）</td><td>遗传性震颤4型</td></tr>
<tr><td>WFS1相关疾病</td><td>脊髓小脑性共济失调1型</td><td>脯氨酸肽酶缺乏症</td><td>遗传性震颤5型</td></tr>
<tr><td>Wiedemann-Steiner综合征</td><td>脊髓小脑性共济失调21型</td><td>脯氨酸脱氢酶缺乏症</td><td>遗传性中性粒细胞增多</td></tr>
<tr><td>Williams综合征</td><td>脊髓小脑性共济失调23型</td><td>葡聚糖体肌病1型</td><td>乙基丙脑病</td></tr>
<tr><td>Wilson-TurnerX连锁智力障碍综合征</td><td>脊髓小脑性共济失调26型</td><td>葡聚糖体肌病2型</td><td>乙酰辅酶A羧化酶缺乏症</td></tr>
<tr><td>Wilson症</td><td>脊髓小脑性共济失调27型</td><td>葡萄胎</td><td>乙酰辅酶A乙酰基转移酶-2缺乏症</td></tr>
<tr><td>Winchester综合症</td><td>脊髓小脑性共济失调28型</td><td>葡萄糖-6-磷酸运输缺陷症</td><td>乙酰辅酶A乙酰转移酶缺乏症</td></tr>
<tr><td>Wiskott-Aldrich综合征2型</td><td>脊髓小脑性共济失调2型</td><td>普遍的糖皮质激素抵抗性</td><td>异丁酰辅酶A脱氢酶缺乏症</td></tr>
<tr><td>Wolcott-Rallison发育不良</td><td>脊髓小脑性共济失调31型</td><td>普遍显性营养不良大疱性表皮松解</td><td>异染性脑白质退化症</td></tr>
<tr><td>Wolff-Parkinson-White综合征</td><td>脊髓小脑性共济失调35型</td><td>气管食管瘘</td><td>异戊酰辅酶A脱氢酶缺乏症</td></tr>
<tr><td>Wolfram样综合征，AD</td><td>脊髓小脑性共济失调36型</td><td>前β-脂蛋白血症，棘红细胞增多症，色素性视网膜炎，和苍白球变性</td><td>易患丙型肝炎病毒</td></tr>
<tr><td>Wolfram综合征2型</td><td>脊髓小脑性共济失调38型</td><td>前列腺癌/脑肿瘤易感性</td><td>易患脑内出血，</td></tr>
<tr><td>Woolly毛发，常染色体显性遗传</td><td>脊髓小脑性共济失调40型</td><td>前列腺恶性肿瘤</td><td>易患人类免疫缺陷病毒1型</td></tr>
<tr><td>woolly毛发3型</td><td>脊髓小脑性共济失调41型</td><td>前脑无裂畸形11型</td><td>易患遗传性压迫</td></tr>
<tr><td>Worth病</td><td>脊髓小脑性共济失调42型</td><td>前脑无裂畸形2型</td><td>易患乙肝病毒</td></tr>
<tr><td>XFE progeroid综合征</td><td>脊髓小脑性共济失调5型</td><td>前脑无裂畸形3型</td><td>易患幽门螺杆菌感染</td></tr>
<tr><td>Xia-Gibbs综合征</td><td>脊髓小脑性共济失调6型</td><td>前脑无裂畸形4型</td><td>因子V和因子VIII联合缺乏症1型</td></tr>
<tr><td>XII因子缺乏症</td><td>脊髓小脑性共济失调7型</td><td>前脑无裂畸形5型</td><td>银屑病13型</td></tr>
<tr><td>XX性反转1型</td><td>脊髓小脑性共济失调8型</td><td>前脑无裂畸形7型</td><td>银屑病1型</td></tr>
<tr><td>XY性反转10型</td><td>脊髓小脑性共济失调伴轴索神经病</td><td>前脑无裂畸形9型</td><td>银屑病2型</td></tr>
<tr><td>XY性反转1型</td><td>脊髓性肌萎缩</td><td>前脑无裂畸形续发</td><td>银屑病7型</td></tr>
<tr><td>XY性反转2型</td><td>脊髓性肌萎缩，II型</td><td>前血管舒缓素缺乏症</td><td>银屑病关节炎</td></tr>
<tr><td>XY性反转5型</td><td>脊髓性肌萎缩，jokela型</td><td>腔视神经盘异常</td><td>银屑病性皮炎</td></tr>
<tr><td>XY性反转6型</td><td>脊髓性肌萎缩1型，AD</td><td>强迫症</td><td>银屑病元素脂溢性皮炎样皮炎</td></tr>
<tr><td>XY性反转7型</td><td>脊髓性肌萎缩2型，AD</td><td>强直性肌营养不良2型</td><td>隐匿性黄斑营养不良</td></tr>
<tr><td>XY性反转8型</td><td>脊髓性肌萎缩4型</td><td>强直性脊柱炎</td><td>隐性营养不良型大疱性表皮松解</td></tr>
<tr><td>XY性反转9型</td><td>脊髓性肌萎缩伴呼吸窘迫1型</td><td>羟谷胱甘肽水解酶缺乏症</td><td>隐眼综合征</td></tr>
<tr><td>XY性逆转3型</td><td>脊椎发育不良，kimberley型</td><td>羟基犬尿酸尿症</td><td>婴儿GM1神经节苷脂沉积症</td></tr>
<tr><td>XY性腺发育不全（小束状神经病）</td><td>脊椎发育不良，stanescu型</td><td>羟甲基辅酶A裂解酶缺乏症</td><td>婴儿Refsum病</td></tr>
<tr><td>X连锁Bulbo脊髓萎缩</td><td>脊椎跗骨骨性愈合综合征</td><td>桥本甲状腺炎</td><td>婴儿猝死伴睾丸发育不全综合征</td></tr>
<tr><td>X连锁丙球蛋白​​缺乏血症</td><td>脊椎干骺端l发育不良(pakistani型)</td><td>鞘脂激活蛋白1缺陷</td><td>婴儿猝死综合症</td></tr>
<tr><td>X连锁丙种球蛋白血症伴生长激素缺乏症</td><td>脊椎干骺端发育不良(Aggrecan型)</td><td>青光眼开角1型F型</td><td>婴儿低磷酸酯酶</td></tr>
<tr><td>X连锁肌酸缺乏</td><td>脊椎干骺端发育不良(Faden-Alkuraya型)</td><td>青光眼开角1型G型</td><td>婴儿动脉钙化</td></tr>
<tr><td>X连锁精神发育迟滞伴小脑发育不全和独特的面部</td><td>脊椎干骺端发育不良(Genevieve型)</td><td>青光眼开角1型O型</td><td>婴儿短暂型高甘油三酯血症</td></tr>
<tr><td>X连锁精神发育迟滞综合征11型</td><td>脊椎干骺端发育不良(Missouri型)</td><td>青光眼敏感型（正常眼压）</td><td>婴儿肝功能衰竭综合征1型</td></tr>
<tr><td>X-连锁联合免疫缺陷</td><td>脊椎干骺端发育不良(Sedaghatian型)</td><td>青年发病型糖尿病10型</td><td>婴儿肝功能衰竭综合征2型</td></tr>
<tr><td>X连锁脑积水综合征</td><td>脊椎干骺端发育不良(Strudwick型)</td><td>青年发病型糖尿病11型</td><td>婴儿高钙血症2型</td></tr>
<tr><td>X连锁脑室周围异位</td><td>脊椎干骺端发育不良(X连锁)</td><td>青年发病型糖尿病13型</td><td>婴儿骨皮质增生症</td></tr>
<tr><td>X连锁神经慢性特发性假性肠梗阻</td><td>脊椎干骺端发育不良(胞外基质-3相关)</td><td>青年发病型糖尿病14型</td><td>婴儿肌纤维瘤病1型</td></tr>
<tr><td>X连锁型腭裂</td><td>脊椎干骺端发育不良(科兹洛夫斯基类型)</td><td>青年发病型糖尿病1型</td><td>婴儿肌纤维瘤病2型</td></tr>
<tr><td>X-连锁严重联合免疫缺陷</td><td>脊椎干骺端发育不良伴多重错位</td><td>青年发病型糖尿病2型</td><td>婴儿肌张力低下伴精神运动发育迟缓</td></tr>
<tr><td>X连锁遗传性运动感觉神经病变</td><td>脊椎干骺端发育不良伴关节松弛</td><td>青年发病型糖尿病4型</td><td>婴儿肌张力低下伴精神运动发育迟缓2型</td></tr>
<tr><td>X连锁隐性肾结石肾功能衰竭</td><td>脊椎干骺端发育不良伴锥杆营养不良</td><td>青年发病型糖尿病6型</td><td>婴儿肌张力低下伴精神运动发育迟缓3型</td></tr>
<tr><td>X连锁鱼鳞病伴固醇硫酸酯酶缺乏症</td><td>脊椎-骨骺，干骺端发育不良</td><td>青年发病型糖尿病7型</td><td>婴儿毛细血管血管瘤</td></tr>
<tr><td>X连锁智力低下41型</td><td>脊椎骨骺发育不良</td><td>青年发病型糖尿病8型</td><td>婴儿帕金森肌张力障碍</td></tr>
<tr><td>X连锁智力低下90型</td><td>脊椎骨骺发育不良(Maroteaux型)</td><td>青年发病型糖尿病9型</td><td>婴儿期持续高胰岛素低血糖</td></tr>
<tr><td>X连锁智力低下伴marfanoid型综合征</td><td>脊椎骨骺发育不良(短肢手型)</td><td>青少年癫痫</td><td>婴儿期普遍动脉钙化2型</td></tr>
<tr><td>X因子缺乏症</td><td>脊椎骨骺发育不良伴先天性脱位关节</td><td>青少年发病白内障（粉状）</td><td>婴儿期重症肌阵挛性癫痫</td></tr>
<tr><td>You-Hoover-Fong综合征</td><td>脊椎肋骨发育不全1型</td><td>青少年发病型白内障</td><td>婴儿神经退行性疾病轴索与面部畸形</td></tr>
<tr><td>Young Simpson综合征</td><td>脊椎肋骨发育不全2型</td><td>青少年胱氨酸肾病</td><td>婴儿肾单位肾痨</td></tr>
<tr><td>Yunis Varon综合征</td><td>脊椎肋骨发育不全3型</td><td>青少年肾消耗病</td><td>婴儿小脑视网膜变性</td></tr>
<tr><td>Zellweger综合征</td><td>脊椎肋骨发育不全4型</td><td>青少年视网膜劈裂</td><td>婴儿型肉碱棕榈酰转移酶II缺乏症</td></tr>
<tr><td>Zimmermann-Laband综合征1型</td><td>脊椎肋骨发育不全5型</td><td>青少年型原发性开角型青光眼1型</td><td>婴儿型纹状体黑质变性</td></tr>
<tr><td>Zimmermann-Laband综合征2型</td><td>脊椎肋骨发育不全6型</td><td>轻度枫糖尿症</td><td>婴儿眼球震颤（X连锁）</td></tr>
<tr><td>ZNF711相关X连锁智力低下</td><td>脊椎内生软骨发育不全与免疫失调</td><td>轻度淋巴水肿伴脊髓发育不良</td><td>婴儿遗传性痉挛性瘫痪</td></tr>
<tr><td>Zunich神经外胚层综合征</td><td>脊椎手发育不全，Ehlers-Danlos综合征样</td><td>轻度疟疾</td><td>婴儿致死性线粒体肌病</td></tr>
<tr><td>Z蛋白缺乏症</td><td>继发性甲减</td><td>轻度小头畸形16型，AR</td><td>婴儿轴索营养不良</td></tr>
<tr><td>α，α-海藻糖酶缺乏症</td><td>家族X连锁低磷维生素D佝偻病</td><td>轻度正中神经单神经病</td><td>婴幼儿型多系统自身免疫性疾病</td></tr>
<tr><td>α/βT淋巴细胞减少症</td><td>家族低钾血症，低镁血症</td><td>球体肌病</td><td>婴幼儿型多系统自身免疫性疾病2型</td></tr>
<tr><td>α-1-抗胰蛋白酶缺乏</td><td>家族淀粉样蛋白肾病荨麻疹和耳聋</td><td>球形红细胞增多症1型</td><td>营养不良性大疱性表皮松解</td></tr>
<tr><td>α-2巨球蛋白缺乏症</td><td>家族非典型分枝杆菌1型，X连锁</td><td>球形红细胞增多症2型</td><td>硬化性骨化病</td></tr>
<tr><td>α-B晶体视网膜病</td><td>家族高胰岛素血症</td><td>球形红细胞增多症3型</td><td>硬化性骨化病2型</td></tr>
<tr><td>α白细胞介素2受体缺乏症</td><td>家族渐进性色素沉着带或不带色素减退</td><td>球形红细胞增多症4型</td><td>硬化性角膜，常染色体隐性遗传</td></tr>
<tr><td>α-地中海贫血</td><td>家族男性乳房发育症</td><td>球形红细胞增多症5型</td><td>永久性多克隆B细胞增多症</td></tr>
<tr><td>α-甘露糖苷酶缺乏症</td><td>家族型高脂蛋白血症5型</td><td>球形晶状体</td><td>永久性苗勒管综合征</td></tr>
<tr><td>α-甲酰辅酶A消旋酶缺乏症</td><td>家族性CD8缺乏症</td><td>屈曲指关节髋内翻性综合征</td><td>尤因氏肉瘤</td></tr>
<tr><td>α-酮戊二酸脱氢酶缺陷</td><td>家族性Guillain-Barre综合征</td><td>屈曲指和耳聋综合征</td><td>由细胞色素P450 CYP2D6变异引起的失调</td></tr>
<tr><td>β-D-甘露糖贮积症</td><td>家族性X染色体失活1型</td><td>屈肢骨发育不良</td><td>疣，低丙球蛋白血症，无效生成性慢性粒细胞缺乏</td></tr>
<tr><td>β-地中海贫血</td><td>家族性部分脂肪代谢障碍2型</td><td>曲霉病易感</td><td>疣状表皮发育不良</td></tr>
<tr><td>β地中海贫血（AR）</td><td>家族性部分脂肪代谢障碍3型</td><td>全垂体机能减退X连锁</td><td>幼年特发性高钙血症</td></tr>
<tr><td>β-螺旋桨蛋白相关神经变性</td><td>家族性部分脂肪代谢障碍4型</td><td>全脑髓鞘形成减少</td><td>幼年性肌张力障碍</td></tr>
<tr><td>β-脲酰丙酸酶缺乏症</td><td>家族性部分脂肪代谢障碍5型</td><td>全身脓疱型银屑病</td><td>幼年性息肉病/遗传性出血性毛细血管扩张症</td></tr>
<tr><td>β-羟基异丁酰辅酶A脱酰酶不足</td><td>家族性部分脂肪代谢障碍6型</td><td>全身性癫痫伴高热惊厥1型</td><td>幼年性息肉综合征</td></tr>
<tr><td>γ-氨基丁酸转氨酶缺乏</td><td>家族性痴呆</td><td>全身性癫痫伴高热惊厥2型</td><td>幼年严重常染色体隐性遗传性肌营养不良症(北非型)</td></tr>
<tr><td>γ-谷氨酰半胱氨酸合成酶缺乏症</td><td>家族性迟发性皮肤卟啉</td><td>全身性癫痫伴高热惊厥6型</td><td>釉质发育不全（1E型）</td></tr>
<tr><td>阿尔茨海默病18型</td><td>家族性单纯性自然杀伤细胞缺乏症</td><td>全身性癫痫伴高热惊厥7型</td><td>釉质发育不全（AD）</td></tr>
<tr><td>阿尔茨海默病19型</td><td>家族性低B脂蛋白血1型</td><td>全身性癫痫伴高热惊厥9型</td><td>釉质发育不全（IA型）</td></tr>
<tr><td>阿尔茨海默病2型</td><td>家族性低B脂蛋白血2型</td><td>全身性癫痫发作性和运动障碍</td><td>釉质发育不全（IC型）</td></tr>
<tr><td>阿尔茨海默病3型</td><td>家族性低钙高血钙症1型</td><td>全身性少年类风湿关节炎</td><td>釉质发育不全（IF型）</td></tr>
<tr><td>阿尔茨海默病4型</td><td>家族性地中海热</td><td>缺血性中风</td><td>釉质发育不全（IH型）</td></tr>
<tr><td>阿尔茨海默病9型</td><td>家族性地中海热，常染色体显性遗传</td><td>缺指畸形-外胚层发育不良和唇裂/腭裂综合征3型</td><td>釉质发育不全（IV型）</td></tr>
<tr><td>阿尔茨海默氏病</td><td>家族性多发性毛囊上皮瘤</td><td>缺转铁球蛋白血症</td><td>釉质发育不全（钙化不全IIA1型）</td></tr>
<tr><td>阿黑皮素缺乏症</td><td>家族性发育不全，肾小球囊性病变</td><td>染色单体过早分离</td><td>釉质发育不全（钙化不全IIA2型）</td></tr>
<tr><td>埃勒斯-当洛样综合征(固生蛋白缺乏)</td><td>家族性发作性疼痛综合征1型</td><td>染色体16p12.1缺失综合征</td><td>釉质发育不全（钙化不全IIA3型）</td></tr>
<tr><td>埃勒斯-当洛综合征(AR)</td><td>家族性反常性痤疮1型</td><td>染色体1q43-Q44缺失综合征</td><td>釉质发育不全（钙化不全IIA4型）</td></tr>
<tr><td>埃勒斯-当洛综合征(musculocontractural 1型)</td><td>家族性反常性痤疮2型</td><td>染色体2q32-Q33缺失综合征</td><td>釉质发育不全（钙化不全IIA5型）</td></tr>
<tr><td>埃勒斯-当洛综合征(musculocontractural 2型)</td><td>家族性反常性痤疮3型</td><td>染色体2q37缺失综合征</td><td>釉质发育不全（钙化不全型）</td></tr>
<tr><td>埃勒斯-当洛综合征(progeroid 2型)</td><td>家族性肥厚心肌病</td><td>染色体Xp22缺失综合征</td><td>鱼鳞病，白细胞空泡，脱发，和硬化性胆管炎</td></tr>
<tr><td>埃勒斯-当洛综合征(脊柱后侧凸，肌病，耳聋综合征)</td><td>家族性肥厚型心肌病10型</td><td>染色体Xq28缺失综合征</td><td>鱼眼疾病</td></tr>
<tr><td>埃勒斯-当洛综合征(胶原蛋白酶缺乏)</td><td>家族性肥厚型心肌病11型</td><td>桡尺骨性愈合与低巨核细胞性血小板减少</td><td>与多尾精子和DNA过多相关的不孕症</td></tr>
<tr><td>埃勒斯-当洛综合征(经典型)</td><td>家族性肥厚型心肌病12型</td><td>桡尺骨性愈合与低巨核细胞性血小板减少2型</td><td>语言障碍1型</td></tr>
<tr><td>埃勒斯-当洛综合征(羟缺陷)</td><td>家族性肥厚型心肌病13型</td><td>桡肱骨融合伴其他骨骼和颅面畸形</td><td>原发性常染色体隐性畸形10型</td></tr>
<tr><td>埃勒斯-当洛综合征3型</td><td>家族性肥厚型心肌病14型</td><td>热带性钙化性胰腺炎</td><td>原发性常染色体隐性畸形11型</td></tr>
<tr><td>埃勒斯-当洛综合征4型</td><td>家族性肥厚型心肌病15型</td><td>认知功能障碍有或无小脑性共济失调</td><td>原发性常染色体隐性畸形12型</td></tr>
<tr><td>埃勒斯-当洛综合征7型</td><td>家族性肥厚型心肌病16型</td><td>妊娠肝内胆汁淤积症</td><td>原发性常染色体隐性畸形13型</td></tr>
<tr><td>埃勒斯-当洛综合征progeroid型</td><td>家族性肥厚型心肌病17型</td><td>溶酶体储积症</td><td>原发性常染色体隐性畸形14型</td></tr>
<tr><td>安德森氏症候群</td><td>家族性肥厚型心肌病18型</td><td>溶酶体酸性脂肪酶缺乏症</td><td>原发性常染色体隐性畸形15型</td></tr>
<tr><td>氨基丙二酸尿症</td><td>家族性肥厚型心肌病19型</td><td>溶血性贫血（己糖激酶缺乏）</td><td>原发性常染色体隐性畸形1型</td></tr>
<tr><td>氨基糖苷类耳聋</td><td>家族性肥厚型心肌病1型</td><td>溶血性贫血（葡萄糖磷酸异构酶缺乏）</td><td>原发性常染色体隐性畸形2型</td></tr>
<tr><td>氨基酰化酶1缺乏</td><td>家族性肥厚型心肌病20型</td><td>溶血性贫血（醛缩酶A缺乏症）</td><td>原发性常染色体隐性畸形3型</td></tr>
<tr><td>奥托 - 腭数字综合征，I型</td><td>家族性肥厚型心肌病2型</td><td>肉碱脂酰转移酶缺乏症</td><td>原发性常染色体隐性畸形4型</td></tr>
<tr><td>拔毛癖</td><td>家族性肥厚型心肌病3型</td><td>肉碱棕榈酰转移酶II缺乏症</td><td>原发性常染色体隐性畸形5型</td></tr>
<tr><td>白癜风相关多种自身免疫性疾病易感1型</td><td>家族性肥厚型心肌病4型</td><td>肉碱棕榈酰转移酶I缺乏症</td><td>原发性常染色体隐性畸形6型</td></tr>
<tr><td>白甲秃</td><td>家族性肥厚型心肌病6型</td><td>乳糜微粒滞留病</td><td>原发性常染色体隐性畸形7型</td></tr>
<tr><td>白内障（AD)</td><td>家族性肥厚型心肌病7型</td><td>乳糜泻3型</td><td>原发性常染色体隐性畸形8型</td></tr>
<tr><td>白内障（AD,1型)</td><td>家族性肥厚型心肌病8型</td><td>乳糜泻4型</td><td>原发性常染色体隐性畸形9型</td></tr>
<tr><td>白内障（AR,2型)</td><td>家族性肥厚型心肌病9型</td><td>乳清酸尿症</td><td>原发性低镁血症</td></tr>
<tr><td>白内障（AR,4型)</td><td>家族性肺毛细血管瘤</td><td>乳酸脱氢酶B缺乏症</td><td>原发性肥大性骨关节病2型，AR</td></tr>
<tr><td>白内障（AR,5型)</td><td>家族性肝腺瘤</td><td>乳突状肾细胞癌1型</td><td>原发性肺动脉高压</td></tr>
<tr><td>白内障（coppock样）</td><td>家族性高胆固醇</td><td>乳腺多发性纤维腺瘤</td><td>原发性肺动脉高压2型</td></tr>
<tr><td>白内障（Hutterite型）</td><td>家族性高钙尿症</td><td>软骨发育不良</td><td>原发性肺动脉高压3型</td></tr>
<tr><td>白内障（带状）</td><td>家族性高甘油三酯血症</td><td>软骨发育不全</td><td>原发性肺动脉高压4型</td></tr>
<tr><td>白内障（感觉神经性耳聋，唐氏综合征样面容，身材矮小，智力低下）</td><td>家族性高热惊厥11型</td><td>软骨发育不全</td><td>原发性高草酸盐III型</td></tr>
<tr><td>白内障（核性）</td><td>家族性高热惊厥4型</td><td>软骨发育不全（megarbane-dagher-melki型）</td><td>原发性高草酸盐II型</td></tr>
<tr><td>白内障（核性非渐进性弥漫）</td><td>家族性高胰岛素低血糖症4型</td><td>软骨发育不全（脑积水和小眼球）</td><td>原发性高草酸盐I型</td></tr>
<tr><td>白内障（花状型）</td><td>家族性骨髓衰竭</td><td>软骨发育不全1A型</td><td>原发性高血压</td></tr>
<tr><td>白内障（膜质）</td><td>家族性骨髓增生/淋巴组织肿瘤</td><td>软骨发育不全1B型</td><td>原发性红斑性肢痛症</td></tr>
<tr><td>白内障（生长激素缺乏症，感觉神经病变，感觉神经性听力损失和骨骼发育不良）</td><td>家族性红细胞增多2型</td><td>软骨发育不全2型</td><td>原发性家族肥厚型心肌病</td></tr>
<tr><td>白内障（小眼球及眼球震颤）</td><td>家族性红细胞增多3型</td><td>软骨钙质沉着病2型</td><td>原发性局部皮肤淀粉样变1型</td></tr>
<tr><td>白内障13型</td><td>家族性红细胞增多4型</td><td>软骨关节脱位</td><td>原发性开角型青光眼</td></tr>
<tr><td>白内障15型</td><td>家族性红细胞增多症1型</td><td>软骨肉瘤</td><td>原发性扩张型心肌病</td></tr>
<tr><td>白内障19型</td><td>家族性混合型高脂血症</td><td>软骨外胚层发育不良症</td><td>原发性青光眼3型B型</td></tr>
<tr><td>白内障1型</td><td>家族性肌阵挛</td><td>软骨肢中端发育不全</td><td>原发性青光眼3型D型</td></tr>
<tr><td>白内障23型</td><td>家族性脊髓神经纤维瘤，</td><td>萨拉病</td><td>原发性醛固酮增多症，癫痫，神经系统异常</td></tr>
<tr><td>白内障39型</td><td>家族性甲状旁腺功能减退症</td><td>腮-耳-肾症候群2型</td><td>原发性色素性结节状肾上腺皮质疾病1型</td></tr>
<tr><td>白内障3型</td><td>家族性甲状腺髓样癌</td><td>三甲基胺尿症</td><td>原发性色素性结节状肾上腺皮质疾病2型</td></tr>
<tr><td>白内障40型</td><td>家族性假性高钾血症1A型</td><td>三甲基巴豆酰辅酶A羧化酶1缺乏</td><td>原发性色素性结节状肾上腺皮质疾病3型</td></tr>
<tr><td>白内障43型</td><td>家族性假性高钾血症1B型</td><td>三甲基赖氨酸羟化酶缺陷症</td><td>原发性色素性结节状肾上腺皮质疾病4型</td></tr>
<tr><td>白内障44型</td><td>家族性假性高钾血症1C型</td><td>三角头畸形1型</td><td>原发性纤毛运动障碍</td></tr>
<tr><td>白内障45型</td><td>家族性假性高钾血症1型（AD）</td><td>三角头畸形2型</td><td>原发性纤毛运动障碍10型</td></tr>
<tr><td>白内障4型</td><td>家族性假性高钾血症1型（AR）</td><td>三磷酸肌苷不足</td><td>原发性纤毛运动障碍11型</td></tr>
<tr><td>白内障6型</td><td>家族性假性高钾血症2B型</td><td>桑德霍夫病</td><td>原发性纤毛运动障碍12型</td></tr>
<tr><td>白内障伴小角膜和糖尿</td><td>家族性假性高钾血症2C型</td><td>色氨酸5单加氧酶缺乏症</td><td>原发性纤毛运动障碍13型</td></tr>
<tr><td>白内障和心肌病</td><td>家族性假性高钾血症2D型</td><td>色盲</td><td>原发性纤毛运动障碍14型</td></tr>
<tr><td>白三烯C4合成酶缺乏症</td><td>家族性假性高钾血症2E型</td><td>色盲2型</td><td>原发性纤毛运动障碍15型</td></tr>
<tr><td>白色海绵状痣2型</td><td>家族性假性高钾血症2型</td><td>色盲3型</td><td>原发性纤毛运动障碍16型</td></tr>
<tr><td>白色海绵状痣cannon型</td><td>家族性口吃1型</td><td>色盲4型</td><td>原发性纤毛运动障碍17型</td></tr>
<tr><td>白细胞粘附缺陷1型</td><td>家族性良性天疱疮</td><td>色盲7型</td><td>原发性纤毛运动障碍18型</td></tr>
<tr><td>白细胞粘附缺陷III型</td><td>家族性淋巴组织增生症2型</td><td>色素巨痣多毛</td><td>原发性纤毛运动障碍19型</td></tr>
<tr><td>白质脑病伴脑干和脊髓受累、乳酸分泌提高</td><td>家族性淋巴组织增生症3型</td><td>色素失调综合征</td><td>原发性纤毛运动障碍20型</td></tr>
<tr><td>斑花叶非整倍体综合征1型</td><td>家族性淋巴组织增生症4型</td><td>色素性脉络膜视网膜静脉旁萎缩</td><td>原发性纤毛运动障碍21型</td></tr>
<tr><td>斑花叶非整倍体综合征2型</td><td>家族性淋巴组织增生症5型</td><td>色素性视网膜炎</td><td>原发性纤毛运动障碍22型</td></tr>
<tr><td>半胱天冬蛋白酶-8缺乏</td><td>家族性慢性皮肤粘膜念珠菌病</td><td>色素性视网膜炎（X连锁）</td><td>原发性纤毛运动障碍23型</td></tr>
<tr><td>半乳糖的β-半乳糖苷酶缺乏症</td><td>家族性泌乳素瘤</td><td>色素性视网膜炎10型</td><td>原发性纤毛运动障碍24型</td></tr>
<tr><td>半乳糖激酶缺乏症</td><td>家族性脑病</td><td>色素性视网膜炎11型</td><td>原发性纤毛运动障碍25型</td></tr>
<tr><td>瓣上主动脉瓣狭窄</td><td>家族性脑膜瘤</td><td>色素性视网膜炎12型</td><td>原发性纤毛运动障碍26型</td></tr>
<tr><td>包涵体肌病2型</td><td>家族性内脏淀粉样变性，Ostertag型</td><td>色素性视网膜炎13型</td><td>原发性纤毛运动障碍27型</td></tr>
<tr><td>包涵体肌病3型</td><td>家族性念珠菌病2型</td><td>色素性视网膜炎14型</td><td>原发性纤毛运动障碍28型</td></tr>
<tr><td>包涵体肌病伴早发Paget病和额颞叶痴呆</td><td>家族性念珠菌病5型</td><td>色素性视网膜炎15型</td><td>原发性纤毛运动障碍29型</td></tr>
<tr><td>包涵体肌病伴早发Paget病有或无额颞叶痴呆2型</td><td>家族性念珠菌病6型</td><td>色素性视网膜炎17型</td><td>原发性纤毛运动障碍2型</td></tr>
<tr><td>包涵体肌病伴早发Paget病有或无额颞叶痴呆3型</td><td>家族性念珠菌病8型</td><td>色素性视网膜炎18型</td><td>原发性纤毛运动障碍30型</td></tr>
<tr><td>胞浆磷酸烯醇不足</td><td>家族性念珠菌病9型</td><td>色素性视网膜炎19型</td><td>原发性纤毛运动障碍32型</td></tr>
<tr><td>暴食症1型</td><td>家族性凝视麻痹，进行性脊柱侧弯</td><td>色素性视网膜炎1型</td><td>原发性纤毛运动障碍33型</td></tr>
<tr><td>暴食症2型</td><td>家族性膨胀性骨溶解</td><td>色素性视网膜炎20型</td><td>原发性纤毛运动障碍3型</td></tr>
<tr><td>备解缺乏，X连锁</td><td>家族性偏瘫型偏头痛1型</td><td>色素性视网膜炎25型</td><td>原发性纤毛运动障碍5型</td></tr>
<tr><td>苯丙酮尿症</td><td>家族性偏瘫型偏头痛2型</td><td>色素性视网膜炎26型</td><td>原发性纤毛运动障碍6型</td></tr>
<tr><td>鼻咽癌</td><td>家族性偏瘫型偏头痛3型</td><td>色素性视网膜炎27型</td><td>原发性纤毛运动障碍7型</td></tr>
<tr><td>鼻咽毛囊发育不良I型</td><td>家族性醛固酮增多症1型</td><td>色素性视网膜炎28型</td><td>原发性纤毛运动障碍9型</td></tr>
<tr><td>鼻咽毛囊综合征3型</td><td>家族性醛固酮增多症3型</td><td>色素性视网膜炎30型</td><td>原发性血小板增多症</td></tr>
<tr><td>吡哆醇依赖性癫痫</td><td>家族性醛固酮增多症IV型</td><td>色素性视网膜炎31型</td><td>原发性自发性气胸</td></tr>
<tr><td>吡哆醛5'-磷酸依赖性癫痫</td><td>家族性热性惊厥8型</td><td>色素性视网膜炎33型</td><td>圆头精子症</td></tr>
<tr><td>吡咯啉-5-羧酸还原酶缺乏症</td><td>家族性乳房卵巢癌1型</td><td>色素性视网膜炎35型</td><td>圆锥角膜1型</td></tr>
<tr><td>扁平角膜2型</td><td>家族性乳房卵巢癌2型</td><td>色素性视网膜炎36型</td><td>远侧脊肌萎缩症(X连锁3型)</td></tr>
<tr><td>扁平髋</td><td>家族性乳房卵巢癌3型</td><td>色素性视网膜炎37型</td><td>远端脊肌萎缩症(AR 2型)</td></tr>
<tr><td>表观盐皮质激素过多综合征</td><td>家族性乳房卵巢癌4型</td><td>色素性视网膜炎38型</td><td>远端脊肌萎缩症(AR 4型)</td></tr>
<tr><td>表皮掌跖角化病</td><td>家族性乳腺癌</td><td>色素性视网膜炎39型</td><td>远端脊髓性肌萎缩，AR 5型</td></tr>
<tr><td>表皮痣</td><td>家族性少年高尿酸血症肾病4型</td><td>色素性视网膜炎40型</td><td>远端肾小管性酸中毒（AD）</td></tr>
<tr><td>表皮痣综合征</td><td>家族性少年痛风</td><td>色素性视网膜炎41型</td><td>远端肾小管性酸中毒（AR）</td></tr>
<tr><td>别嘌呤醇反应</td><td>家族性什高胆烷血症</td><td>色素性视网膜炎42型</td><td>远端肾小管性酸中毒（溶血性贫血）</td></tr>
<tr><td>丙二酰辅酶A脱羧酶缺乏症</td><td>家族性肾性低尿酸血症</td><td>色素性视网膜炎43型</td><td>远端型肌病1型</td></tr>
<tr><td>丙酸血症</td><td>家族性肾性糖尿</td><td>色素性视网膜炎44型</td><td>远端型肌病2型</td></tr>
<tr><td>丙酮酸羧化酶缺乏症</td><td>家族性渗出性玻璃体视网膜病变，X-连锁</td><td>色素性视网膜炎45型</td><td>远端型肌病4型</td></tr>
<tr><td>丙酮酸脱氢酶E1-α缺乏症</td><td>家族性室性心动过速</td><td>色素性视网膜炎46型</td><td>远端型肌病5型</td></tr>
<tr><td>丙酮酸脱氢酶E1-β缺乏症</td><td>家族性睡眠相位前移症候群</td><td>色素性视网膜炎47型</td><td>远端型肌病伴胫前发病</td></tr>
<tr><td>丙酮酸脱氢酶E2缺乏症</td><td>家族性睡眠相位前移症候群2型</td><td>色素性视网膜炎48型</td><td>远端遗传性运动神经元病2A型</td></tr>
<tr><td>丙酮酸脱氢酶E3结合蛋白缺乏症</td><td>家族性睡眠相位前移症候群3型</td><td>色素性视网膜炎49型</td><td>远端遗传性运动神经元病2B型</td></tr>
<tr><td>丙酮酸脱氢酶磷酸酶缺乏症</td><td>家族性无汗症</td><td>色素性视网膜炎4型</td><td>远端遗传性运动神经元病2C型</td></tr>
<tr><td>丙酮酸脱氢酶硫辛酸合成酶缺乏症</td><td>家族性酰基辅酶A脱氢酶缺陷9型</td><td>色素性视网膜炎50型</td><td>远端遗传性运动神经元病2D型</td></tr>
<tr><td>并指1型</td><td>家族性限制型心肌病1型</td><td>色素性视网膜炎51型</td><td>远端遗传性运动神经元病5B型</td></tr>
<tr><td>并指2型</td><td>家族性限制型心肌病3型</td><td>色素性视网膜炎54型</td><td>远端遗传性运动神经元病5型</td></tr>
<tr><td>并指畸形，Cenani Lenz型</td><td>家族性腺瘤性息肉病1型</td><td>色素性视网膜炎55型</td><td>远端遗传性运动神经元病7B型</td></tr>
<tr><td>并指畸形3型</td><td>家族性腺瘤性息肉病3型</td><td>色素性视网膜炎56型</td><td>远端遗传性运动神经元病7型</td></tr>
<tr><td>并指畸形9型</td><td>家族性小脑蚓部发育不全</td><td>色素性视网膜炎57型</td><td>远端指间关节骨性关节炎</td></tr>
<tr><td>并指畸形IV型</td><td>家族性心房颤动</td><td>色素性视网膜炎58型</td><td>阅读障碍1型</td></tr>
<tr><td>并指畸形V型</td><td>家族性新生儿惊厥1型</td><td>色素性视网膜炎59型</td><td>阅读障碍2型</td></tr>
<tr><td>病态窦房结综合征1型</td><td>家族性新生儿惊厥2型</td><td>色素性视网膜炎60型</td><td>运动过程中甘油释放缺陷症</td></tr>
<tr><td>病态窦房结综合征2型</td><td>家族性新生儿婴儿惊厥</td><td>色素性视网膜炎61型</td><td>运动介导的高胰岛索血症性低血糖症</td></tr>
<tr><td>病态窦房结综合征3型</td><td>家族性性低钙高钙血症III型</td><td>色素性视网膜炎62型</td><td>载脂蛋白C2缺乏</td></tr>
<tr><td>病态肥胖和生精障碍</td><td>家族性胸主动脉瘤4型</td><td>色素性视网膜炎66型</td><td>再生障碍性贫血</td></tr>
<tr><td>玻璃膜疣</td><td>家族性胸主动脉瘤6型</td><td>色素性视网膜炎67型</td><td>再生障碍性贫血</td></tr>
<tr><td>玻璃体视网膜病变，新生血管炎</td><td>家族性胸主动脉瘤7型</td><td>色素性视网膜炎68型</td><td>再生障碍性贫血、血小板减少综合征</td></tr>
<tr><td>玻璃体视网膜脉络膜病</td><td>家族性胸主动脉瘤8型</td><td>色素性视网膜炎69型</td><td>早产儿鱼鳞病综合征</td></tr>
<tr><td>剥脱性骨软骨炎</td><td>家族性胸主动脉瘤9型</td><td>色素性视网膜炎70型</td><td>早产胎膜早破</td></tr>
<tr><td>剥脱性青光眼</td><td>家族性血尿</td><td>色素性视网膜炎71型</td><td>早产性小脑共济失调</td></tr>
<tr><td>剥脱性鱼鳞病，常染色体隐性遗传</td><td>家族性血栓形成倾向，组织纤维蛋白溶酶原活化剂减少</td><td>色素性视网膜炎72型</td><td>早发型痉挛伴高氨酸血症</td></tr>
<tr><td>播散型非典型分枝杆菌感染</td><td>家族性血小板紊乱伴相关的​​恶性骨髓瘤</td><td>色素性视网膜炎73型</td><td>早发性高血压伴妊娠期严重恶化</td></tr>
<tr><td>播散性豆状皮肤纤维瘤病</td><td>家族性荨麻疹</td><td>色素性视网膜炎74型</td><td>早发性肌病，反射消失，呼吸窘迫和吞咽困难</td></tr>
<tr><td>补体成分2缺乏</td><td>家族性胰岛素低血糖3型</td><td>色素性视网膜炎75型</td><td>早发性肌病伴致命性心肌病</td></tr>
<tr><td>补体成分3缺乏</td><td>家族性胰岛素低血糖5型</td><td>色素性视网膜炎7型</td><td>早发性结节病</td></tr>
<tr><td>补体成分4A缺乏</td><td>家族性异常白蛋白高甲状腺素血症</td><td>色素性视网膜炎9型</td><td>早发性纹状体黑质变性</td></tr>
<tr><td>补体成分4B缺乏</td><td>家族性婴儿型重症</td><td>色素性视网膜炎伴或不伴内脏转位</td><td>早发性自闭症</td></tr>
<tr><td>补体成分4缺乏</td><td>家族性婴儿型重症肌无力1型</td><td>色素性视网膜炎和小红细胞增多症</td><td>早发严重性肌病，体重减轻（X连锁）</td></tr>
<tr><td>补体成分6缺乏</td><td>家族性幼年高尿酸性肾病2型</td><td>色素性视网膜营养不良</td><td>早期肌阵挛性脑病</td></tr>
<tr><td>补体成分7缺乏</td><td>家族性圆柱瘤</td><td>上皮复发性糜烂营养不良</td><td>早期婴儿癫痫性脑病10型</td></tr>
<tr><td>补体成分8缺乏1型</td><td>家族性运动障碍伴面部肌纤维颤搐</td><td>上皮肌上皮癌</td><td>早期婴儿癫痫性脑病11型</td></tr>
<tr><td>补体成分8缺乏2型</td><td>家族性阵发性疼痛综合征2型</td><td>少汗型X连锁外胚层发育不良</td><td>早期婴儿癫痫性脑病12型</td></tr>
<tr><td>补体成分9缺乏</td><td>家族性阵发性疼痛综合征3型</td><td>少汗型外胚层发育不良</td><td>早期婴儿癫痫性脑病13型</td></tr>
<tr><td>补体成分C1R/C1S缺乏</td><td>家族性肿瘤钙质沉着</td><td>少汗型外胚层发育不良免疫缺陷症</td><td>早期婴儿癫痫性脑病14型</td></tr>
<tr><td>补体成分C1S缺乏</td><td>家族性重症肢带肌无力</td><td>少汗型外胚层发育不良综合症</td><td>早期婴儿癫痫性脑病17型</td></tr>
<tr><td>补体因子B缺乏症</td><td>家族性自身炎症综合征2型</td><td>少毛症，淋巴水肿，毛细血管扩张症</td><td>早期婴儿癫痫性脑病18型</td></tr>
<tr><td>补体因子D缺乏症</td><td>家族性自身炎症综合征3型</td><td>少毛症11型</td><td>早期婴儿癫痫性脑病19型</td></tr>
<tr><td>不对称多小脑回</td><td>家族性自身炎症综合征4型</td><td>少毛症12型</td><td>早期婴儿癫痫性脑病1型</td></tr>
<tr><td>部分白化病</td><td>家族性自主神经功能异常</td><td>少毛症13型</td><td>早期婴儿癫痫性脑病21型</td></tr>
<tr><td>部分次黄嘌呤-鸟嘌呤磷酸缺陷症</td><td>家族血症</td><td>少毛症2型</td><td>早期婴儿癫痫性脑病23型</td></tr>
<tr><td>部分绿色盲</td><td>甲床细胞瘤</td><td>少毛症3型</td><td>早期婴儿癫痫性脑病24型</td></tr>
<tr><td>蚕豆敏感病</td><td>甲钴胺缺乏，cblG TYPE</td><td>少毛症6型</td><td>早期婴儿癫痫性脑病25型</td></tr>
<tr><td>苍白球色素变性</td><td>甲基丙二酸半醛脱氢酶缺乏症</td><td>少毛症7型</td><td>早期婴儿癫痫性脑病26型</td></tr>
<tr><td>草酸钙结石</td><td>甲基丙二酸单酰辅酶A异构酶缺乏</td><td>少毛症8型</td><td>早期婴儿癫痫性脑病27型</td></tr>
<tr><td>产后渐进性小头畸形（癫痫发作和脑萎缩）</td><td>甲基丙二酸尿症（甲基丙二酰辅酶A变位酶缺乏）</td><td>少年单核细胞白血病</td><td>早期婴儿癫痫性脑病28型</td></tr>
<tr><td>肠癌</td><td>甲基丙二酸尿症（受体​​传递蛋白缺陷）</td><td>少年黄斑变性和少毛症</td><td>早期婴儿癫痫性脑病29型</td></tr>
<tr><td>肠道乳糖酶缺乏</td><td>甲基丙二酸尿症CBLA型</td><td>少年肌病，脑病，乳酸性酸中毒和中风</td><td>早期婴儿癫痫性脑病2型</td></tr>
<tr><td>肠低镁血症1型</td><td>甲基丙二酸尿症CBLB型</td><td>少年肌阵挛性癫痫</td><td>早期婴儿癫痫性脑病30型</td></tr>
<tr><td>肠激酶缺乏症</td><td>甲基丙二酸尿症和胱氨酸尿症cblF型</td><td>少年神经元蜡样脂褐质</td><td>早期婴儿癫痫性脑病31型</td></tr>
<tr><td>常见变异免疫缺陷10型</td><td>甲基丙二酸尿症和胱氨酸尿症cblJ型</td><td>少年原发性侧索硬化症</td><td>早期婴儿癫痫性脑病32型</td></tr>
<tr><td>常见变异免疫缺陷11型</td><td>甲基丙二酸血症与胱氨酸尿症</td><td>身材矮小，发育迟缓，先天性心脏缺陷</td><td>早期婴儿癫痫性脑病33型</td></tr>
<tr><td>常见变异免疫缺陷1型</td><td>甲基丙二酸血症与胱氨酸尿症cblD型</td><td>身材矮小，关节骨指甲发育不全，面部畸形和少毛症</td><td>早期婴儿癫痫性脑病34型</td></tr>
<tr><td>常见变异免疫缺陷2型</td><td>甲亢性周期性麻痹</td><td>身材矮小，视神经萎缩，pelger-huet异常</td><td>早期婴儿癫痫性脑病35型</td></tr>
<tr><td>常见变异免疫缺陷3型</td><td>甲亢性周期性麻痹2型</td><td>身材矮小，外耳道闭锁，下颌骨发育不良，骨骼异常</td><td>早期婴儿癫痫性脑病37型</td></tr>
<tr><td>常见变异免疫缺陷4型</td><td>甲羟戊酸尿症</td><td>身材矮小，小头畸形，以及内分泌功能紊乱</td><td>早期婴儿癫痫性脑病38型</td></tr>
<tr><td>常见变异免疫缺陷5型</td><td>甲胎蛋白缺乏症</td><td>身材矮小伴非特异性骨骼异常</td><td>早期婴儿癫痫性脑病40型</td></tr>
<tr><td>常见变异免疫缺陷6型</td><td>甲状旁腺功能低下畸型综合征</td><td>身材矮小伴小头畸形和畸形相</td><td>早期婴儿癫痫性脑病4型</td></tr>
<tr><td>常见变异免疫缺陷7型</td><td>甲状腺癌</td><td>神经病共济失调视网膜色素变性症</td><td>早期婴儿癫痫性脑病5型</td></tr>
<tr><td>常见变异免疫缺陷8型</td><td>甲状腺发育不全</td><td>神经冲动胃肠脑病综合征</td><td>早期婴儿癫痫性脑病7型</td></tr>
<tr><td>常见变异免疫缺陷9型</td><td>甲状腺功能减退症和睾丸肿大</td><td>神经传导速度减慢，AD</td><td>早期婴儿癫痫性脑病8型</td></tr>
<tr><td>成骨不全症</td><td>甲状腺功能亢进症（非自身免疫）</td><td>神经发育障碍</td><td>早期婴儿癫痫性脑病9型</td></tr>
<tr><td>成骨不全症，隐性围产期致死</td><td>甲状腺功能亢进症（家族性妊娠）</td><td>神经管缺陷</td><td>泽克尔综合征1型</td></tr>
<tr><td>成骨不全症10型</td><td>甲状腺激素代谢异常</td><td>神经管缺陷（叶酸敏感）</td><td>泽克尔综合征2型</td></tr>
<tr><td>成骨不全症11型</td><td>甲状腺激素抵抗综合征，AD</td><td>神经节苷脂GM1 3型</td><td>泽克尔综合征4型</td></tr>
<tr><td>成骨不全症12型</td><td>甲状腺激素抵抗综合征，AR</td><td>神经节苷脂唾液酸酶缺乏症</td><td>泽克尔综合征5型</td></tr>
<tr><td>成骨不全症13型</td><td>甲状腺内分泌障碍1型</td><td>神经母细胞瘤</td><td>泽克尔综合征6型</td></tr>
<tr><td>成骨不全症14型</td><td>甲状腺内分泌障碍6型</td><td>神经母细胞瘤2型</td><td>泽克尔综合征7型</td></tr>
<tr><td>成骨不全症15型</td><td>甲状腺球蛋白合成缺陷</td><td>神经母细胞瘤3型</td><td>泽克尔综合征8型</td></tr>
<tr><td>成骨不全症17型</td><td>甲状腺乳头状癌</td><td>神经皮肤黑变病</td><td>泽克尔综合征9型</td></tr>
<tr><td>成骨不全症5型</td><td>甲状腺嗜酸细胞癌</td><td>神经鞘瘤</td><td>增强型S-圆锥综合征</td></tr>
<tr><td>成骨不全症6型</td><td>甲状腺素结合球蛋白缺乏症</td><td>神经鞘瘤2型</td><td>增生性血管病和积水，脑积水综合征</td></tr>
<tr><td>成骨不全症7型</td><td>甲状腺肿大，结节1型伴或不支持间质细胞瘤</td><td>神经铁蛋白病变</td><td>粘多糖病IIIΓ型</td></tr>
<tr><td>成骨不全症8型</td><td>钾加重肌强直</td><td>神经退行性疾病与脑铁积累2B型</td><td>粘多糖贮积症Ⅶ型</td></tr>
<tr><td>成骨不全症9型</td><td>假神经胶质瘤性骨质疏松症</td><td>神经退行性疾病与脑铁积累4型</td><td>粘多糖贮积症IH/S型</td></tr>
<tr><td>成骨不全症III型</td><td>假性假甲状旁腺功能减退症</td><td>神经退行性疾病与脑铁积累5型</td><td>粘多糖贮积症IIIA型</td></tr>
<tr><td>成骨不全症I型</td><td>假性醛甾酮脊椎骨骺发育不良综合征</td><td>神经退行性疾病与脑铁积累6型</td><td>粘多糖贮积症IIIB型</td></tr>
<tr><td>成骨不全症伴正常巩膜，显性</td><td>尖头并指1型</td><td>神经退行性疾病与视神经萎缩</td><td>粘多糖贮积症IIIC型</td></tr>
<tr><td>成年非免疫性慢性特发性中性粒细胞减少</td><td>尖头股骨发育不良</td><td>神经纤维瘤病1型</td><td>粘多糖贮积症IIID型</td></tr>
<tr><td>成年型共济失调（眼球运动障碍）</td><td>间质细胞发育不全</td><td>神经纤维瘤病2型</td><td>粘多糖贮积症II型</td></tr>
<tr><td>成人黄斑营养不良</td><td>间质性肺和肝脏疾病</td><td>神经纤维瘤病-Noonan综合征</td><td>粘多糖贮积症IS型</td></tr>
<tr><td>成人脑白质营养不良</td><td>间质性肾炎，组织内细胞核增大</td><td>神经性肩胛腓骨综合征(Kaeser型)</td><td>粘多糖贮积症IVA型</td></tr>
<tr><td>成人葡聚糖体病</td><td>肩腓肌营养不良性心肌病</td><td>神经性厌食症1型</td><td>粘多糖贮积症IVB型</td></tr>
<tr><td>成人型低碱性磷酸酯酶症</td><td>肩胛腓骨肌病，MYH7相关</td><td>肾病伴胫前大疱性表皮松解和耳聋</td><td>长QT综合征10型</td></tr>
<tr><td>成人型交界性大疱性表皮松解</td><td>肩胛腓骨肌病，X连锁显性</td><td>肾病综合征10型</td><td>长QT综合征11型</td></tr>
<tr><td>成人型近侧脊肌萎缩症</td><td>肩胛腓骨脊髓性肌萎缩</td><td>肾病综合征11型</td><td>长QT综合征12型</td></tr>
<tr><td>成人型神经元蜡样质脂褐质沉积症</td><td>睑裂</td><td>肾病综合征12型</td><td>长QT综合征13型</td></tr>
<tr><td>迟发性帕金森病</td><td>渐进骨发育异常</td><td>肾病综合征3型</td><td>长QT综合征14型</td></tr>
<tr><td>迟发性肉碱棕榈酰转移酶II缺乏症</td><td>渐进骨化性肌炎</td><td>肾病综合征5型</td><td>长QT综合征15型</td></tr>
<tr><td>迟发性视网膜变性</td><td>渐进性肝内胆汁淤积</td><td>肾病综合征6型</td><td>长QT综合征1型</td></tr>
<tr><td>尺骨和腓骨缺失严重肢体缺陷</td><td>渐进性肌阵挛癫痫共济失调</td><td>肾病综合征7型</td><td>长QT综合征2型</td></tr>
<tr><td>尺骨-乳腺综合症</td><td>渐进性脑病伴有或无脂肪代谢障碍</td><td>肾病综合征8型</td><td>长QT综合征3型</td></tr>
<tr><td>齿状苍白球萎缩</td><td>渐进性线粒体肌病，先天性白内障，耳聋，发育迟缓</td><td>肾病综合征9型</td><td>长QT综合征5型</td></tr>
<tr><td>抽动秽语综合征</td><td>渐进性小头畸形（癫痫发作，脑和小脑萎缩）</td><td>肾错构瘤肾母细胞瘤形成和巨型胎儿</td><td>长QT综合征6型</td></tr>
<tr><td>出汗性外胚层发育不良综合症</td><td>渐进性牙周炎1型</td><td>肾低发育异常/再生障碍性贫血2型</td><td>长QT综合征9型</td></tr>
<tr><td>储铁蛋白白内障综合征</td><td>渐进性延髓麻痹</td><td>肾低镁血症2型</td><td>长链3-羟基酰基辅酶A脱氢酶缺乏症</td></tr>
<tr><td>垂体后叶尿崩症</td><td>渐进性眼外肌麻痹伴线粒体DNA缺失2型</td><td>肾低镁血症4型</td><td>掌跖角化病（nagashima型）</td></tr>
<tr><td>垂体腺瘤，生长激素分泌2型</td><td>渐进硬化灰质营养不良</td><td>肾低镁血症5型，眼部受累</td><td>掌跖角化病（nonepidermolytic）</td></tr>
<tr><td>垂体依赖性皮质醇增多症</td><td>胶原蛋白VI相关肌病</td><td>肾低镁血症6型</td><td>掌跖角化病（nonepidermolytic，局灶性或弥漫性）</td></tr>
<tr><td>唇裂/腭裂和外胚层发育不良综合症</td><td>焦点面部皮肤发育不良4型</td><td>肾发育不良</td><td>掌跖角化病（nonepidermolytic病灶）</td></tr>
<tr><td>醇症</td><td>焦点皮质发育不良Taylor型</td><td>肾发育不良，视网膜色素萎缩，小脑性共济失调及骨骼发育不良</td><td>掌跖角化病（nonepidermolytic病灶2型）</td></tr>
<tr><td>雌激素抗性</td><td>角化病</td><td>肾肝胰发育不良</td><td>掌跖角化病1型</td></tr>
<tr><td>促卵泡激素缺乏</td><td>角化病3型</td><td>肾肝胰发育不良2型</td><td>掌跖角化病2型</td></tr>
<tr><td>促肾上腺皮质激素耐受</td><td>角化毁损</td><td>肾功能缺损综合征</td><td>掌跖角化病3型</td></tr>
<tr><td>促肾上腺皮质激素缺乏</td><td>角膜脆弱（蓝巩膜和关节过度活动）</td><td>肾结石/骨质疏松症1型</td><td>掌跖角化病papulosa</td></tr>
<tr><td>促性腺激素非依赖性家族性早熟</td><td>角膜内皮营养不良2型</td><td>肾结石/骨质疏松症2型</td><td>掌跖角化病伴腔口周围角化斑块</td></tr>
<tr><td>脆性X震颤/共济失调综合征</td><td>角膜皮样环</td><td>肾母细胞瘤，无虹膜，泌尿生殖异常，智力低下综合征</td><td>掌跖角化病伴腔口周围角化斑块，X连锁</td></tr>
<tr><td>脆性X综合征</td><td>角膜上皮角化不良和外胚层发育不良</td><td>肾母细胞瘤1型</td><td>掌跖角化病和羊毛发</td></tr>
<tr><td>脆性角膜综合征2型</td><td>角膜上皮营养不良</td><td>肾母细胞瘤2型</td><td>掌跖角化过度伴皮肤鳞状细胞癌和46/XX性反转</td></tr>
<tr><td>大动脉转位</td><td>角膜炎，鱼鳞病，耳聋综合征，常染色体显性遗传</td><td>肾母细胞瘤6型</td><td>掌跖角化症耳聋</td></tr>
<tr><td>大动脉转位2型</td><td>角膜营养不良1型</td><td>肾母细胞瘤和双边再生障碍性贫血</td><td>蔗糖酶-异麦芽糖酶缺乏症</td></tr>
<tr><td>大动脉转位3型</td><td>角膜营养不良2型</td><td>肾肉碱运输缺陷</td><td>着色性干皮</td></tr>
<tr><td>大口病</td><td>角膜营养不良3型</td><td>肾上腺脑白质营养不良</td><td>着色性干皮(变体型)</td></tr>
<tr><td>大口病2型</td><td>角膜营养不良4型</td><td>肾细胞癌，XP11相关</td><td>着色性干皮(互补B组)</td></tr>
<tr><td>大脑-肋骨-下颌综合征;</td><td>角膜营养不良6型</td><td>肾消耗病</td><td>着色性干皮1型</td></tr>
<tr><td>大脑性瘫痪1型</td><td>角膜营养不良8型</td><td>肾消耗病11型</td><td>着色性干皮C组</td></tr>
<tr><td>大脑性瘫痪2型</td><td>角膜营养不良和感音性耳聋</td><td>肾消耗病12型</td><td>着色性干皮D组</td></tr>
<tr><td>大脑性瘫痪3型</td><td>脚分离畸形伴多趾</td><td>肾消耗病14型</td><td>着色性干皮E组</td></tr>
<tr><td>大疱单纯和肢体带型肌营养不良</td><td>酵母氨酸尿</td><td>肾消耗病15型</td><td>着色性干皮F组</td></tr>
<tr><td>大疱性表皮松解（棘层松解致死）</td><td>结肠癌</td><td>肾消耗病16型</td><td>着色性干皮G组</td></tr>
<tr><td>大疱性表皮松解伴幽门闭锁</td><td>结肠直肠癌12型</td><td>肾消耗病18型</td><td>着丝粒不稳定</td></tr>
<tr><td>大疱性表皮松解疱疹(Dowling-Meara型)</td><td>结合鞘脂不足</td><td>肾消耗病19型</td><td>真性红细胞增多症</td></tr>
<tr><td>大疱性鱼鳞病样红皮病</td><td>中央核肌病4型</td><td>肾消耗病1型</td><td>阵发性家族性室颤</td></tr>
<tr><td>大前庭水管综合征</td><td>中央核肌病5型</td><td>肾消耗病4型</td><td>阵发性家族性室颤2型</td></tr>
<tr><td>大头畸形，畸形相及精神运动性迟滞</td><td>中央轴空病</td><td>肾消耗病7型</td><td>阵发性剧痛症</td></tr>
<tr><td>大头畸形，巨大儿，面部畸形综合征</td><td>终端骨发育不良</td><td>肾消耗病8型</td><td>阵发性睡眠性血红蛋白尿1型</td></tr>
<tr><td>大头畸形，脱发，皮肤松弛，脊柱侧弯</td><td>终端乙酰胆碱酯酶不足</td><td>肾消耗病9型</td><td>阵发性睡眠性血红蛋白尿2型</td></tr>
<tr><td>大头畸形/自闭症综合征</td><td>重度情感障碍7型</td><td>肾消耗病样肾病1型</td><td>阵发性舞蹈手足徐动症</td></tr>
<tr><td>大头畸形多骨骺发育不良和独特的面相</td><td>重度抑郁症</td><td>肾小球病伴纤维蛋白沉积2型</td><td>支链酮酸脱氢酶激酶缺乏</td></tr>
<tr><td>代谢X综合征</td><td>重症X连锁肌小管肌病</td><td>肾小球囊肿病伴高尿酸血症和等渗尿</td><td>支气管扩张</td></tr>
<tr><td>单胺氧化酶A缺乏症</td><td>重症联合免疫缺陷(ADA缺陷)</td><td>肾性低尿酸血症2型</td><td>支气管扩张2型</td></tr>
<tr><td>单侧或双侧隐睾</td><td>重症联合免疫缺陷(AR，T细胞阴性​​，B细胞阳性，NK细胞阳性)</td><td>肾性尿崩症，X连锁</td><td>支气管扩张3型</td></tr>
<tr><td>单侧中切牙缺失</td><td>重症联合免疫缺陷(AR，T细胞阴性​​，B细胞阳性，NK细胞阴性)</td><td>肾性尿崩症，常染色体</td><td>肢带型肌营养不良2R型</td></tr>
<tr><td>单纯疱疹病毒性脑炎1型</td><td>重症联合免疫缺陷(电离辐射敏感性)</td><td>肾脏和泌尿道的先天性畸形1型</td><td>肢带型肌营养不良症</td></tr>
<tr><td>单纯疱疹病毒性脑炎3型</td><td>重症联合免疫缺陷(非典型)</td><td>渗出性玻璃体视网膜病变1型</td><td>肢带型肌营养不良症1A型</td></tr>
<tr><td>单纯疱疹病毒性脑炎4型</td><td>重症联合免疫缺陷(小头畸形，发育迟缓，电离辐射敏感性)</td><td>渗出性玻璃体视网膜病变4型</td><td>肢带型肌营养不良症1B型</td></tr>
<tr><td>单纯疱疹病毒性脑炎7型</td><td>重症免疫缺陷(AR，T细胞阴性​​，B细胞阴性，NK细胞阳性)</td><td>渗出性玻璃体视网膜病变5型</td><td>肢带型肌营养不良症1C型</td></tr>
<tr><td>单纯型大疱性表皮松解(AR 2型)</td><td>重症先天性中性粒细胞减少(AD)</td><td>渗出性玻璃体视网膜病变6型</td><td>肢带型肌营养不良症1E型</td></tr>
<tr><td>单纯型大疱性表皮松解(AR)</td><td>重症先天性中性粒细胞减少(X连锁)</td><td>生精功能衰竭(X连锁，2型)</td><td>肢带型肌营养不良症1G型</td></tr>
<tr><td>单纯型大疱性表皮松解（Cockayne-Touraine型）</td><td>重症先天性中性粒细胞减少2型(AD)</td><td>生精功能衰竭(Y连锁，2型)</td><td>肢带型肌营养不良症2A型</td></tr>
<tr><td>单纯型大疱性表皮松解（Koebner型）</td><td>重症先天性中性粒细胞减少3型(AR)</td><td>生精功能衰竭10型</td><td>肢带型肌营养不良症2B型</td></tr>
<tr><td>单纯型大疱性表皮松解（Ogna型）</td><td>重症先天性中性粒细胞减少4型(AR)</td><td>生精功能衰竭11型</td><td>肢带型肌营养不良症2D型</td></tr>
<tr><td>单纯型大疱性表皮松解伴迁移性漩涡状红斑</td><td>重症先天性中性粒细胞减少5型(AR)</td><td>生精功能衰竭12型</td><td>肢带型肌营养不良症2E型</td></tr>
<tr><td>单纯型大疱性表皮松解伴色素沉着</td><td>重症先天性中性粒细胞减少6型(AR)</td><td>生精功能衰竭13型</td><td>肢带型肌营养不良症2F型</td></tr>
<tr><td>单纯型大疱性表皮松解伴幽门闭锁</td><td>重症眼距增宽（面中部突出，近视，智力低下和骨质脆弱）</td><td>生精功能衰竭14型</td><td>肢带型肌营养不良症2G型</td></tr>
<tr><td>单纯型大疱性表皮松解伴指甲营养不良</td><td>重症婴儿型唾液酸贮积症</td><td>生精功能衰竭15型</td><td>肢带型肌营养不良症2J型</td></tr>
<tr><td>单纯型大疱性表皮松解痒疹</td><td>舟状头畸形，上颌后缩，智力低下</td><td>生精功能衰竭3型</td><td>肢带型肌营养不良症2L型</td></tr>
<tr><td>单纯型少毛症</td><td>周期性发热，月经周期依赖性</td><td>生精功能衰竭8型</td><td>肢带型肌营养不良症2Q型</td></tr>
<tr><td>单纯性腭裂</td><td>周期性中性粒细胞减少</td><td>生精功能衰竭9型</td><td>肢带型肌营养不良症2S型</td></tr>
<tr><td>单纯性生长激素缺乏症1B型</td><td>周围脊椎发育不良</td><td>生物素缺乏症</td><td>肢带型肌营养不良症C14型</td></tr>
<tr><td>单纯性问号耳</td><td>周围神经病变，肌病，声音嘶哑和听力损失</td><td>生长迟缓，发育迟缓，粗相，和过早死亡</td><td>肢带型肌营养不良症C1型</td></tr>
<tr><td>单纯性线粒体肌病，AD</td><td>周围神经病变脱髓鞘，中央髓鞘形成障碍，瓦登伯革氏症候群，先天性巨结肠症</td><td>生长和智力发育迟缓（下颌骨发育不全，小头​​畸形和唇腭裂）</td><td>肢带型肌营养不良症C2型</td></tr>
<tr><td>单纯性小眼畸形2型</td><td>轴后不足，轴后多趾和尿道下裂</td><td>生长激素不敏感免疫缺陷症</td><td>肢带型肌营养不良症C3型</td></tr>
<tr><td>单纯性小眼畸形3型</td><td>轴后多趾2型</td><td>生长激素缺乏症</td><td>肢带型肌营养不良症C4型</td></tr>
<tr><td>单纯性小眼畸形4型</td><td>轴后多趾4型</td><td>生长激素腺瘤</td><td>肢带型肌营养不良症C5型</td></tr>
<tr><td>单纯性小眼畸形5型</td><td>轴后多趾A1型</td><td>生殖系BAP1突变相关的肿瘤易感</td><td>肢带型肌营养不良症C7型</td></tr>
<tr><td>单纯性小眼畸形6型</td><td>轴后多趾A6型</td><td>石骨症（AD 1型）</td><td>肢带型肌营养不良症C9型</td></tr>
<tr><td>单纯性小眼畸形7型</td><td>皱梅腹综合征</td><td>石骨症（AD 2型）</td><td>肢端额鼻发育不全</td></tr>
<tr><td>单纯性小眼畸形8型</td><td>皱皮综合征</td><td>石骨症（AR 1型）</td><td>肢端发育不全（Cincinnati型）</td></tr>
<tr><td>单纯性小眼畸形伴眼缺损10型</td><td>竹叶骨发育不良</td><td>石骨症（AR 2型）</td><td>肢端发育不全1型</td></tr>
<tr><td>单纯性小眼畸形伴眼缺损3型</td><td>竹叶综合征</td><td>石骨症（AR 4型）</td><td>肢端发育不全2型</td></tr>
<tr><td>单纯性小眼畸形伴眼缺损5型</td><td>主动脉瓣病变2型</td><td>石骨症（AR 5型）</td><td>肢端中部发育不良（Hunter Thompson型）</td></tr>
<tr><td>单纯性小眼畸形伴眼缺损6型</td><td>主动脉瓣疾病</td><td>石骨症（AR 6型）</td><td>肢端中部发育不良(Maroteaux类型)</td></tr>
<tr><td>单纯性小眼畸形伴眼缺损7型</td><td>注意力缺陷多动障碍</td><td>石骨症（AR 7型）</td><td>肢根型点状软骨1型</td></tr>
<tr><td>单纯性小眼畸形伴眼缺损9型</td><td>注意力缺陷多动障碍7型</td><td>石骨症（AR 8型）</td><td>肢根型点状软骨2型</td></tr>
<tr><td>单独性促黄体激素缺乏症</td><td>转甲状腺素淀粉样变性</td><td>石骨症伴肾小管酸中毒</td><td>肢根型点状软骨3型</td></tr>
<tr><td>单核细胞和树突状细胞缺乏症</td><td>转醛醇酶缺乏症</td><td>食管恶性肿瘤</td><td>肢根型点状软骨5型</td></tr>
<tr><td>单羧酸转运1缺陷症</td><td>椎骨体扁平致死性骨骼发育不良（Torrance型）</td><td>视神经节缺损</td><td>肢体乳腺综合征</td></tr>
<tr><td>胆固醇单加氧酶缺乏症</td><td>椎间盘疾病</td><td>视神经萎缩10型</td><td>脂蛋白肾病</td></tr>
<tr><td>胆囊病变4型</td><td>锥杆营养不良</td><td>视神经萎缩1型</td><td>脂肪代谢障碍与先天性白内障和神经退行性病变</td></tr>
<tr><td>胆囊炎</td><td>锥杆营养不良、釉质生长不全</td><td>视神经萎缩7型</td><td>脂肪酸转移酶1缺陷</td></tr>
<tr><td>胆色素原合成酶缺乏症</td><td>锥杆营养不良10型</td><td>视神经萎缩9型</td><td>脂溢性角化症</td></tr>
<tr><td>胆汁酸吸收不良</td><td>锥杆营养不良11型</td><td>视神经萎缩白内障</td><td>脂质沉积性肌病</td></tr>
<tr><td>胆汁淤积3型</td><td>锥杆营养不良12型</td><td>视网膜动脉大动脉瘤伴瓣上肺动脉瓣狭窄</td><td>脂质蛋白沉积症</td></tr>
<tr><td>胆汁淤积5型</td><td>锥杆营养不良13型</td><td>视网膜动脉迂曲</td><td>直立不耐受</td></tr>
<tr><td>胆贮积症</td><td>锥杆营养不良15型</td><td>视网膜母细胞瘤</td><td>植入前胚胎致死</td></tr>
<tr><td>弹性假样病症（多个凝血因子缺乏）</td><td>锥杆营养不良16型</td><td>视网膜色素变性23型</td><td>植烷酸贮积症</td></tr>
<tr><td>弹性纤维假黄瘤</td><td>锥杆营养不良18型</td><td>视网膜色素变性2型</td><td>指(趾)间关节粘连-短指综合症</td></tr>
<tr><td>弹性纤维假黄瘤（不完全型）</td><td>锥杆营养不良19型</td><td>视网膜营养不良，虹膜缺损，以及粉刺痤疮综合征</td><td>指节垫，耳聋白甲综合征</td></tr>
<tr><td>蛋白S缺乏症</td><td>锥杆营养不良20型</td><td>视网膜营养不良，少年白内障和矮小症</td><td>致密性骨发育不全</td></tr>
<tr><td>蛋白尿伴高钙尿症和肾钙质沉着</td><td>锥杆营养不良21型</td><td>视网膜营养不良和肥胖</td><td>致命性脑病(缺陷线粒体和过氧化物酶体裂变)</td></tr>
<tr><td>蛋白质原转换酶1/3缺乏症</td><td>锥杆营养不良2型</td><td>视网膜营养不良和虹膜缺损伴或不先天性白内障</td><td>致死型腘翼状胬肉综合征</td></tr>
<tr><td>登革热病毒</td><td>锥杆营养不良3型</td><td>视网膜营养不良与内层视网膜功能障碍和神经节细胞异常</td><td>致死性Kniest样综合征</td></tr>
<tr><td>登特病1型</td><td>锥杆营养不良5型</td><td>视锥细胞全色盲</td><td>致死性多翼状胬肉综合征</td></tr>
<tr><td>登特病2型</td><td>锥杆营养不良6型</td><td>视锥细胞营养不良3型</td><td>致死性关节挛缩与前角细胞疾病</td></tr>
<tr><td>镫骨关节僵硬伴宽拇指和脚趾</td><td>锥杆营养不良7型</td><td>视锥细胞营养不良4型</td><td>致死性家族性失眠症</td></tr>
<tr><td>低蛋白血症</td><td>锥杆营养不良9型</td><td>视锥营养不良3A型</td><td>致死性紧密性肌肤挛缩症</td></tr>
<tr><td>低钙血症1型</td><td>锥杆营养不良X连锁1型</td><td>视锥营养不良3B型</td><td>致死性先天性挛缩症10型</td></tr>
<tr><td>低钾性周期性麻痹1型</td><td>锥杆营养不良X连锁3型</td><td>视锥营养不良4型</td><td>致死性先天性挛缩症1型</td></tr>
<tr><td>低钾性周期性麻痹2型</td><td>子宫肌瘤</td><td>室间隔缺损1型</td><td>致死性先天性挛缩症2型</td></tr>
<tr><td>低磷佝偻病（X连锁隐性）</td><td>子宫颈癌</td><td>室间隔缺损2型</td><td>致死性先天性挛缩症3型</td></tr>
<tr><td>低磷佝偻病2型</td><td>子宫内膜癌</td><td>室间隔缺损3型</td><td>致死性先天性挛缩症4型</td></tr>
<tr><td>低磷酸酯酶</td><td>紫外线敏感综合征</td><td>室性心动过速1型</td><td>致死性先天性挛缩症5型</td></tr>
<tr><td>低磷维生素D佝偻病</td><td>紫外线敏感综合征2型</td><td>室性心动过速2型</td><td>致死性先天性挛缩症6型</td></tr>
<tr><td>低磷性佝偻病</td><td>紫外线敏感综合征3型</td><td>室性心动过速4型</td><td>致死性先天性挛缩症7型</td></tr>
<tr><td>低磷性骨疾病</td><td>自闭症（X连锁1型）</td><td>室性心动过速5型</td><td>致死性先天性挛缩症8型</td></tr>
<tr><td>低镁血症，癫痫，智力低下</td><td>自闭症（X连锁2型）</td><td>嗜铬细胞瘤</td><td>致死性先天性挛缩症9型</td></tr>
<tr><td>低密度脂蛋白胆固醇数量性状位点6型</td><td>自闭症（X连锁3型）</td><td>嗜酸性粒细胞过氧化酶缺乏</td><td>致心律失常性右室心肌病10型</td></tr>
<tr><td>低色素性贫血与铁超负荷</td><td>自闭症（X连锁5型）</td><td>手/足分离畸形1型</td><td>致心律失常性右室心肌病11型</td></tr>
<tr><td>低色素性贫血与铁超负荷2型</td><td>自闭症15型</td><td>手/足分离畸形4型</td><td>致心律失常性右室心肌病12型</td></tr>
<tr><td>低血糖，肝脏中糖原合成酶缺乏</td><td>自闭症16型</td><td>手/足分离畸形6型</td><td>致心律失常性右室心肌病5型</td></tr>
<tr><td>狄兰氏症候群1型</td><td>自闭症17型</td><td>手指关节病</td><td>致心律失常性右室心肌病8型</td></tr>
<tr><td>狄兰氏症候群3型</td><td>自闭症18型</td><td>手足子宫综合征</td><td>致心律失常性右室心肌病9型</td></tr>
<tr><td>狄兰氏症候群4型</td><td>自闭症19型</td><td>瘦素受体缺陷</td><td>致心律失常性右心室发育不良13型</td></tr>
<tr><td>骶骨发育不全椎体畸形</td><td>自闭症谱系障碍</td><td>树突状细胞，单核细胞，B细胞和自然杀伤细胞缺乏症</td><td>致心律失常性右心室发育不良1型</td></tr>
<tr><td>骶缺陷前壁膨出</td><td>自身免疫性疾病1型</td><td>双侧多囊性肾发育不良</td><td>致心律失常性右心室发育不良2型</td></tr>
<tr><td>癫痫（X连锁，带有可变学习障碍和行为障碍）</td><td>自身免疫性疾病6型</td><td>双侧额顶多小脑回</td><td>窒息性腔部营养不良2型</td></tr>
<tr><td>癫痫（侧颞叶）</td><td>自身免疫性疾病多系统综合征</td><td>双侧视神经发育不全</td><td>窒息性腔部营养不良4型</td></tr>
<tr><td>癫痫（家族性颞叶5型）</td><td>自身免疫性甲状腺疾病3型</td><td>双侧枕叶多小脑回</td><td>窒息性腔部营养不良5型</td></tr>
<tr><td>癫痫（家族性颞叶7型）</td><td>自身免疫性间质性肺，关节和肾脏疾病</td><td>双功能过氧化物酶缺乏</td><td>智力低下，Cabezas型，X连锁</td></tr>
<tr><td>癫痫（家族性颞叶8型）</td><td>自身免疫性淋巴细胞增生综合征</td><td>双行睫淋巴水肿综合征</td><td>智力低下，Nascimento型，X连锁</td></tr>
<tr><td>癫痫（青少年肌阵挛5型）</td><td>自身免疫性淋巴细胞增生综合征1b型</td><td>双外侧裂多小脑回，常染色体隐性遗传</td><td>智力发育迟钝性血磷酸酯酶过多</td></tr>
<tr><td>癫痫（夜间额叶，1型）</td><td>自身免疫性淋巴细胞增生综合征2型</td><td>水肿，乳酸酸中毒，铁粒幼细胞性贫血</td><td>智力发育迟缓综合征（无泪，贲门失弛缓症）</td></tr>
<tr><td>癫痫（夜间额叶，3型）</td><td>自身免疫性淋巴细胞增生综合征5型</td><td>睡眠觉醒周期紊乱，延迟期型</td><td>中风1型</td></tr>
<tr><td>癫痫（夜间额叶，4型）</td><td>自身炎症反应（Behcet-like）</td><td>四肢对称性色素异常症</td><td>中链酰基辅酶A脱氢酶缺乏症</td></tr>
<tr><td>癫痫（夜间额叶，5型）</td><td>自身炎症反应（PLCG2相关）</td><td>松果体增生和糖尿病综合征</td><td>中枢神经系统海绵状变性</td></tr>
<tr><td>癫痫，脊柱侧弯，和大头畸形综合征</td><td>自身炎症反应（婴儿小肠结肠炎）</td><td>酸性磷酸酶缺乏症</td><td>中枢性性早熟</td></tr>
<tr><td>癫痫，听力丧失，智力发育迟缓综合征</td><td>足底脂肪过多症，畸相，发育迟缓</td><td>酸易分解亚基缺乏</td><td>中性1氨基酸转运缺陷</td></tr>
<tr><td>癫痫伴觉醒癫痫大发作</td><td>组氨酸血症</td><td>髓过氧化物酶缺乏症</td><td>中性粒细胞性免疫缺陷综合征</td></tr>
<tr><td>癫痫病（家族性成人肌阵挛2型）</td><td>组织细胞增生症和淋巴结肿大综合征</td><td>髓母细胞瘤</td><td>中央核肌病</td></tr>
<tr><td>癫痫病（家族性成人肌阵挛5型）</td><td>左心室致密化不全10型</td><td>髓鞘脑白质营养不良7型</td><td>中央核肌病1型</td></tr>
<tr><td>左心室致密化不全6型</td><td>左心室致密化不全7型</td><td>左心室致密化不全8型</td><td></td></tr>
</table>
 <form method="post" action="${ctx }/exome/showFirst?urlType=home"  id="fanhui" style="display:none;">
	<input type="text" name="collInfoid" id="collInfoid" value="${collInfo.collInfoId}">
	<input type="submit" value="返回" id="fanhui_aa"/>
	</form>
<script src="${ctx}/static/plugin/jquery/1.11.3/jquery.min.js"></script>
<script src="${ctx}/static/javascript/common/base.js"></script>
<script src="${ctx}/static/javascript/services/user.js"></script>
<script src="${ctx }/static/js/admin/reportPrint/all.js"></script>
<script>
$(document).ready(function(){
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