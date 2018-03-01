//疾病风险模块
var chart ={
		//纯合杂合的比例分布图
		homozygCharts:function(resultMap,chobj,zhobj){
			var resultMap = $.parseJSON(resultMap);
			//纯合比例图
			var chinactivatingData = [];
			$.each(resultMap.chlistInactivating, function(idx, obj) {
				chinactivatingData.push(base.returnFloat((obj.chEvery/resultMap.chtotal) *100));
			});
			var chmyChart = echarts.init(chobj[0]);
			var choption = {
				title: {
				     x: 'center',
				     text: '纯合缺陷',
				}, 
				grid: {
			         borderWidth: 0,
			         y:60,
			         y2:60,
			         bottom:'35%'
			     },
			     textStyle: {
		             fontSize: 21,
		             fontFamily:'微软雅黑'
		        },
			     xAxis: [
			         {
		               	axisTick:false,
			             type: 'category',
			             name:'缺陷基因数量',
			             nameLocation:'middle',
			             nameGap: 90,
			              axisLabel:{
			        	 	   rotate: 45,
			            	   textStyle: {
			                       color: 'rgb(88,89,91)',
			                       formatter: '{b}',
			                       fontSize: 21,
			                       fontFamily:'微软雅黑'
			                  }
			             },
			             data: resultMap.chinactivatDetail
			         }
			     ],
			     yAxis: [
			         {
			             type: 'value',
			             axisLabel:{
			            	   textStyle: {
			                       color: 'rgb(88,89,91)',
			                       fontSize: 16,
			                       fontFamily:'微软雅黑'
			                  }
			             },
			             name:'中国人群频率（%）',
			             nameLocation:'middle',
			             nameGap: 70
			         }
			     ],
			     series: [
			         {
			             type: 'bar',
			             itemStyle: {
			                 normal: {
			                     color: function(params) {
			                    	 var colorList = [
			                             '#F6B960','#F6B960','#F6B960','#F6B960','#F6B960',
			                              '#E87B26','#F6B960','#F6B960','#F6B960','#F6B960',
			                              '#F6B960','#F6B960','#F6B960','#F6B960','#F6B960','#F6B960'
			                           ];
			                    	 return colorList[params.dataIndex]
			                     },
			                     label: {
			                         show: true,
			                         position: 'top',
			                         formatter: '{c}%'
			                     },
			                     barBorderRadius: [10,10,0,0]
			                 }
			             },
			             data : chinactivatingData
			         }
			     ]
			 };
		     chmyChart.setOption(choption);
		    //杂合比例图
			var zhinactivatingData = [];
			$.each(resultMap.zhlistInactivating, function(idx, obj) {
				zhinactivatingData.push(base.returnFloat((obj.chEvery/resultMap.zhtotal) *100));
			});
			var zhmyChart = echarts.init(zhobj[0]);
			var zhoption = {
				title: {
				     x: 'center',
				     text: '杂合缺陷',
				}, 
				grid: {
			         borderWidth: 0,
			         y:60,
			         y2:60,
			         bottom:'35%'
			     },
			     textStyle: {
		             fontSize: 21,
		             fontFamily:'微软雅黑'
		        },
			     xAxis: [
			         {
		               	axisTick:false,
			             type: 'category',
			             name:'缺陷基因数量',
			             nameLocation:'middle',
			             nameGap: 90,
			              axisLabel:{
			        	 	   rotate: 45,
			            	   textStyle: {
			                       color: 'rgb(88,89,91)',
			                       formatter: '{b}',
			                       fontSize: 21,
			                       fontFamily:'微软雅黑'
			                  }
			             },
			             data: resultMap.zhinactivatDetail
			         }
			     ],
			     yAxis: [
			         {
			             type: 'value',
			             axisLabel:{
			            	   textStyle: {
			                       color: 'rgb(88,89,91)',
			                       fontSize: 16,
			                       fontFamily:'微软雅黑'
			                  }
			             },
			             name:'中国人群频率（%）',
			             nameLocation:'middle',
			             nameGap: 70
			         }
			     ],
			     series: [
			         {
			             type: 'bar',
			             itemStyle: {
			                 normal: {
			                     color: function(params) {
			                    	 var colorList = [
			                             '#F6B960','#F6B960','#F6B960','#F6B960','#F6B960',
			                              '#E87B26','#F6B960','#F6B960','#F6B960','#F6B960',
			                              '#F6B960','#F6B960','#F6B960','#F6B960','#F6B960','#F6B960'
			                           ];
			                    	 return colorList[params.dataIndex]
			                     },
			                     label: {
			                         show: true,
			                         position: 'top',
			                         formatter: '{c}%'
			                     },
			                     barBorderRadius: [10,10,0,0]
			                 }
			             },
			             data : zhinactivatingData
			         }
			     ]
			 };
		     zhmyChart.setOption(zhoption);
		},
		//喝酒等级柱状图
		baiduCharts:function(dataAlcoholResult,obj){
			if(!base.checkIsEmpty(dataAlcoholResult)){
				var alcoholResult = $.parseJSON(dataAlcoholResult);
				var alcoholData = [],colorList = [];
				var beatRatio = 0;//喝酒能力打败了多少人
				$.each(alcoholResult.listCount, function(idx, obj) {
					//计算改段所占比例
					var ratio = base.returnFloat((obj.count/alcoholResult.allCount) *100);
					alcoholData.push(ratio);
					if(alcoholResult.nutrientAlcohol.nutrientSymbol == obj.nutrientSymbol){
						colorList.push('#D54753');
						$("#gatherLevel").html(alcoholResult.nutrientAlcohol.nutrientSymbol);
						$("#beatRatio").html(beatRatio);
						$("#quiteRatio").html(ratio);
					}else{
						beatRatio += ratio;
						colorList.push('#C49A6C');
					}
				});
				// 基于准备好的dom，初始化echarts实例
		        var myChart = echarts.init(obj[0]);
		        // 指定图表的配置项和数据
		        var option = {
				     grid: {
				         borderWidth: 0,
				         x:10,
				         x2:10,
				         y:100,
				         y2:100,
				     },
				     textStyle: {
			             fontSize: 12
			        },
				     xAxis: [
				         {
				             axisLine:false,
				             axisTick:false,
				             type: 'category',
				              axisLabel:{
				            	   textStyle: {
				                       color: 'black',
				                       fontSize: 12
				                  }
				             },
				             data: alcoholResult.alcoholLevel
				         }
				     ],
				     yAxis: [
				         {
				             type: 'value',
				             show: false
				         }
				     ],
				     series: [
				         {
				             type: 'bar',
				             itemStyle: {
				                 normal: {
				                	 barBorderRadius: [10,10,0,0],
				                     color: function(params) {
				                         return colorList[params.dataIndex]
				                     },
				                     label: {
				                         show: true,
				                         position: 'top',
				                         formatter: '{c}%'
				                     },
				                    
				                 }
				             },
				             data:alcoholData
				         }
				     ]
				 };
		        // 使用刚指定的配置项和数据显示图表。
		        myChart.setOption(option);
			}
		}
}
