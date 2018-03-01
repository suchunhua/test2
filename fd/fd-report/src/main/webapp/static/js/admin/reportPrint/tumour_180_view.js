$(document).ready(function(){
	function insertAfter(newEl, targetEl)
	{
	    var parentEl = targetEl.parentNode;
	    if(parentEl.lastChild == targetEl)
	    {
	        parentEl.appendChild(newEl);
	    }else
	    {
	        parentEl.insertBefore(newEl,targetEl.nextSibling);
	    }
	}
	var chemotherapy_div=document.getElementsByClassName("chemotherapy")[0];
	var chemotherapy=parseInt(chemotherapy_div.offsetHeight);
	for(i=1;i<20;i++){
	    if(2090*i>=chemotherapy){
	        chemotherapy=2090*i;
	        break;
	    }
	}
	chemotherapy_div.style.height=chemotherapy+'px';

    var chemical_drug_div=document.getElementsByClassName("appendix4_1")[0];
    chemical_drug_div.style.height='2090px';
    
    var chemical_drug_div=document.getElementsByClassName("appendix4_1_1")[0];
    chemical_drug_div.style.height='2090px';


    var appendix4_1_div=document.getElementsByClassName("appendix4_2");
    var appendix4_1_div_length=appendix4_1_div.length;
    for(j=0;j<appendix4_1_div_length;j++){
        appendix4_1_div[j].style.height='2090px';
    }
    
    var chemical_drug_div=document.getElementsByClassName("appendix4_3")[0];
    chemical_drug_div.style.height='2090px';

    
    $(".bx").outerHeight(2090);
    $(".model2").outerHeight(2090);
    $(".model3").outerHeight(2090);
    $(".model4").outerHeight(2090);
    $(".model5").outerHeight(2090);
    $(".model6").outerHeight(2090);
    $(".model7").outerHeight(2090);
    $(".model8").outerHeight(2090);
    $(".model9").outerHeight(2090);    
    $(".model10").outerHeight(2090);
    $(".model11").outerHeight(2090);
    $(".model12").outerHeight(2090);
    $(".model13").outerHeight(2090);
    $(".model14").outerHeight(2090);
    $(".model15").outerHeight(2090);
    $(".model16").outerHeight(2090);
    $(".model17").outerHeight(2090);
    $(".model18").outerHeight(2090);
    $(".last").outerHeight(2090);
  
   
//buchong
    var now=0;
    var single_list_start=document.getElementsByClassName("chemical_drug")[0];
    now=single_list_start.getElementsByTagName("img")[0].offsetHeight;
    var computedStyle = document.defaultView.getComputedStyle(single_list_start.getElementsByTagName("img")[0],null);
    if(computedStyle.marginTop!=""){
        now+=parseInt(computedStyle.marginTop);
    }
    if(computedStyle.marginBottom!=""){
        now+=parseInt(computedStyle.marginBottom);
    }

    now=single_list_start.getElementsByClassName("catalogue_")[0].offsetHeight;
    var computedStyle = document.defaultView.getComputedStyle(single_list_start.getElementsByClassName("catalogue_")[0],null);
    if(computedStyle.marginTop!=""){
        now+=parseInt(computedStyle.marginTop);
    }
    if(computedStyle.marginBottom!=""){
        now+=parseInt(computedStyle.marginBottom);
    }


    now+=200;
    length_table=single_list_start.getElementsByTagName("table")[0].getElementsByTagName("tr").length;
    suzhu=length_table+1;
    for(i=1;i<=length_table;i++){
        now+=single_list_start.getElementsByTagName("table")[0].getElementsByTagName("tr")[i-1].offsetHeight;
        var computedStyle = document.defaultView.getComputedStyle(single_list_start.getElementsByTagName("table")[0].getElementsByTagName("tr")[i-1],null);
        if(computedStyle.marginTop!=""){
            now+=parseInt(computedStyle.marginTop);
        }
        if(computedStyle.marginBottom!=""){
            now+=parseInt(computedStyle.marginBottom);
        }
        if(now>=2090){
            suzhu=i;
            break;
        }
    }
    if(suzhu<=length_table){
        var newDiv = document.createElement("div");//创建元素
        newDiv.setAttribute("class","chemical_drug_page2 chemical_drug_all");//为创建的新元素添加属性
        var newimg=document.createElement("img");
        newimg.setAttribute("src","pic/head.png");
        newDiv.appendChild(newimg);
        insertAfter(newDiv,single_list_start);
        var single_list_page2=document.getElementsByClassName("chemical_drug_page2")[0];
        var newtable=document.createElement("table");
        newtable.setAttribute("class","table2");
        newtable.setAttribute("cellspacing","0");
        newtable.setAttribute("cellpadding","0");
        single_list_page2.appendChild(newtable);
        for(i=suzhu;i<=length_table;i++){
            single_list_page2.getElementsByTagName("table")[0].appendChild(single_list_start.getElementsByTagName("table")[0].getElementsByTagName("tr")[suzhu-1]);
        }
    }

    var pages;
    var single_list_all=document.getElementsByClassName("chemical_drug_all");
    if (single_list_all.length>0){
        for(page=2;page<=100;page++){
            var now=50,suzhu=0;
            var single_list_page;
            single_list_page=document.getElementsByClassName("chemical_drug_page"+page+"")[0];
            now=single_list_page.getElementsByTagName("img")[0].offsetHeight;
            var computedStyle = document.defaultView.getComputedStyle(single_list_page.getElementsByTagName("img")[0],null);
            if(computedStyle.marginTop!=""){
                now+=parseInt(computedStyle.marginTop);
            }
            if(computedStyle.marginBottom!=""){
                now+=parseInt(computedStyle.marginBottom);
            }
            if(single_list_page.getElementsByTagName("div").length>0) {
                now += document.getElementById("chemical_drug_bz").offsetHeight;
                var computedStyle = document.defaultView.getComputedStyle(document.getElementById("chemical_drug_bz"), null);
                if (computedStyle.marginTop != "") {
                    now += parseInt(computedStyle.marginTop);
                }
                if (computedStyle.marginBottom != "") {
                    now += parseInt(computedStyle.marginBottom);
                }
            }
            now+=84;
            length_table=single_list_page.getElementsByTagName("table")[0].getElementsByTagName("tr").length;
            suzhu=length_table+1;
            for(k=1;k<=length_table;k++){
                now+=single_list_page.getElementsByTagName("table")[0].getElementsByTagName("tr")[k-1].offsetHeight;
                var computedStyle = document.defaultView.getComputedStyle(single_list_page.getElementsByTagName("table")[0].getElementsByTagName("tr")[k-1],null);
                if(computedStyle.marginTop!=""){
                    now+=parseInt(computedStyle.marginTop);
                }
                if(computedStyle.marginBottom!=""){
                    now+=parseInt(computedStyle.marginBottom);
                }
                if(now>=2090){
                    suzhu=k;
                    break;
                }
            }
            if(suzhu<=length_table){
                var newDiv = document.createElement("div");//创建元素
                newDiv.setAttribute("class","chemical_drug_page"+(page+1)+" chemical_drug_all");//为创建的新元素添加属性
                var newimg=document.createElement("img");
                newimg.setAttribute("src","pic/head.png");
                newDiv.appendChild(newimg);
                insertAfter(newDiv,single_list_page);
                single_list_pagejia1=document.getElementsByClassName("chemical_drug_page"+(page+1)+"")[0];
                if(suzhu==1){
                    single_list_pagejia1.appendChild(single_list_page.getElementsByTagName("table")[0]);
                }else{
                    var newtable=document.createElement("table");
                    newtable.setAttribute("class","table2");
                    newtable.setAttribute("cellspacing","0");
                    newtable.setAttribute("cellpadding","0");
                    single_list_pagejia1.appendChild(newtable);
                    for(i=suzhu;i<=length_table;i++){
                        single_list_pagejia1.getElementsByTagName("table")[0].appendChild(single_list_page.getElementsByTagName("table")[0].getElementsByTagName("tr")[suzhu-1]);
                    }
                }
            }else{
                pages=page;
                break;
            }
        }
    }
    //buchong
    
    
    
    
    

    var chemical_drug_div=document.getElementsByClassName("chemical_drug")[0];
    chemical_drug_div.style.height='2090px';
    var chemical_drug_all_div=document.getElementsByClassName("chemical_drug_all");
    var chemical_drug_all_div_length=chemical_drug_all_div.length;
    for(i=0;i<chemical_drug_all_div_length;i++){
        chemical_drug_all_div[i].style.height='2090px';
    }
    var chemical_drug_div=document.getElementsByClassName("chemical_drug_zs")[0];
    chemical_drug_div.style.height='2090px';

    

    var tizhi_list1_table1=document.getElementById("aa");
    var tizhi_list1=tizhi_list1_table1.rows.length;
    var disease=[],disease1=[],disease2=[],rows=1;
    for(var i=3;i<=tizhi_list1;i++){
        disease.push(tizhi_list1_table1.rows[i-1].cells[0].innerText);
        disease1.push(tizhi_list1_table1.rows[i-1].cells[1].innerText);
    }
    var border_bottom_none;
    if(tizhi_list1>2) {
        //第二列
        for (var i = tizhi_list1; i > 2; i--) {
            if(i==4){
                border_bottom_none = 4;
            }
            if (disease1[i - 4] != disease1[tizhi_list1 - 3]) {
                if(i==tizhi_list1){
                    border_bottom_none = i;
                    break;
                }else{
                    if(disease[i - 3] == disease[tizhi_list1 - 3]){
                        border_bottom_none = i;
                        break;
                    }
                }
            }
            else{
                if(disease[i - 3] != disease[tizhi_list1 - 3]&&disease1[i - 3] == disease1[tizhi_list1 - 3]){
                    border_bottom_none = i;
                    break;
                }
            }
        }
        for (var i = tizhi_list1; i > 3; i--) {
            if (disease[i - 3] == disease[i - 4]&&disease1[i - 3] == disease1[i - 4]){
                tizhi_list1_table1.rows[i-1].cells[1].style.display="none";
                tizhi_list1_table1.rows[i-1].cells[1].style.color="#000";
                tizhi_list1_table1.rows[i-1].cells[1].style.fontWeight="normal";
                rows++;
            } else {
                tizhi_list1_table1.rows[i-1].cells[1].rowSpan = rows;
                rows = 1;
            }
        }
        tizhi_list1_table1.rows[2].cells[1].rowSpan = rows;
        tizhi_list1_table1.rows[border_bottom_none-1].cells[1].style.borderBottom = "none";
        //第一列
        for (var i = tizhi_list1; i > 2; i--) {
            if(i==4){
                border_bottom_none = 4;
            }
            if (disease[i - 4] != disease[tizhi_list1 - 3]) {
                border_bottom_none = i;
                break;
            }
        }
        for (var i = tizhi_list1; i > 3; i--) {
            if (disease[i - 3] == disease[i - 4]) {
                tizhi_list1_table1.rows[i-1].cells[0].style.display="none";
                tizhi_list1_table1.rows[i-1].cells[0].style.color="#000";
                tizhi_list1_table1.rows[i-1].cells[0].style.fontWeight="normal";
                rows++;
            } else {
                tizhi_list1_table1.rows[i-1].cells[0].rowSpan = rows;
                rows = 1;
            }
        }
        tizhi_list1_table1.rows[2].cells[0].rowSpan = rows;
        tizhi_list1_table1.rows[border_bottom_none-1].cells[0].style.borderBottom = "none";
    }
    var tizhi_list1_all=document.getElementsByClassName("chemical_drug_all");
    var tizhi_list1_all_length=tizhi_list1_all.length;
    for(j=0;j<tizhi_list1_all_length-1;j++){
        var tizhi_list1_table1=tizhi_list1_all[j].getElementsByTagName("table")[0];
        var tizhi_list1=tizhi_list1_table1.rows.length;
        var disease=[],disease1=[],disease2=[],rows=1;
        for(var i=1;i<=tizhi_list1;i++){
            disease.push(tizhi_list1_table1.rows[i-1].cells[0].innerText);
            disease1.push(tizhi_list1_table1.rows[i-1].cells[1].innerText);
        }
        var border_bottom_none;
        if(tizhi_list1>0) {
            //第二列
            for (var i = tizhi_list1; i > 0; i--) {
                if(i==2){
                    border_bottom_none = 2;
                }
                if (disease1[i - 2] != disease1[tizhi_list1 - 1]) {
                    if(i==tizhi_list1){
                        border_bottom_none = i;
                        break;
                    }else{
                        if(disease[i - 1] == disease[tizhi_list1 - 1]){
                            border_bottom_none = i;
                            break;
                        }
                    }
                }
                else{
                    if(disease[i - 1] != disease[tizhi_list1 - 1]&&disease1[i - 1] == disease1[tizhi_list1 - 1]){
                        border_bottom_none = i;
                        break;
                    }
                }
            }
            for (var i = tizhi_list1; i > 1; i--) {
                if (disease[i - 1] == disease[i - 2]&&disease1[i - 1] == disease1[i - 2]){
                    tizhi_list1_table1.rows[i-1].cells[1].style.display="none";
                    tizhi_list1_table1.rows[i-1].cells[1].style.color="#000";
                    tizhi_list1_table1.rows[i-1].cells[1].style.fontWeight="normal";
                    rows++;
                } else {
                    tizhi_list1_table1.rows[i-1].cells[1].rowSpan = rows;
                    rows = 1;
                }
            }
            tizhi_list1_table1.rows[0].cells[1].rowSpan = rows;
            //tizhi_list1_table1.rows[border_bottom_none-1].cells[1].style.borderBottom = "none";
            //第一列
            for (var i = tizhi_list1; i > 0; i--) {
                if(i==2){
                    border_bottom_none = 2;
                }
                if (disease[i - 2] != disease[tizhi_list1 - 1]) {
                    border_bottom_none = i;
                    break;
                }
            }
            for (var i = tizhi_list1; i > 1; i--) {
                if (disease[i - 1] == disease[i - 2]) {
                    tizhi_list1_table1.rows[i-1].cells[0].style.display="none";
                    tizhi_list1_table1.rows[i-1].cells[0].style.color="#000";
                    tizhi_list1_table1.rows[i-1].cells[0].style.fontWeight="normal";
                    rows++;
                } else {
                    tizhi_list1_table1.rows[i-1].cells[0].rowSpan = rows;
                    rows = 1;
                }
            }
            tizhi_list1_table1.rows[0].cells[0].rowSpan = rows;
            tizhi_list1_table1.rows[border_bottom_none-1].cells[0].style.borderBottom = "none";
        }
    }
    var tizhi_list1_table1=tizhi_list1_all[tizhi_list1_all_length-1].getElementsByTagName("table")[0];
    var tizhi_list1=tizhi_list1_table1.rows.length-1;
    var disease=[],disease1=[],disease2=[],rows=1;
    for(var i=1;i<=tizhi_list1;i++){
        disease.push(tizhi_list1_table1.rows[i-1].cells[0].innerText);
        disease1.push(tizhi_list1_table1.rows[i-1].cells[1].innerText);
    }
    var border_bottom_none;
    if(tizhi_list1>0) {
        //第二列
        for (var i = tizhi_list1; i > 0; i--) {
            if(i==2){
                border_bottom_none = 2;
            }
            if (disease1[i - 2] != disease1[tizhi_list1 - 1]) {
                if(i==tizhi_list1){
                    border_bottom_none = i;
                    break;
                }else{
                    if(disease[i - 1] == disease[tizhi_list1 - 1]){
                        border_bottom_none = i;
                        break;
                    }
                }
            }
            else{
                if(disease[i - 1] != disease[tizhi_list1 - 1]&&disease1[i - 1] == disease1[tizhi_list1 - 1]){
                    border_bottom_none = i;
                    break;
                }
            }
        }
        for (var i = tizhi_list1; i > 1; i--) {
            if (disease[i - 1] == disease[i - 2]&&disease1[i - 1] == disease1[i - 2]){
                tizhi_list1_table1.rows[i-1].cells[1].style.display="none";
                tizhi_list1_table1.rows[i-1].cells[1].style.color="#000";
                tizhi_list1_table1.rows[i-1].cells[1].style.fontWeight="normal";
                rows++;
            } else {
                tizhi_list1_table1.rows[i-1].cells[1].rowSpan = rows;
                rows = 1;
            }
        }
        tizhi_list1_table1.rows[0].cells[1].rowSpan = rows;
        //tizhi_list1_table1.rows[border_bottom_none-1].cells[1].style.borderBottom = "none";
        //第一列
        for (var i = tizhi_list1; i > 0; i--) {
            if(i==2){
                border_bottom_none = 2;
            }
            if (disease[i - 2] != disease[tizhi_list1 - 1]) {
                border_bottom_none = i;
                break;
            }
        }
        for (var i = tizhi_list1; i > 1; i--) {
            if (disease[i - 1] == disease[i - 2]) {
                tizhi_list1_table1.rows[i-1].cells[0].style.display="none";
                tizhi_list1_table1.rows[i-1].cells[0].style.color="#000";
                tizhi_list1_table1.rows[i-1].cells[0].style.fontWeight="normal";
                rows++;
            } else {
                tizhi_list1_table1.rows[i-1].cells[0].rowSpan = rows;
                rows = 1;
            }
        }
        tizhi_list1_table1.rows[0].cells[0].rowSpan = rows;
        //tizhi_list1_table1.rows[border_bottom_none-1].cells[0].style.borderBottom = "none";
        }
    
    
    
    
    var tizhi_list1_table1=document.getElementById("chemical_drug134");
    var tizhi_list1=tizhi_list1_table1.rows.length;
    var disease=[],rows=1;
    for(var i=2;i<=tizhi_list1;i++){
        disease.push(tizhi_list1_table1.rows[i-1].cells[0].innerText);
    }
    var border_bottom_none;
    if(tizhi_list1>1) {
        //第一列
        for (var i = tizhi_list1; i > 1; i--) {
            if(i==3){
                border_bottom_none = 3;
            }
            if (disease[i - 3] != disease[tizhi_list1 - 2]) {
                border_bottom_none = i;
                break;
            }
        }
        for (var i = tizhi_list1; i > 2; i--) {
            if (disease[i - 2] == disease[i - 3]) {
                tizhi_list1_table1.rows[i-1].cells[0].style.display="none";
                tizhi_list1_table1.rows[i-1].cells[0].style.color="#000";
                tizhi_list1_table1.rows[i-1].cells[0].style.fontWeight="normal";
                rows++;
            } else {
                tizhi_list1_table1.rows[i-1].cells[0].rowSpan = rows;
                rows = 1;
            }
        }
        tizhi_list1_table1.rows[1].cells[0].rowSpan = rows;
        tizhi_list1_table1.rows[border_bottom_none-1].cells[0].style.borderBottom = "none";
    }
    
    if(document.getElementsByClassName("chemical_drug_all_last1").length>0){
    	var tizhi_list1=document.getElementsByClassName("chemical_drug_all_last1")[0];
        var tizhi_list1_table_length=tizhi_list1.getElementsByTagName("table").length;
        var tizhi_list1_table1=tizhi_list1.getElementsByTagName("table")[tizhi_list1_table_length-1];
        var tizhi_list1=tizhi_list1_table1.rows.length;
        var disease=[],rows=1;
        if(tizhi_list1<12){
            for(var i=1;i<=tizhi_list1;i++){
                disease.push(tizhi_list1_table1.rows[i-1].cells[0].innerText);
            }
            var border_bottom_none;
            if(tizhi_list1>1) {
                //第一列
                for (var i = tizhi_list1; i > 1; i--) {
                    if(i==2){
                        border_bottom_none = 2;
                    }
                    if (disease[i - 2] != disease[tizhi_list1 - 1]) {
                        border_bottom_none = i;
                        break;
                    }
                }
                for (var i = tizhi_list1; i > 1; i--) {
                    if (disease[i - 1] == disease[i - 2]) {
                        tizhi_list1_table1.rows[i-1].cells[0].style.display="none";
                        tizhi_list1_table1.rows[i-1].cells[0].style.color="#000";
                        tizhi_list1_table1.rows[i-1].cells[0].style.fontWeight="normal";
                        rows++;
                    } else {
                        tizhi_list1_table1.rows[i-1].cells[0].rowSpan = rows;
                        rows = 1;
                    }
                }
                tizhi_list1_table1.rows[0].cells[0].rowSpan = rows;
                tizhi_list1_table1.rows[border_bottom_none-1].cells[0].style.borderBottom = "none";
            }
        }else{
            for(var i=2;i<=tizhi_list1;i++){
                disease.push(tizhi_list1_table1.rows[i-1].cells[0].innerText);
            }
            var border_bottom_none;
            if(tizhi_list1>2) {
                //第一列
                for (var i = tizhi_list1; i > 2; i--) {
                    if(i==3){
                        border_bottom_none = 3;
                    }
                    if (disease[i - 3] != disease[tizhi_list1 - 2]) {
                        border_bottom_none = i;
                        break;
                    }
                }
                for (var i = tizhi_list1; i > 2; i--) {
                    if (disease[i - 2] == disease[i - 3]) {
                        tizhi_list1_table1.rows[i-1].cells[0].style.display="none";
                        tizhi_list1_table1.rows[i-1].cells[0].style.color="#000";
                        tizhi_list1_table1.rows[i-1].cells[0].style.fontWeight="normal";
                        rows++;
                    } else {
                        tizhi_list1_table1.rows[i-1].cells[0].rowSpan = rows;
                        rows = 1;
                    }
                }
                tizhi_list1_table1.rows[1].cells[0].rowSpan = rows;
                tizhi_list1_table1.rows[border_bottom_none-1].cells[0].style.borderBottom = "none";
            }
        }
    }
    
    var basic_information_offset=Math.round($("#basic_information").offset().top/2090+1);
    $("span.basic_information_mulu").text(basic_information_offset);
    var gather_offset=Math.round($("#gather").offset().top/2090+1);
    $("span.gather_mulu").text(gather_offset);
    var target_offset=Math.round($("#target").offset().top/2090+1);
    $("span.target_mulu").text(target_offset);
    var variation_offset=Math.round($("#variation").offset().top/2090+1);
    $("span.variation_mulu").text(variation_offset);
    if($("body>.soma").length>0){
        var soma_offset=Math.round($("#soma").offset().top/2090+1);
        $("span.soma_mulu").text(soma_offset);
    }
    var susceptibility_offset=Math.round($("#susceptibility").offset().top/2090+1);
    $("span.susceptibility_mulu").text(susceptibility_offset);
    var high_frequency_offset=Math.round($("#high_frequency").offset().top/2090+1);
    $("span.high_frequency_mulu").text(high_frequency_offset);
    var peculiar_offset=Math.round($("#peculiar").offset().top/2090+1);
    $("span.peculiar_mulu").text(peculiar_offset);
    //var hlzb_offset=Math.round($("#hlzb").offset().top/2090+1);
    //$("span.hlzb_mulu").text(hlzb_offset);
    if($("a[href=\"#bx\"]").length>0){
    	var bx_offset=Math.round($("#bx").offset().top/2090+1);
    	   $("span.bx_mulu").text(bx_offset);
    }
    var appendix_offset=Math.round($("#appendix4_1").offset().top/2090+1);
    $("span.appendix_mulu").text(appendix_offset);
    var fda_offset=Math.round($("#fda").offset().top/2090+1);
    $("span.fda_mulu").text(fda_offset);
    var chemotherapy_offset=Math.round($("#chemotherapy").offset().top/2090+1);
    $("span.chemotherapy_mulu").text(chemotherapy_offset);
    var chemical_drug_offset=Math.round($("#chemical_drug").offset().top/2090+1);
    $("span.chemical_drug_mulu").text(chemical_drug_offset);

});