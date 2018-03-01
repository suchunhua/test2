//常染色体祖源分析
var origiN = {
		//祖源迁徒模块
		move:{
			init:function(params){
				$('.img80w').click(function() {
					$('.origin-detail').show('slow');
				});
				$('.origin-detail').click(function() {
					$('.origin-detail').hide('slow');
				});
			}
		},
		analysis:{
			//祖源分析结果排序
			sort:function(params){
				for(var i = 0; i< params.length; i ++){
					$(params[i]).each(function(index, el) {
						var nowThis = $(this),nowValue = nowThis.find('p').find('span').html();
						nowValue = nowValue.substring(0,nowValue.length-1);
						$(params[i]).each(function(index, el) {
							var loopThis = $(this),loopValue = loopThis.find('p').find('span').html();
							loopValue = loopValue.substring(0,loopValue.length-1);
							(Number(nowValue) < Number(loopValue)) ? loopThis.after(nowThis) : "";
						});
					});
				}
			},
			init:function(params){
				//饼图显示操作
			    $('#region').highcharts({
			        chart: {
			            plotBackgroundColor: null,
			            plotBorderWidth: null,
			            plotShadow: false,
			            height:450,
			            spacing : [100, 0 , 40, 0] //环状图
			        },
			        title: {
			        	floating:true,
			            text: '' //饼状图的标题
			        },
			        tooltip: {
			            pointFormat: '{series.name}: <b>{point.percentage:.5f}%</b>'
			        },
			        plotOptions: {
			            pie: {
			                allowPointSelect: true,
			                cursor: 'pointer',
			                dataLabels: {
			                    enabled: false,
			                    format: '<b>{point.name}</b>: {point.percentage:.2f} %',
			                    style: {
			                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
			                    }
			                },
			                showInLegend: true
			            }
			        },
			        series: [{
			            type: 'pie',
			            innerSize: '80%',
			            name: 'region', 
			            data: [		            	
			             	['欧洲',       Number(params.continentPojoEurope)],
			                ['南非',       Number(params.continentPojoSouth_Africa)],
			                ['北非',       Number(params.continentPojoNorth_Africa)],			               
			                ['美洲',     Number(params.continentPojoAmerica)],		               
			                {
			                    name: '东亚',
			                    y: Number(params.continentPojoEast_Asia),
			                    sliced: true,
			                    selected: true
			                },
			                ['大洋州',       Number(params.continentPojoOceania)],
			            	 ['中南亚',    Number(params.continentPojoCenlial_South_Asia)]
			            ]
			        }]
			    });
			    $('#nation').highcharts({
			        chart: {
			        	 plotBackgroundColor: null,
				            plotBorderWidth: null,
				            plotShadow: false,
				            height:450,
				            spacing : [100, 0 , 40, 0]
			        },
			        title: {
			        	floating:true,
			            text: '' //饼状图的标题
			        },
			        tooltip: {
			            pointFormat: '{series.name}: <b>{point.percentage:.5f}%</b>'
			        },
			        plotOptions: {
			            pie: {
			                allowPointSelect: true,
			                cursor: 'pointer',
			                dataLabels: {
			                    enabled: false,
			                    format: '<b>{point.name}</b>: {point.percentage:.2f} %',
			                    style: {
			                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
			                    }
			                },
			                showInLegend: true
			            }
			        },
			        series: [{
			            type: 'pie',
			            name: 'nation',
			            innerSize: '80%',
			            data: [
			            	 ['彝族/纳西族',       Number(params.eastAsiaPojoYinaxi)],
			                ['达斡尔族',       Number(params.eastAsiaPojoDaur)],
			                ['锡伯族',       Number(params.eastAsiaPojoXibo)],
			                ['赫哲族',      Number(params.eastAsiaPojoHezhen)],
			                ['雅库特',       Number(params.eastAsiaPojoYakut)],
			                ['柬埔寨',       Number(params.eastAsiaPojoCambodia)],
			                ['土家族',       Number(params.eastAsiaPojoTu)],
			                ['拉祜族',       Number(params.eastAsiaPojoLahu)],
			                ['鄂伦春',     Number(params.eastAsiaPojoOroqen)],
			                ['畲族',       Number(params.eastAsiaPojoShe)],			               
			                ['苗族',       Number(params.eastAsiaPojoMiao)],
			                ['傣族',       Number(params.eastAsiaPojoDai)],			               
			                ['其他',       Number(params.eastAsiaPojoOthers)],
			                {
			                    name: '汉族',
			                    y: Number(params.eastAsiaPojoHan),
			                    sliced: true,
			                    selected: true
			                }
			            ]
			        }]
			    });
			    origiN.analysis.sort(["#regionUl li","#nationUl li"]);
			}
		},
		init:function(params){
			
		}
}
