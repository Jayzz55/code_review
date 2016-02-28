class SubmissionsController < ApplicationController
  before_action :load_submission, only: [:show]

  def show
  end

  private

  def load_submission
    @submission = Submission.find_by(uuid: params[:id])
  end
end
