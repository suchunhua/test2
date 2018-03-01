$(document).ready(function(){
	 var name=$('.name .signature').text();
	 var reg= /^[A-Za-z]/;
	 if (reg.test(name)){
	 	$('.name .signature').css({'fontSize':'200%'});
	 }
	 var analysis_table=$('.analysis').find('table');
	 if(analysis_table.length>0){
		 var td_length=analysis_table.find('th').length;
		 autoMergeCells._w_table(analysis_table.selector,[1]);
		 autoMergeCells._w_table(analysis_table.selector,[td_length]);
		 var tr_length=analysis_table.find('tbody tr').length;
	     for(var i=tr_length;i>0;i--){
	     	var td1=analysis_table.find('tbody tr:nth-of-type('+i+') td:first-of-type');
		        if(td1.css('display')!='none'){
					td1.css('border-bottom','none');		        	
		        	break;
		        }
	     }
	     for(var i=tr_length;i>0;i--){
		        var td2=analysis_table.find('tbody tr:nth-of-type('+i+') td:nth-of-type(2)');
		        if(td2.css('display')!='none'){
					td2.css('border-bottom','none');		        	
		        	break;
		        }

	     }
	 }
});