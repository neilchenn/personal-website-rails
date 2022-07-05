class SubmissionsController < ApplicationController
  def new
    @submission = Submission.new
  end

  def create
    @submission = Submission.new(submission_params)
    if @submission.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def submission_params
    params.require(:submission).permit(:name, :email, :phone, :message)
  end
end
