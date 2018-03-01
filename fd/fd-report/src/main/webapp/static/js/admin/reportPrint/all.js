$(document).ready(function(){
    var page_number;
    var table0_tr_length= $("#table0").find("tr").length;
    if(table0_tr_length%20==0){
        page_number=parseInt(table0_tr_length/20);
    }else{
        page_number=parseInt(table0_tr_length/20)+1;
    }
    for(i=1;i<=20;i++){
        $("#table1").append($("#table0").find("tr:nth-of-type("+i+")").clone());
    }

    $(".table_under>.inner>div").remove();
    if(page_number==1){
        $(".table_under>.inner").append("<div class=\"xd er\">1</div>");
    }
    if(page_number==2){
        $(".table_under>.inner").append("<div class=\"xd er\">1</div><!--"+
            "        --><div class=\"er\">2</div><!--"+
            "    --><div class=\"er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/xyy.png\"></div><!--"+
            "    --><div class=\"chang er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/my.png\"></div>");
    }
    if(page_number==3){
        $(".table_under>.inner").append("<div class=\"xd er\">1</div><!--"+
            "        --><div class=\"er\">2</div><!--"+
            "        --><div class=\"er\">3</div><!--"+
            "    --><div class=\"er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/xyy.png\"></div><!--"+
            "    --><div class=\"chang er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/my.png\"></div>");
    }
    if(page_number>3){
        $(".table_under>.inner").append("<div class=\"xd er\">1</div><!--"+
            "        --><div class=\"er\">2</div><!--"+
            "        --><div class=\"er\">3</div><!--"+
            "        --><div class=\"er\">4</div><!--"+
            "    --><div class=\"er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/xyy.png\"></div><!--"+
            "    --><div class=\"chang er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/my.png\"></div>");
    }

    $(".table_under").on("click",".er",function(){
        data3=parseInt($(this).html());
        if($(this).html()=="<img src=\""+$ctx+"/static/img/admin/reportPrint/pic/syy.png\">"){
            data3="syy";
        }
        if($(this).html()=="<img src=\""+$ctx+"/static/img/admin/reportPrint/pic/sy.png\">"){
            data3="sy";
        }
        if($(this).html()=="<img src=\""+$ctx+"/static/img/admin/reportPrint/pic/xyy.png\">"){
            data3="xyy";
        }
        if($(this).html()=="<img src=\""+$ctx+"/static/img/admin/reportPrint/pic/my.png\">"){
            data3="my";
        }
        data4=parseInt($(".table_under .xd").text());
        if(typeof data3=="number"){
            $("#table1").find("tr").remove();
            for(i=data3*20-19;i<=data3*20;i++){
                $("#table1").append($("#table0").find("tr:nth-of-type("+i+")").clone());
            }
            $(".table_under>.inner>div").remove();
            
            if(page_number==1){
                $(".table_under>.inner").append("<div class=\"xd er\">1</div>");
            }
            if(page_number==2){
                if(data3==1){
                    $(".table_under>.inner").append("<div class=\"xd er\">1</div><!--"+
                        "        --><div class=\"er\">2</div><!--"+
                        "    --><div class=\"er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/xyy.png\"></div><!--"+
                        "    --><div class=\"chang er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/my.png\"></div>");
                }
                if(data3==2){
                    $(".table_under>.inner").append("<div class=\"er\">1</div><!--"+
                        "        --><div class=\"xd er\">2</div>");
                }

            }
            if(page_number==3){
                if(data3==1){
                    $(".table_under>.inner").append("<div class=\"xd er\">1</div><!--"+
                        "        --><div class=\"er\">2</div><!--"+
                        "        --><div class=\"er\">3</div>");
                }
                if(data3==2){
                    $(".table_under>.inner").append("<div class=\"er\">1</div><!--"+
                        "        --><div class=\"xd  er\">2</div><!--"+
                        "        --><div class=\"er\">3</div>");
                }
                if(data3==3){
                    $(".table_under>.inner").append("<div class=\"er\">1</div><!--"+
                        "        --><div class=\"er\">2</div><!--"+
                        "        --><div class=\"xd  er\">3</div>");
                }
            }
            if(page_number>3){
                if(data3>1&&data3<page_number-1){
                    $(".table_under>.inner").append("<div class=\"chang er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/sy.png\"></div><!--"+
                        "        --><div class=\"er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/syy.png\"></div><!--"+
                        "        --><div class=\"er\">"+(data3-1)+"</div><!--"+
                        "        --><div class=\"xd er\">"+data3+"</div><!--"+
                        "        --><div class=\"er\">"+(data3+1)+"</div><!--"+
                        "        --><div class=\"er\">"+(data3+2)+"</div><!--"+
                        "    --><div class=\"er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/xyy.png\"></div><!--"+
                        "    --><div class=\"chang er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/my.png\"></div>");
                }
                if(data3==1){
                    $(".table_under>.inner").append("<div class=\"xd er\">1</div><!--"+
                        "        --><div class=\"er\">2</div><!--"+
                        "        --><div class=\"er\">3</div><!--"+
                        "        --><div class=\"er\">4</div><!--"+
                        "    --><div class=\"er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/xyy.png\"></div><!--"+
                        "    --><div class=\"chang er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/my.png\"></div>");
                }
                if(data3==page_number){
                    $(".table_under>.inner").append("<div class=\"chang er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/sy.png\"></div><!--"+
                        "        --><div class=\"er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/syy.png\"></div><!--"+
                        "        --><div class=\"er\">"+(page_number-3)+"</div><!--"+
                        "        --><div class=\"er\">"+(page_number-2)+"</div><!--"+
                        "        --><div class=\"er\">"+(page_number-1)+"</div><!--"+
                        "        --><div class=\"xd er\">"+page_number+"</div><!--");
                }
                if(data3==page_number-1){
                    $(".table_under>.inner").append("<div class=\"chang er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/sy.png\"></div><!--"+
                        "        --><div class=\"er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/syy.png\"></div><!--"+
                        "        --><div class=\"er\">"+(page_number-3)+"</div><!--"+
                        "        --><div class=\"er\">"+(page_number-2)+"</div><!--"+
                        "        --><div class=\"xd er\">"+(page_number-1)+"</div><!--"+
                        "        --><div class=\"er\">"+page_number+"</div><!--"+
                        "    --><div class=\"er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/xyy.png\"></div><!--"+
                        "    --><div class=\"chang er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/my.png\"></div>");
                }
            }
        }else{
            if(data3=="xyy"){
                data3=data4+1;
            }
            if(data3=="syy"){
                data3=data4-1;
            }
            if(data3=="sy"){
                data3=1;
            }
            if(data3=="my"){
                data3=Math.ceil($("#table0").find("tr").length/20);
            }
            $("#table1").find("tr").remove();
            for(i=data3*20-19;i<=data3*20;i++){
                $("#table1").append($("#table0").find("tr:nth-of-type("+i+")").clone());
            }
            $(".table_under>.inner>div").remove();

            if(page_number==1){
                $(".table_under>.inner").append("<div class=\"xd er\">1</div>");
            }
            if(page_number==2){
                if(data3==1){
                    $(".table_under>.inner").append("<div class=\"xd er\">1</div><!--"+
                        "        --><div class=\"er\">2</div><!--"+
                        "    --><div class=\"er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/xyy.png\"></div><!--"+
                        "    --><div class=\"chang er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/my.png\"></div>");
                }
                if(data3==2){
                    $(".table_under>.inner").append("<div class=\"er\">1</div><!--"+
                        "        --><div class=\"xd er\">2</div>");
                }

            }
            if(page_number==3){
                if(data3==1){
                    $(".table_under>.inner").append("<div class=\"xd er\">1</div><!--"+
                        "        --><div class=\"er\">2</div><!--"+
                        "        --><div class=\"er\">3</div>");
                }
                if(data3==2){
                    $(".table_under>.inner").append("<div class=\"er\">1</div><!--"+
                        "        --><div class=\"xd  er\">2</div><!--"+
                        "        --><div class=\"er\">3</div>");
                }
                if(data3==3){
                    $(".table_under>.inner").append("<div class=\"er\">1</div><!--"+
                        "        --><div class=\"er\">2</div><!--"+
                        "        --><div class=\"xd  er\">3</div>");
                }
            }
            if(page_number>3){
                if(data3>1&&data3<page_number-1){
                    $(".table_under>.inner").append("<div class=\"chang er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/sy.png\"></div><!--"+
                        "        --><div class=\"er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/syy.png\"></div><!--"+
                        "        --><div class=\"er\">"+(data3-1)+"</div><!--"+
                        "        --><div class=\"xd er\">"+data3+"</div><!--"+
                        "        --><div class=\"er\">"+(data3+1)+"</div><!--"+
                        "        --><div class=\"er\">"+(data3+2)+"</div><!--"+
                        "    --><div class=\"er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/xyy.png\"></div><!--"+
                        "    --><div class=\"chang er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/my.png\"></div>");
                }
                if(data3==1){
                    $(".table_under>.inner").append("<div class=\"xd er\">1</div><!--"+
                        "        --><div class=\"er\">2</div><!--"+
                        "        --><div class=\"er\">3</div><!--"+
                        "        --><div class=\"er\">4</div><!--"+
                        "    --><div class=\"er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/xyy.png\"></div><!--"+
                        "    --><div class=\"chang er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/my.png\"></div>");
                }
                if(data3==page_number){
                    $(".table_under>.inner").append("<div class=\"chang er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/sy.png\"></div><!--"+
                        "        --><div class=\"er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/syy.png\"></div><!--"+
                        "        --><div class=\"er\">"+(page_number-3)+"</div><!--"+
                        "        --><div class=\"er\">"+(page_number-2)+"</div><!--"+
                        "        --><div class=\"er\">"+(page_number-1)+"</div><!--"+
                        "        --><div class=\"xd er\">"+page_number+"</div><!--");
                }
                if(data3==page_number-1){
                    $(".table_under>.inner").append("<div class=\"chang er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/sy.png\"></div><!--"+
                        "        --><div class=\"er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/syy.png\"></div><!--"+
                        "        --><div class=\"er\">"+(page_number-3)+"</div><!--"+
                        "        --><div class=\"er\">"+(page_number-2)+"</div><!--"+
                        "        --><div class=\"xd er\">"+(page_number-1)+"</div><!--"+
                        "        --><div class=\"er\">"+page_number+"</div><!--"+
                        "    --><div class=\"er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/xyy.png\"></div><!--"+
                        "    --><div class=\"chang er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/my.png\"></div>");
                }
            }
        }
    });




    $(".search_inner").on("click","input[type=\"submit\"]",function(){
    	 $("#table0 tr").remove();
    	    $("#table1").find("tr").remove();
    	    var suzhu=[];
    	    var str=$(".search_inner input[type=\"text\"]").val();
    	    var patt = new RegExp(str);
    	    var row_length=$("#table1_1").find("tr").length;
    	    for(i=1;i<=row_length;i++){
    	        for(j=1;j<=4;j++){
    	            if(patt.test($("#table1_1").find("tr:nth-of-type("+i+") td:nth-of-type("+j+")").text())==true){
    	                suzhu.push($("#table1_1").find("tr:nth-of-type("+i+") td:nth-of-type("+j+")").text());
    	            }
    	        }
    	    }
        var table0_row_length=parseInt(suzhu.length/4);
        if(suzhu.length%4==0){
            for(i=1;i<=table0_row_length;i++){
                $("#table0").append("<tr><td></td><td></td><td></td><td></td></tr>");
            }
        }else{
            for(i=1;i<=table0_row_length+1;i++){
                $("#table0").append("<tr><td></td><td></td><td></td><td></td></tr>");
            }
        }
        for(i=1,ii=suzhu.length;i<=ii;i++){
            if(i%4==0){
                $("#table0").find("tr:nth-of-type("+(parseInt(i/4))+") td:nth-of-type(4)").append(suzhu[i-1]);
            }else{
                $("#table0").find("tr:nth-of-type("+(parseInt(i/4)+1)+") td:nth-of-type("+(i%4)+")").append(suzhu[i-1]);
            }
        }
        var table0_tr_length= $("#table0").find("tr").length;
        if(table0_tr_length%20==0){
            page_number=parseInt(table0_tr_length/20);
        }else{
            page_number=parseInt(table0_tr_length/20)+1;
        }
        for(i=1;i<=20;i++){
            $("#table1").append($("#table0").find("tr:nth-of-type("+i+")").clone());
        }

        $(".table_under>.inner>div").remove();
        if(page_number==1){
            $(".table_under>.inner").append("<div class=\"xd er\">1</div>");
        }
        if(page_number==2){
            $(".table_under>.inner").append("<div class=\"xd er\">1</div><!--"+
                "        --><div class=\"er\">2</div><!--"+
                "    --><div class=\"er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/xyy.png\"></div><!--"+
                "    --><div class=\"chang er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/my.png\"></div>");
        }
        if(page_number==3){
            $(".table_under>.inner").append("<div class=\"xd er\">1</div><!--"+
                "        --><div class=\"er\">2</div><!--"+
                "        --><div class=\"er\">3</div><!--"+
                "    --><div class=\"er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/xyy.png\"></div><!--"+
                "    --><div class=\"chang er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/my.png\"></div>");
        }
        if(page_number>3){
            $(".table_under>.inner").append("<div class=\"xd er\">1</div><!--"+
                "        --><div class=\"er\">2</div><!--"+
                "        --><div class=\"er\">3</div><!--"+
                "        --><div class=\"er\">4</div><!--"+
                "    --><div class=\"er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/xyy.png\"></div><!--"+
                "    --><div class=\"chang er\"><img src=\""+$ctx+"/static/img/admin/reportPrint/pic/my.png\"></div>");
        }
    });
});