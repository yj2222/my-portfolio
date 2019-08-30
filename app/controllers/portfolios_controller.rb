class PortfoliosController < ApplicationController
  before_action :set_post, only: [:destroy,:edit,:update]

  def index
    gon.portfolios = Portfolio.all
   end

  def new
    @post = Portfolio.new
    @post.images.build
  end

  def create
    @post = Portfolio.new(post_params)
    if @post.save
      redirect_to root_path
    else
      set_count
      @error_message = "※ 画像を投稿して下さい"
      render :new
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
    
  end

  def edit
  end

  def update
    if params[:portfolio][:images_attributes].present?
      num = 0
      while params[:portfolio][:images_attributes]["#{num}"].present? do
        @post.images[num].destroy
        num += 1
      end
    end
    @post.update(post_params)
    redirect_to root_path
  end

  def produce_school
  end


  private

  def set_post
    @post = Portfolio.find(params[:id])
  end

  def post_params
    params.require(:portfolio).permit(
      :title,
      :sub_title,
      :top_image,
      :environment,
      :discription,
      :usage,
      :github_url,
      :app_url,
      images_attributes: [:image]).merge(user_id: current_user.id)
  end

  def set_count
    if params[:portfolio][:top_image].present?
      if params[:portfolio][:images_attributes].present?
        @count = 2
      else
        @post.images.build
        @count = 1
      end
    else
      if params[:portfolio][:images_attributes].present?
        @count = 1
      else
        @post.images.build
        @count = 0
      end
    end
  end

end
