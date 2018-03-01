//营养代谢能力模块
var nutritional = {
		//营养代谢能力列表页
		list:{
			getPageContent:function(){
				page.getPageContentFromAjax({
					skip:false,
					url:"/exome/nutritional",
					data:{"pageNum": Number($("#pageNum").val())+1},
					successFunc:nutritional.list.packageData
				});
			},
			packageData:function(params){
				var html = "";
				$.each(params,function(i,obj){
					var comprehensive = obj.comprehensive;
					(comprehensive.indexOf('较高') != -1) ? comprehensive = "<span><i class='red-high'></i>较高</span>" : "";
					(comprehensive.indexOf('正常') != -1) ? comprehensive = "<span><i class='green-normal'></i>正常</span>" : "";
					(comprehensive.indexOf('较低') != -1) ? comprehensive = "<span><i class='blue-low'></i>较低</span>" : "";
					html += '<li>'
				        +'<span><a href="'+common.getRootPath()+'/exome/nutritional/detail?category='+obj.category+'&comprehensive='+obj.comprehensive+'" class="link">'+obj.category+'</a></span>'+comprehensive
			        +'</li>';
				});
				$(".notebook-table").append(html);
			},
			init:function(){
				//一开始进入页面进行页面初始化操作将页面的值设置为空
				$("#pageNum").val("");
				$("#totalPage").val("");
				nutritional.list.getPageContent();
				$(window).scroll(function(event) {
					if (common.checkScrollSide($(".notebook-table"))) {
						nutritional.list.getPageContent();
					}
				});
			}
		},
		//营养代谢详情页模块
		detail:{
			init:function(){
				autoMergeCells._w_table_rowspan(".simple-table",1,0,null);
			}
		},
		init:function(params){
			params.module;
		}
}
