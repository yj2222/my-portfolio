$(document).on('turbolinks:load', function () {
  $(function(){
    $('.card').on('click',function(){
      var num = $(this).children('.index').text()
      $('.js-modal_' + num).fadeIn();
      console.log(num)
      $('.js-modal-close').on('click',function(){
        $('.js-modal_' + num).fadeOut();
      });
    });
  });
});