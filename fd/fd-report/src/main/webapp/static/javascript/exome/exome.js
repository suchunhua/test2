var exome ={
		getRiskGrade:function(param){
			if(!base.checkIsEmpty(param)){
				$.ajax({
					url: base.getRootPath() + "/exome/riskGrade",
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
		}
}