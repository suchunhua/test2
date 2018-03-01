var interestTest = {
		//通过ajax向后台获取详情信息
		getInterestTestDetail:function(dataType,category){
			var url = common.getRootPath() + "/exome/interestTest/detail?dataType="+dataType+"&category="+category;
			layer.open({
				  type: 2,
				  title: 'layer mobile页',
				  shadeClose: true,
				  shade: 0.8,
				  area: ['100%', '80%'],
				  content: url
			});
		}
}

