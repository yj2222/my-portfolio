class PortfoliosController < ApplicationController

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
    @portfolio = Portfolio.destroy(params[:id])
    redirect_to root_path
  end

  private

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
