
  (function ($) {
  
  "use strict";

    // NAVBAR
    $('.navbar-nav .nav-link').click(function(){
        $(".navbar-collapse").collapse('hide');
    });

    $(window).scroll(function() {    
        var scroll = $(window).scrollTop();

        if (scroll >= 50) {
            $(".navbar").addClass("sticky-nav");
        } else {
            $(".navbar").removeClass("sticky-nav");
        }
    });

    // BACKSTRETCH SLIDESHOW
    $('#section_1').backstretch([
      "static/main/images/slide/gettyimages-1248607560-612x612.jpg", 
      "static/main/images/slide/healthcare-background-with-medical-symbols-hexagonal-frame_1017-26363.jpg",
      "static/main/images/slide/health-insurance-concept-reduce-medical-expenses-hand-flip-wood-cube-with-icon-healthcare-medical-coin-wood-background-copy-space_52701-34.jpg",
      "static/main/images/slide/white-illustrated-medical-cross-man-holding-his-hands_438099-7588.jpg"
    ],  {duration: 2000, fade: 750});
    
  })(window.jQuery);


