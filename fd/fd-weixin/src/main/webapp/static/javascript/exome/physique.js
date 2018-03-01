//个体体质模块
var physique = {
		showList:function(params){
			var parent = $(params).parents(".shrink");
			parent.hasClass('active') ? parent.removeClass('active') : parent.addClass('active');
		},
		//通过ajax向后台获取个体体质的详情信息
		getPhysiqueDetail:function(params){
			$.ajax({
				url: common.getRootPath() + "/exome/physique/detail",
				data:{"screenName":params.screenName,"result":params.result},
				type:"post",
				cache:false,
				async:false,
				dataType:'json',
				success:function(data){
					var detailPspan = "<span class='red'>"+data.result+"</span>";
					if (data.result.indexOf("较高")>-1) {
						detailPspan = "<span class='red'>较高</span>";
					}
					if (data.result.indexOf("正常")>-1) {
						detailPspan = "<span class='green'>正常</span>";
					}
					if (data.result.indexOf("较低")>-1) {
						detailPspan = "<span class='blue'>较低</span>";
					}
					$(".physique-detail p").find('span').remove();
					$(".physique-detail p").append(detailPspan);
					$(".physique-detail h1").html(params.title);
					var html = "";
					for (var i = 0; i < data.otherPhysique.length; i++) {
						var result = data.otherPhysique[i].scrResult;
						if (data.otherPhysique[i].scrResult.indexOf("较高")>-1) {
							result="较高";
						}
						if (data.otherPhysique[i].scrResult.indexOf("正常")>-1) {
							result="正常";
						}
						if (data.otherPhysique[i].scrResult.indexOf("较低")>-1) {
							result="较低";
						}
						//检查是否有检测位点，有就显示
						if(data.otherPhysique[i].locate != undefined){
							$("#testSite").show();
							html += '<tr><td>'+data.otherPhysique[i].scrGene+'</td><td><a href="'+
								common.getRootPath()+'/chart/exac?selfTestDetId='+data.otherPhysique[i].Id+'">'+data.otherPhysique[i].locate+'</a></td><td>'+result+'</td></tr>';
						}else{
							$("#testSite").hide();
							html += '<tr><td>'+data.otherPhysique[i].scrGene+'</td><td>'+result+'</td></tr>';
						}
					}
					$(".physique-detail table tbody").html("");
					$(".physique-detail table tbody").append(html);
					popup.contentRighttop.init(".physique-detail");
				},
				error:function(){
					alert("网络错误");
				}
			});
		},
		//病原体感染风险详情
		showPathogensDetail:function(params){
			var othis = $(params);			
			var screenName = $(params).children().context.innerText.slice(0,-2);
			physique.getPhysiqueDetail({"screenName":screenName,"result":othis.children('span').html(),"title":screenName});
		},
		//其他个人体质
		showPhysiqueDetail:function(params){
			var othis = $(params);
			physique.getPhysiqueDetail({"screenName":othis.children('span').html(),"result":othis.attr('result'),"title":othis.children('span').html()});
		},
		init:function(){
			var otherPhysiqueIllness = ['斑秃','狐臭','肥胖','苯中毒'];
			var otherPhysiqueArray = ['<li onclick="physique.showPhysiqueDetail(this);" result="正常"><img src="'+common.getRootPath()+'/static/img/physic-ico/pelada.png" alt="'+otherPhysiqueIllness[0]+'"><span>'+otherPhysiqueIllness[0]+'</span></li>',
				'<li onclick="physique.showPhysiqueDetail(this);" result="正常"><img src="'+common.getRootPath()+'/static/img/physic-ico/body-odor.png" alt="'+otherPhysiqueIllness[1]+'"><span>'+otherPhysiqueIllness[1]+'</span></li>',
				'<li onclick="physique.showPhysiqueDetail(this);" result="正常"><img src="'+common.getRootPath()+'/static/img/physic-ico/obesity.png" alt="'+otherPhysiqueIllness[2]+'"><span>'+otherPhysiqueIllness[2]+'</span></li>',
				'<li onclick="physique.showPhysiqueDetail(this);" result="正常"><img src="'+common.getRootPath()+'/static/img/physic-ico/poisoning.png" alt="'+otherPhysiqueIllness[3]+'"><span>'+otherPhysiqueIllness[3]+'</span></li>'];
			$("#otherPhysique").find('li').each(function(index, el) {
				for(var i = 0; i < otherPhysiqueIllness.length; i++){
					otherPhysiqueArray[i] = ($(this).find('span').html()==otherPhysiqueIllness[i]) ? "" : otherPhysiqueArray[i];
				}
			});
			$("#otherPhysique").append(otherPhysiqueArray[0] + otherPhysiqueArray[1] + otherPhysiqueArray[2] + otherPhysiqueArray[3]);
		}
}

$(function(){
	physique.init({});
});