$(document).on('turbolinks:load', function () {
  
  if (window.location.pathname == "/"|| window.location.pathname == "/portfolios"){

    function build_to_modal(pf) {
      var html = `<div class="modal js-modal_${pf.id}">
                    <div class="modal__bg js-modal-close">
                    </div>
                    <div class="modal__content">
                      <div class="modal__content__title">
                        <b>title :</b>
                        <p>${pf.title}</p>
                      </div>
                      <div class="modal__content__image">
                        <b>使用イメージ :</b>
                        <div class="modal__content__image__list">
                        </div>
                      </div>
                      <div class="modal__content__discription">
                        <b>discription :</b>
                        <p>${discription}</p>
                      </div>
                      <div class="modal__content__usage">
                        <b>usage :</b>
                        <p>${usage}</p>
                      </div>
                      <div class="modal__content__info">
                        <div class="modal__content__info--github">
                          <b>github URL :</b>
                          <a href="${pf.github_url}">${pf.github_url}</a>
                        </div>
                        <div class="modal__content__info--app">
                          <b>apprication URL :</b>
                          <a href="${pf.app_url}">${pf.app_url}</a>
                        </div>
                      </div>
                      <a href="" class="js-modal-close">Close</a>
                    </div>
                  </div>`
      return html;
    }

    var modal_list = $(".modal_list")
    $(function(){
      gon.portfolios.forEach(function(pf){
        discription = pf.discription.replace(/\r?\n/g, '<br>')
        usage = pf.usage.replace(/\r?\n/g, '<br>')
        modal = build_to_modal(pf, discription, usage)
        modal_list.append(modal)
      });
    });

  };
});