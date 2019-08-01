class Api::ImagesController < ApplicationController
  def index
    @images = Portfolio.find(params[:portfolio_id]).images
  end
end