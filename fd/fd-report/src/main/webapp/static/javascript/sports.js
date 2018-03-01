var sports = {
		details:function(){
			$(".option").on("change",".option1",function(){
		        var checkValue=$(".option1").val();
		        if(checkValue=="tumour"){
		            $(".option2").text("没有3级以上的相关资料，不进行临床指导");
		        }
		        if(checkValue=="illness"){
		            $(".option2").text("经各位点判定，结果不一致，不进行临床指导");
		        }
		        if(checkValue=="single"){
		            $(".option2").text("检测位点在检测位点在内含子、启动子或基因间等区域，全外检测不能测到");
		        }
		        if(checkValue=="constitution"){
		            $(".option2").text("检测位点在检测位点在外显子区域，但没有测到");
		        }
		        if(checkValue=="zdnp"){
		            $(".option2").text("该位点检测到基因型，但与已知基因型不匹配");
		        }
		        
		        if(checkValue=="aa1"){
		            $(".option2").text("基于被医学会认可的指南或经由某些重大卫生系统的认可");
		        }
		        if(checkValue=="aa2"){
		            $(".option2").text("基于多项统计显著的研究");
		        }
		        if(checkValue=="aa3"){
		            $(".option2").text("基于多项重复研究，因此药效关系很有可能是有意义的");
		        }
		        if(checkValue=="aa4"){
		            $(".option2").text("基于多项重复研究，但某些可能无统计显著性或样本数量少");
		        }
		        if(checkValue=="aa5"){
		            $(".option2").text("仅基于1项有显著差异的研究（未重复）或多项研究但缺乏明显药效关联性");
		        }
		    });
			$(".fanhui img").click(function(){
		        history.go(-1);
		    });
		     $(".fanhui").mouseenter(function(){
		    	$(".fanhui div").show();
		    });
		    $(".fanhui").mouseleave(function(){
		    	$(".fanhui div").hide();
		    });
			//合并表格中的单元格
			autoMergeCells._w_table_rowspan(".sports-details",1);
			$(".fanhui img").click(function(){
		    	$("#fanhui_aa").click();
		    });
		    $(".fanhui").mouseenter(function(){
		    	$(".fanhui div").show();
		    });
		    $(".fanhui").mouseleave(function(){
		    	$(".fanhui div").hide();
		    });
		},
		init:function(params){
			
		}
}
