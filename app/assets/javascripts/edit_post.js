$(document).on('turbolinks:load', function () {
  if (window.location.pathname.match(/\/portfolios\/\d+\/edit/)){
    var del_input = $('[id^="portfolio_images_attributes_"][id*="_id"]')
    $('.post').submit(function(e){
      del_input.remove()
    })
  };
});
