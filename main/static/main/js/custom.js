
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
      "static/main/images/mother_and_children_care.jpg", 
      "static/main/images/kardiologiya.jpg",
      "static/main/images/ene-mahri.jpg",
      "static/main/images/diagnostics.jpg"
    ],  {duration: 2000, fade: 750});
    
  })(window.jQuery);


