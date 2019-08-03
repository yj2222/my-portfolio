$(document).on('turbolinks:load', function () {
  var input = $('[id^="portfolio_images_attributes_"][id*="_id"]')
  $('.post').submit(function(e){
    input.remove()
  })
});
