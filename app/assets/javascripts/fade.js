$(function(){
  $(window).scroll(function (){
    $("#fade").each(function(){
      var imgPos = $(this).offset().top;
      var scroll = $(window).scrollTop();
      var windowHeight = $(window).height();
      if (scroll > imgPos - windowHeight + windowHeight/5){
        setTimeout(function(){
          $(".portfolio__produce__content__left").show(1000);
        },500);
        setTimeout(function(){
          $(".portfolio__produce__content__right").addClass('fade_on');
        },1500);
      } else {
        $(".portfolio__produce__content__left").css('display', 'none');
        $(".portfolio__produce__content__right").removeClass('fade_on');
      }
    });
  });
});


