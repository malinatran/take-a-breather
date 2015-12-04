class SubmissionsController < ApplicationController

  def index
    @submissions = Submission.all
  end

  def show
    @submission = Submission.find(params[:id])
    @form_path = user_submission_path
  end

  def new
    @submission = Submission.new
    @form_path = user_submissions_path
  end

  def create
    @submission = current_user.submissions.build(submission_params)
    empty_string = params[:submission][:feeling].shift
    @submission.feeling = params[:submission][:feeling].join(',')
    # @submission.user_id = current_user.id
    if @submission.save
      redirect_to user_submission_path(user_id: current_user.id, id: @submission.id)
    else 
      redirect_to :action => 'index'
    end
  end

  def edit
    @submission = Submission.find(params[:id])
    @form_path = user_submission_path
  end

  def update
    @submission = Submission.find(params[:id])
    @submission.update(submission_params)
    redirect_to user_submission_path(user_id: current_user.id, id: @submission.id)
  end

  def destroy
    @submission = Submission.find(params[:id])
    @submission.destroy
    redirect_to user_submissions_path
  end

  private

  def submission_params
    params.require(:submission).permit(:date, :location, :feeling, :conflict, :letter)
  end

end
