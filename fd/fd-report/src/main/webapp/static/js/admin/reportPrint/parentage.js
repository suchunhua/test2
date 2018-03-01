$(document).ready(function() {
    $(".option1").change(function(){
        var checkValue=$(".option1").val();
        if(checkValue=="common_chromosome"){
            $(".f_chromosome").hide();
            $(".m_chromosome").hide();
            $(".common_chromosome").show();
        }
        if(checkValue=="m_chromosome"){
            $(".f_chromosome").hide();
            $(".m_chromosome").show();
            $(".common_chromosome").hide();
        }
        if(checkValue=="f_chromosome"){
            $(".f_chromosome").show();
            $(".m_chromosome").hide();
            $(".common_chromosome").hide();
        }
  });
});


