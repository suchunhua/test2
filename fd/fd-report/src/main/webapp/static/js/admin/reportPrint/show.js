String.prototype.trim=function() {
	        return this.replace(/(^\s*)|(\s*$)/g,'');
	    };
	    var high_quality=0;
	    var gene_type = document.getElementsByName("gene_type");
	    var variation_type1 = document.getElementsByName("variation_type1");
	    var cxzl = document.getElementsByName("cxzl");
	    for(i=0;i<variation_type1.length;i++){
	    	for(j=0;j<gene_type.length;j++){
	    		if(variation_type1[i].value==gene_type[j].value.split(/\s+/)[0]){
	    			if(cxzl[i].value.trim()=="高质量"){
	    				high_quality=1;
	    				break;
	    			}
	    		}
	    	}
	    }
	    if(high_quality==0){
	    	$("#variation_high").show();
	    }
	    
	    var egfr=0;
	    var gene_type = document.getElementsByName("gene_type");
	    for(i=0;i<gene_type.length;i++){
	    	if(gene_type[i].value.split(/\s+/)[0]=="EGFR"){
	    		egfr=1;
	    		break;
	    	}
	    }
	    if(egfr==0){
	    	$("#egfr").show();
	    }