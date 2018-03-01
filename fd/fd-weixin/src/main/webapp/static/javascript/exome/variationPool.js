//变异汇总模块
var variationPool={
		//不确定是否致病突变模块
		whetherPathogenic :{
			//不确定是否致病突变页面中的搜索功能
			search:function(){
				$(".table-header").html("");
				page.getPageContentFromAjax({
					skip:true, //不管是否到达最后一页都执行ajax
					url:"/exome/variationPool/whetherPathogenic/search",
					data:{"uncergene":$("#uncergene").val()},
					successFunc:variationPool.whetherPathogenic.packageData
				});
			},
			getPageContent:function(){
				page.getPageContentFromAjax({
					skip:false,
					url:"/exome/variationPool/whetherPathogenic/search",
					data:{"pageNum": Number($("#pageNum").val())+1},
					successFunc:variationPool.whetherPathogenic.packageData
				});
			},
			packageData:function(params){
				var html = "";
				$.each(params,function(i,obj){
					html += '<li>'
				        +'<h2>基因：<a href="http://www.genecards.org/cgi-bin/carddisp.pl?gene=${temp.uncergene}" target="_blank" onclick="return (function(){var truthBeTold = window.confirm(\'你正链接到genecards...\');  if(truthBeTold==false){return false;}})()">'+obj.uncergene+'</a></h2>' 
				        +'<span>碱基变异：<span class="cont">'+obj.uncerbase+'</span></span><span>氨基酸变异：<span class="cont">'+obj.unceraa+'</span></span>'
				        +'<span>纯合／杂合：<span class="cont">'+obj.uncermix+'</span></span><span>可能相关疾病：<span class="cont">'+obj.uncerillness+'</span></span>'
			        +'</li>';
				});
				$(".table-header").append(html);
			},
			init:function(){
				//对分页内容进行初始化使得一开始进来是从第一页进行展示
				$('#pageNum').val("");
				$('#totalPage').val("");
				//不确定是否致病突变模块中根据输入的基因进行搜索内容
				$("#uncergene").keyup(function(event){
					if(event.keyCode == 13){
						variationPool.whetherPathogenic.search();
					}
				});
				variationPool.whetherPathogenic.getPageContent();
				$(window).scroll(function(event) {
					if (common.checkScrollSide($(".table-header"))) {
						variationPool.whetherPathogenic.getPageContent();
					}
				});
			}
		},
		//缺陷基因模块
		defectiveGene:{
			getPageContent:function(){
				page.getPageContentFromAjax({
					skip:false,
					url:"/exome/variationPool/defectiveGene",
					data:{"pageNum":Number($("#pageNum").val())+1},
					successFunc:variationPool.defectiveGene.packageData
				});
			},
			packageData:function(params){
				var html = "";
				$.each(params,function(i,obj){
					html += '<li>'
					       +'<h2>基因：<a href="http://www.genecards.org/cgi-bin/carddisp.pl?gene=${temp.gene }" target="_blank" onclick="return (function(){var truthBeTold = window.confirm(\'你正链接到genecards...\');  if(truthBeTold==false){return false;}})()">'+obj.gene+'</a></h2>'
						      +'<span>变异类型：<span class="cont">'+obj.type+'</span></span>'
						      +'<span>碱基变异：<span class="cont">'+obj.base_change+'</span></span>'
						      +'<span>氨基酸变异：<span class="cont">'+obj.aa_change+'</span></span>'
						      +'<span>纯合／杂合：<span class="cont">'+obj.mix+'</span></span>'
					       +'</li>';
				});
				$(".table-header").append(html);
			},
			init:function(){
				variationPool.defectiveGene.getPageContent();
				$(window).scroll(function(event) {
					if (common.checkScrollSide($(".table-header"))) {
						variationPool.defectiveGene.getPageContent();
					}
				});
			}
		},
		init:function(params){
			params.module;
		}
}

