$(document).on('turbolinks:load', function () {

  function build_to_image(image) {
    var html = `<img src="${image}" class="modal__content__image__list--preview">`
    return html;
  }

  $(function(){
    $('.card__inner').on('click',function(){
      var num = $(this).children('.index').text()
      num = Number(num)
      $('.js-modal_' + num).fadeIn();
      var image_list = $('.js-modal_' + num).children().children().children(".modal__content__image__list")

      $.ajax({
        url: "api/images",
        type: 'get',
        dataType: 'json',
        data: {portfolio_id: num}
      })
      .done(function (images) {
        images = images[0].images.url
        add_image = build_to_image(images)
        image_list.append(add_image)    
      })

      $('.js-modal-close').on('click',function(){
        $(".modal__content__image__list--preview").remove();
        $('.js-modal_' + num).fadeOut();
        return false;
      });
    });
  });
});

