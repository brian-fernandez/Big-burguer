$(window).scroll(function(event) {

    var scrollTop = $(window).scrollTop();


    if (scrollTop > 190) {

        $(".titulo3").addClass("active");
        $(".parrafo-1").addClass("active");

    }
    if (scrollTop < 190) {
        $(".titulo3").removeClass("active");
        $(".parrafo-1").removeClass("active");


    }

    if (scrollTop > 500) {


        $(".card").addClass("active");

    }
    if (scrollTop < 310) {

        $(".card").removeClass("active");

    }




    if (scrollTop > 1250) {


        $(".titulos-container4").addClass("active");

    }
    if (scrollTop < 1200) {

        $(".titulos-container4").removeClass("active");

    }
    if (scrollTop > 1280) {


        $(".parrafo-container4").addClass("active");

    }
    if (scrollTop < 1200) {

        $(".parrafo-container4").removeClass("active");

    }
});