var healthGuide = {
		detailGuide:function(param){
			var othis = $(param);
			var testContent=othis.attr('testContent');
			var scrIll=othis.attr('scrIll');
			if ($("#playForm").length > 0) {
				$("input[name='testContent']").val(testContent);
				$("input[name='scrIll']").val(scrIll);
			}else{
				var playForm = '<form action="'+common.getRootPath()+'/exome/healthGuide/diseaseRisk/detail" method="POST" id="playForm"><input type="text" style="width: 0px; height: 0px; border: 0px; visibility: hidden;" name="testContent" value="'
							+testContent+'"><input type="text" style="width: 0px; height: 0px; border: 0px; visibility: hidden;" name="scrIll" value="'+scrIll+'"></form>';
				$("body").append(playForm);
			}
			$("#playForm").submit();
		}
}