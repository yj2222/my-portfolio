class StudyOutputsController < ApplicationController
  before_action :set_post, only: [:destroy,:edit,:update]

  def new
  end

  def create
    @post = StudyOutput.new(post_params)
    if @post.save
      redirect_to root_path
      flash[:success] = '投稿されました。'
    else
      render :new
      flash[:danger] = '投稿できませんでした。'
    end
  end

  def edit
  end

  def update
    if @post.user_id == current_user.id
      @post.update(post_params)
      redirect_to root_path
      flash[:success] = '更新されました'
    else
      render :edit
      flash[:danger] = '更新されませんでした'
    end
    
  end

  def destroy
    @post.destroy if @post.user_id == current_user.id
    redirect_to root_path
  end

  private

  def set_post
    @post = StudyOutput.find(params[:id])
  end

  def post_params
    params.require(:study_output).permit(:text,:url).merge(user_id: current_user.id)
  end

end
