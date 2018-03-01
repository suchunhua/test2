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
	<link rel="stylesheet" type="text/css" href="${ctx}/static/css/join.css"> 
    <script src="${ctx}/static/plugin/jquery/3.1.0/jquery.min.js"></script>
    <script src="${ctx}/static/js/bootstrap.min.js"></script>
</head>

<body>
<%@ include file="common/top.jsp" %> 
    
<div class="view-pc <c:if test="${param.action eq 'recruit'}">view-pc-show</c:if>">
    <div class="section">
        <h1 class="title">JOIN US</h1>
        <h3 class="sub-title">加入我们</h3>
    </div>
    <h2 class="left-border-title">招聘岗位</h2>
    <ul class="join">
        <li data-index="0"><img src="${ctx}/static/img/join/join4.png" alt="医学检验所主任"><span>医学检验所主任</span></li>
        <li data-index="1"><img src="${ctx}/static/img/join/join5.png" alt="大客户销售主任"><span>大客户销售主任</span></li>
        <li data-index="2"><img src="${ctx}/static/img/join/join6.png" alt="遗传咨询师"><span>遗传咨询师&emsp;&emsp;&emsp;</span></li>
        <li data-index="3"><img src="${ctx}/static/img/join/join7.png" alt="基因测序技术员"><span>基因测序技术员</span></li>
        <li data-index="4"><img src="${ctx}/static/img/join/join8.png" alt="生物信息工程师 "><span>生物信息工程师 </span></li>
        <!-- <li><img src="${ctx}/static/img/join/join1.png" alt="市场推广专员 "><span>市场推广专员 </span></li>
        <li><img src="${ctx}/static/img/join/join2.png" alt="产品经理"><span>产品经理</span></li>
        <li><img src="${ctx}/static/img/join/join3.png" alt="网络销售专员"><span>网络销售专员</span></li> -->
        <li class="job51"><a href="http://search.51job.com/list/000000,000000,0000,00,9,99,%25E9%25A6%2596%25E5%25BA%25A6%25E7%2594%259F%25E7%2589%25A9%25E7%25A7%2591%25E6%258A%2580%25EF%25BC%2588%25E8%258B%258F%25E5%25B7%259E%25EF%25BC%2589%25E6%259C%2589%25E9%2599%2590%25E5%2585%25AC%25E5%258F%25B8,1,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=" target="_blank"><img src="${ctx}/static/img/join/51job.png" alt=""></a></li>
    </ul>
    <h2 class="left-border-title">我们真诚地期待您的加入!</h2>
    <p class="resume" style="margin-top: 30px;">简历投递：<span>hr@firstdimension.net</span></p>
    <p class="resume" style="margin-bottom: 40px;">联系电话：0512-62987009</p>
    <div class="bombox">
        <div class="bombox-bg"></div>
        <div class="box">
            <div class="box-cont">
                <h1><span></span><img src="${ctx}/static/img/close.png" alt="" class="close-bomb"></h1>
                <div class="item">
                    <h2><img src="${ctx}/static/img/join/businessCard.png" alt="" style="width: 24px;">岗位要求：</h2>
                    <ul class="require"></ul>
                </div>
                <div class="item">
                    <h2><img src="${ctx}/static/img/join/duty.png" alt="">岗位职责：</h2>
                    <ul class="duty"></ul>
                </div>
                <a href="http://search.51job.com/list/000000,000000,0000,00,9,99,%25E9%25A6%2596%25E5%25BA%25A6%25E7%2594%259F%25E7%2589%25A9%25E7%25A7%2591%25E6%258A%2580%25EF%25BC%2588%25E8%258B%258F%25E5%25B7%259E%25EF%25BC%2589%25E6%259C%2589%25E9%2599%2590%25E5%2585%25AC%25E5%258F%25B8,1,1.html?lang=c&amp;stype=1&amp;postchannel=0000&amp;workyear=99&amp;cotype=99&amp;degreefrom=99&amp;jobterm=99&amp;companysize=99&amp;lonlat=0%2C0&amp;radius=-1&amp;ord_field=0&amp;confirmdate=9&amp;fromType=&amp;dibiaoid=0&amp;address=&amp;line=&amp;specialarea=00&amp;from=&amp;welfare=" target="_blank"><img src="${ctx}/static/img/join/job51.png" alt="" class="item-bottom"/></a>
            </div>
        </div>
    </div>
</div>

<div id="fullpage" class="container top <c:if test="${param.action eq 'recruit'}">recruit</c:if>">
    <div class="section">
        <h1 class="blod">JOIN US</h1>
        <h3 class="regular">加入我们</h3>
      	<!-- <ul class="news-nav">
	        <li index="1"> 诚聘英才</li>
	        <li index="2" class="active">员工风采</li>
        </ul> -->
            <div class="section-1" style="<c:if test="${empty param.action}">display: none;</c:if>">
                <div class="container modal-bg">
                    <div class="row">
                        <div class="col-md-4 join" >
                            <div data-index="1" class="visible-lg-block">
                                <span>医学检验所主任</span>
                                <span>GENE SEQUENCING TECHNICAN</span>
                            </div>
                            <div class="hidden-lg">
                                <span>WELCOME</span>
                                <span>欢迎加入首度</span>
                            </div>
                        </div>
                        <div class="col-md-4 join" >
                            <div data-index="2">
                                <span>大客户销售主任</span>
                                <span>GENE SEQUENCING RESEARCHER</span>
                            </div>
                        </div>
                        <div class="col-md-4 join" >
                            <div class="visible-lg-block">
                                <span>WELCOME</span>
                                <span>欢迎加入首度</span>
                            </div>
                            <div data-index="1" class="hidden-lg">
                                <span>医检所主任</span>
                                <span>GENE SEQUENCING TECHNICAN</span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8 join" >
                            <div data-index="3">
                                <span>遗传咨询师</span>
                                <span>WEB DEVELOPMENT ENGINEER</span>
                            </div>
                        </div>
                        <div class="col-md-4 join" >
                            <div data-index="4">
                                <span>基因测序技术员</span>
                                <span>WEBSITE DEVELOPMENT LEADER</span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 join" >
                            <div data-index="5">
                                <span>生物信息工程师</span>
                                <span>SOFTWARE ENGINEER</span>
                            </div>
                        </div>
                        <div class="col-md-4 join">
                            <div class="last">
                                <a href="http://search.51job.com/list/000000,000000,0000,00,9,99,%25E9%25A6%2596%25E5%25BA%25A6%25E7%2594%259F%25E7%2589%25A9%25E7%25A7%2591%25E6%258A%2580%25EF%25BC%2588%25E8%258B%258F%25E5%25B7%259E%25EF%25BC%2589%25E6%259C%2589%25E9%2599%2590%25E5%2585%25AC%25E5%258F%25B8,1,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare="
                                    class="btn btn-default"
                                    target="_blank">前程无忧</a><br>简历请投递至<br>
                                <span>hr@firstdimension.net</span>
                            </div>
                        </div>
                        <div class="col-md-4 join"></div>
                    </div>
                    <div class="modal-join">
                        <div class="box">
                            <div class="contain">
                                <h1><span>基因测试技术员</span><img src="${ctx}/static/img/close.png" alt=""></h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="section-2" style="<c:if test="${param.action eq 'recruit'}">display: none;</c:if>">
                    <div class="row">
                        <div class="col-md-12 welcome">
                            <div class="employee" attr-info = "2016团队建设-同心协力，阔步前行">
                                <img src="http://images.firstdimension.cn/02AE8FFD64447BB83F7C07A2D18BA79A.jpg">
                            </div>
                            <div>
                                <span>WELCOME</span> <br>
                                <span>欢迎加入首度!</span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="employee" attr-info = "2016团队建设-同心协力，阔步前行">
                                <img src="http://images.firstdimension.cn/yuangongfengcai.png">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="employee emp-margin-top" attr-info = "2016团队建设-同心协力，阔步前行">
                                <img src="http://images.firstdimension.cn/2yuangong.jpg">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="employee" attr-info = "2016团队建设-同心协力，阔步前行">
                                <img src="http://images.firstdimension.cn/%E5%B8%82%E5%9C%BA%E9%83%A8%E5%90%88%E5%BD%B1.jpg">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div style="clear: both"></div>
    <%@ include file="common/bottom.jsp" %>
        <script>
        $(function() {
            var data = [
                {
                    title:'医学检验所主任',
                    detail:[{
                        name:'岗位要求',
                        info:[ //岗位要求
                        	'负责检验所日常工作的统筹管理',
                        	'参与检验所的团队组建、人才培养',
                        	'参与检验质量，开展检验质量控制工作',
                        	'优化操作流程，提高运营效率，降低运营成本',
                        	'协调和跟踪项目运营进展，定期统计、分析并汇报项目进展',
                        	'督促检验所各级人员认真执行相关法律法规及检验所规章制度和操作规程，确保检验人员及设备的安全及检验所的安全正常运营'
                        ]
                    },{
                        name:'岗位职责',
                        info:[ //岗位职责
                        	'医学检验专业、病理专业本科以上学历，副高以上（含副高）职称，具有医师资格优先；',
                        	'具有三年以上二级以上医院检验科或医学检验所管理工作经验，有分子病理实验室工作经验者优先；',
                        	'精通临床检验科的项目组建及日常管理工作、临床医学检验所的一系列法律法规；精通临床医学实验室日常管理文件的编写与管理流程；',
                        	'熟悉临床医学检验所质量管理体系的建立与执行、实验室的室间质量评价以及室内质量控制经验者优先；',
                        	'具备成熟的组织协调能力和对外公关能力，极强的执行力和团队管理能力；',
                        	'拥有良好的职业道德及敬业精神，旺盛的事业心，愿与企业长期共同发展。'
                        ]
                    }]
                },
                {
                    title:'大客户销售主任',
                    detail:[{
                        name:'岗位要求',
                        info:[
                        	'本科及以上学历，生物医药或市场营销管理等相关专业',
                        	'3年以上行业销售经验（如金融/投资/证券/银行、保险行业、科研院所/大型国企/大型私企、不孕不育门诊/专业医院/精子库、大型健康体检中心），有成功的渠道销售案例，如：年度销售达成率不低于800万/年',
                        	'具备深厚的行业资源背景和广泛的客户资源，熟悉大客户销售渠道,能快速带来销售额者佳',
                        	'擅长客情关系的开拓及维护，尤其是攻克关键人物及高层关系，至少有2个以上成功案例',
                        	'优秀的商务谈判能力，能从容应对高层谈判，较好的行业理解能力，能精准理解客户需求和项目推进能力',
                        	'较强的人际沟通能力、应变能力和协调能力，团队合作意识强',
                        	'良好的心理素质和职业操守，强烈的事业心和责任心，能承受较强的工作压力，可适应出差'
                        ]
                    },{
                        name:'岗位职责',
                        info:[
                        	'负责全国范围内产品销售、渠道开发、渠道管理等工作',
                        	'挖掘客户对基因检测行业的服务需求',
                        	'保证及时有效完成公司给予的年度销售目标',
                        	'完成上级领导安排的其他工作事项'
                        ]
                    }]
                },
                {
                    title:'遗传咨询师',
                    detail:[{
                        name:'岗位要求',
                        info:[
                        	'医学、遗传学、分子生物学相关专业，硕士及以上学历，有临床工作经验或遗传咨询相关从业经历者优先',
                        	'具有较强的表达沟通能力',
                        	'具有较强的学习能力和抗压能力'
                        ]
                    },{
                        name:'岗位职责',
                        info:[
                        	'结合临床专业知识及基因检测结果推荐合适的预防治疗方案',
                        	'负责基因检测报告的解读和遗传咨询服务',
                        	'收集整理经典案例并撰写宣传材料'
                        ]
                    }]
                },
                {
                    title:'基因测序技术员',
                    detail:[{
                        name:'岗位要求',
                        info:[
                        	'生物技术、生物工程、分子生物学、生物化学等相关专业',
                        	'专科以上学历，一年以上相关的实验室工作经验，优秀应届生也可',
                        	'具备良好的英语读写能力，能熟练运用办公软件'
                        ]
                    },{
                        name:'岗位职责',
                        info:[
                        	'操作二代测序以及相关流程',
                        	'日常实验室工作'
                        ]
                    }]
                },
                {
                    title:'生物信息工程师',
                    detail:[{
                        name:'岗位要求',
                        info:[
                        	'数学、计算机、物理、生物信息专业本科及以上学历，一年相关工作经验，优秀应届生也',
                        	'了解Linux操作系统，熟悉perl、python、C/C++中一种或一种以上编程语言',
                        	'具有高通量测序信息分析流程搭建经验者优先考虑',
                        	'良好的团队协作能力及沟通能力'
                        ]
                    },{
                        name:'岗位职责',
                        info:[
                        	'需求分析，算法设计及代码实现',
                        	'负责DNA测序数据分析软件算法实现、自动化检测及报告流程搭建',
                        	'流程测试，撰写相关文档'
                        ]
                    }]
                }
            ];

            $(".view-pc ul.join li").click(function(event) {
                var showData = data[Number($(this).attr('data-index'))];
                $(".bombox .box h1 span").html(showData.title);
                var requireStrHtml = "";
                if(showData.detail[0].info instanceof Array){
                    for(j=0;j<showData.detail[0].info.length;j++){
                        requireStrHtml += '<li>'+(j+1)+'.'+showData.detail[0].info[j]+'</li>'
                    }
                }else{
                    requireStrHtml +='<li>'+'1.'+showData.detail[0].info+'</li>';
                }
                $(".require").html(requireStrHtml);
                var dutyStrHtml = "";
                if(showData.detail[1].info instanceof Array){
                    for(j=0;j<showData.detail[1].info.length;j++){
                        dutyStrHtml += '<li>'+(j+1)+'.'+showData.detail[1].info[j]+'</li>';
                    }
                }else{
                    dutyStrHtml +='<li>'+'1.'+showData.detail[1].info+'</li>';
                }
                $(".duty").html(dutyStrHtml);
                $(".bombox").show();
            });
            $(".close-bomb").click(function(event) {
                $(".bombox").hide();
            });
            var showAdInfo = function(index){
                var strHtml  = '',
                    ad = data[index-1];
                var i,j;
                $('.modal-join .contain>h1>span').html(ad.title);
                $('.modal-join .contain').children('h4,div').remove();
                for(i=0;i<ad.detail.length;i++){
                    strHtml += '<h4>' +ad.detail[i].name+'</h4>';
                    if(ad.detail[i].info instanceof Array){
                        strHtml += '<div><ol>';
                        for(j=0;j<ad.detail[i].info.length;j++){
                            strHtml += '<li>'+ad.detail[i].info[j]+'</li>'
                        }
                        strHtml += '</ol></div>';
                    }else{
                        strHtml +='<div>'+ ad.detail[i].info +'</div>'
                    }
                }
                $('.modal-join .contain').append(strHtml);
            };
            

            $('div.join>div').click(function(e){
                var index = $(this).attr('data-index');
                var width = $('body')[0].clientWidth;
                var headerHeight  = $('header')[0].clientHeight;
                var height = $('body')[0].clientHeight;
                showAdInfo(index);
                $('.modal-join').show();
                $('.modal-join').css({
                    width:width +'px',
                    height:height + 'px',
                });
            });
            $('.modal-join h1>img').click(function(e){
                $('.modal-join').hide();
            });
        });
        </script>
</body>
</html>
