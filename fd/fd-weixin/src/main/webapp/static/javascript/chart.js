//疾病风险模块
var chart ={
		//图表模块
		histogram:function(exac){
			var a = (exac == null) ? 0 : exac; 
			var dataF= (1-a)*(1-a),
				  dataS = 2*a*(1-a),
				  dataT = a*a;
			var chart = new Highcharts.Chart('container', {// 图表初始化函数，其中 container 为图表的容器 div               
			    chart: {
			        type: 'column'                           //指定图表的类型，默认是折线图（line）
			    },
			    title: {
			        text: ''                 //指定图表标题
			    },
			    xAxis: {
			        categories: ['参考', '杂合突变', '纯合突变']   //指定x轴分组
			    },
			    yAxis:{
			    	min:0,
			    	title:{
			    		text:"突变率"
			    	}
			    },
			    series: [{                                 //指定数据列
			        name: " " ,                          //数据列名
			        data: [dataF, dataS, dataT] ,                     //数据
			        dataLabels: {
		                enabled: true,
		                color: '#FFFFFF',
		                align: 'center',
		                format: '{point.y:.4f}', // one decimal
		                y: 0, // 数据与柱状图的距离
		                style: {
		                    fontSize: '10px',
		                    fontFamily: 'Verdana, sans-serif'
				                }
			           }
			    }],
			});
		},
		//喝酒等级柱状图
		baiduCharts:function(dataAlcoholResult,obj){
			if(!common.checkIsEmpty(dataAlcoholResult)){
				var alcoholResult = $.parseJSON(dataAlcoholResult);
				var alcoholData = [],colorList = [];
				var beatRatio = 0;//喝酒能力打败了多少人
				$.each(alcoholResult.listCount, function(idx, obj) {
					//计算改段所占比例
					var ratio = common.returnFloat((obj.count/alcoholResult.allCount) *100);
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
