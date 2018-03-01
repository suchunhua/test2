var origin = {
		init:function(params){
			//饼图显示操作
		    $('#region').highcharts({
		        chart: {
		            plotBackgroundColor: null,
		            plotBorderWidth: null,
		            plotShadow: false
		        },
		        title: {
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
		                    enabled: true,
		                    format: '<b>{point.name}</b>: {point.percentage:.5f} %',
		                    style: {
		                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
		                    }
		                }
		            }
		        },
		        series: [{
		            type: 'pie',
		            name: 'region', 
		            data: [
		            	['大洋州',       Number(params.continentPojoOceania)],
		             	['欧洲',       Number(params.continentPojoEurope)],
		                ['南非',       Number(params.continentPojoSouth_Africa)],
		                ['北非',       Number(params.continentPojoNorth_Africa)],
		                ['中南亚',    Number(params.continentPojoCentral_South_Asia)],
		                ['美洲',     Number(params.continentPojoAmerica)],
		                {
		                    name: '东亚',
		                    y: Number(params.continentPojoEast_Asia),
		                    sliced: true,
		                    selected: true
		                }
		            ]
		        }]
		    });
		   $('#nation').highcharts({
		        chart: {
		            plotBackgroundColor: null,
		            plotBorderWidth: null,
		            plotShadow: false
		        },
		        title: {
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
		                    enabled: true,
		                    format: '<b>{point.name}</b>: {point.percentage:.5f} %',
		                    style: {
		                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
		                    }
		                }
		            }
		        },
		        series: [{
		            type: 'pie',
		            name: 'nation',
		            data: [
		                ['其他',       Number(params.eastAsiaPojoOthers)],
		                ['达斡尔族',       Number(params.eastAsiaPojoDaur)],
		                ['锡伯族',       Number(params.eastAsiaPojoXibo)],
		                ['赫哲族',      Number(params.eastAsiaPojoHezhen)],
		                ['雅库特',       Number(params.eastAsiaPojoYakut)],
		                ['柬埔寨',       Number(params.eastAsiaPojoCambodia)],
		                ['土家族',       Number(params.eastAsiaPojoTu)],
		                ['拉祜族',       Number(params.eastAsiaPojoLahu)],
		                ['畲族',       Number(params.eastAsiaPojoShe)],
		                ['彝族/纳西族',       Number(params.eastAsiaPojoYinaxi)],
		                ['苗族',       Number(params.eastAsiaPojoMiao)],
		                ['傣族',       Number(params.eastAsiaPojoDai)],
		                ['鄂伦春',     Number(params.eastAsiaPojoOroqen)],
		                {
		                    name: '汉族',
		                    y: Number(params.eastAsiaPojoHan),
		                    sliced: true,
		                    selected: true
		                }
		            ]
		        }]
		    });
		}
}
