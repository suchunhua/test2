//药物风险筛查模块
var drugRisk = {
		//药物风险汇总
		riskSummary:{
			packageData:function(params){
				var html = "";
				$.each(params,function(i,obj){
					html += '<li>'
						+'<span>药物敏感性：'+obj.sensitivity+'</span><span>毒副反应风险：'+obj.sensitivity+'</span>'
				        +'<span>适应症：'+obj.indication+'</span><span>药物通用名：'+obj.drug+'</span>'
			        +'</li>';
				});
				$(".notebook-row").append(html);
			}
		},
		//药物转运蛋白和药物代谢酶类基因信息汇总
		infoSummary:{
			packageData:function(params){
				var html = "";
				$.each(params,function(i,obj){
					html += '<li><a href="'+common.getRootPath()+'/exome/drugRisk/infoSummary/detail?drug='+obj.drug+'"><i>'+obj.drug+'</i><i class="go"></i></a></li>';
				});
				$(".words").append(html);
			}
		},
		getPageContent:function(params){
			page.getPageContentFromAjax({
				skip:false,
				url:params.pagePath,
				data:{"pageNum":Number($("#pageNum").val())+1},
				successFunc:params.packageData
			});
		},
		init:function(params){
			drugRisk.getPageContent(params);
			$(params.scrollObject).scroll(function(event) {
				if (common.checkScrollSide($(params.checkScrollSide))) {
					drugRisk.getPageContent(params);
				}
			});
		}
}
