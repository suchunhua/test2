var blood = {
		//在abo.jsp和hla.jsp中用到问和答的时候调用这个方法
		QandA:function(){
			popup.pageBottom.init(".QandA");
		},
		init:function(params){
			autoMergeCells._w_table_rowspan("table.blood",1,0,null);
			var tr_length=$("table.blood tr").length;
			for(var i=0;i<tr_length;i++){
				var twoClass=$("table.blood tr:nth-child("+(i+1)+") td:nth-child(1)").text().trim();
				if(twoClass=="Ⅱ类"){
					$("table.blood tr:nth-child("+(i+1)+")").css('border-top','1px solid #b81b2c');
					break;
				}
			}
		}
}
