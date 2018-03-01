var page = {
		getPageContentFromAjax:function(params){
			var pageNum = $('#pageNum').val(),totalPage=$('#totalPage').val();
			if(params.skip || Number(pageNum) < Number(totalPage) || (common.checkIsEmpty(pageNum) && common.checkIsEmpty(totalPage))){
				$.ajax({
					url: common.getRootPath() + params.url,
					data:params.data,
					type:"post",
					cache:false,
					async:false,
					dataType:'json',
					success:function(data){
						if(data.pageInfo.list.length > 0 && data.pageInfo.pageNum <= data.pageInfo.pages){
							params.successFunc(data.pageInfo.list);
							// 修改页码为当前页码
							$('#pageNum').val(data.pageInfo.pageNum);
							$('#totalPage').val(data.pageInfo.pages);
						}else{
							//没有数据
						}
					},
					error:function(){
						
					}
				});
			}
		}
}