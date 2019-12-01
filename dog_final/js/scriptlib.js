$(document).ready(function(){
    $("button#all_data").click(function() {
        $("#alldogtype").slideToggle(300);
    });

    $("button#dog_intel").click(function() {
        $("#dogintel").slideToggle(300);
    });

    $("button#forbid").click(function() {
        $("#dog_fb").slideToggle(300);
    });

    $("button#restrain").click(function() {
        $("#dog_rs").slideToggle(300);
    });
    $("button#hotel_detail").click(function() {
        $("#details").slideToggle(300);
    });

    $("button#get_recomm").click(function() {
        $("#venue").slideToggle(300);
    });
 
    });
