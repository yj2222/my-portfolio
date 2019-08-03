class PortfoliosController < ApplicationController
  before_action :set_post, only: [:destroy,:edit,:update]

  def index
    @portfolios = Portfolio.all
    gon.portfolios = Portfolio.all
  end

  def new
    @post = Portfolio.new
    @post.images.build
  end

  def create
    Portfolio.create(post_params)
    redirect_to root_path
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
end
