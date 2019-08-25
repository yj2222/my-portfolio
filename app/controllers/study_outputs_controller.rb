class StudyOutputsController < ApplicationController
  def new
  end

  def create
    @post = StudyOutput.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:study_output).permit(:text,:url).merge(user_id: current_user.id)
  end

end
