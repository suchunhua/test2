//疾病风险模块
var riskConstitution ={
		//所有疾病列表
		allRisk:{
			//搜索功能
			hideSearchBtn:function(){
				if(!$("input[name='screenName']").val()){
					$("#q_label").toggle();
					$(".q_i").toggle();
				}
			}
		},
		//疾病风险模块中list页面
		list:{
			getIllnessRiskGradeByGrade:function(param){
				if(!common.checkIsEmpty(param)){
					$.ajax({
						url: common.getRootPath() + "/exome/riskConstitution/riskGrade",
						data:{"grade":param},
						type:"post",
						cache:false,
						async:false,
						dataType:'json',
						success:function(data){
							if(data.flag){
								$(".grade h1").text(data.illnessRiskGrade.grade);
								$("#riskLevel").text(data.illnessRiskGrade.riskLevel);
								$("#judge").text(data.illnessRiskGrade.judge);
								popup.contentRighttop.init(".grade");
							}else{
								alert(data.error);
							}
						},
						error:function(){
							alert("网络错误");
						}
					});
				}else{
					alert("请输入参数");
				}
			},
			init:function(){
			}
		},
		detail:{
			init:function(){
			/*$(".disease-box img").height($(".disease-box img").outerWidth(true) / 2);
			$(window).resize(function() {
				$(".disease-box img").height($(".disease-box img").outerWidth(true) / 2);
			});*/
		}
	}
}
