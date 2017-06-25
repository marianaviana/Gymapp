class Api::AssessmentsController < Api::BaseController
  def index
    @client   = User.where(authentication_token: params[:user_token]).first
    @assessments = @client.assessments.undone
  end
end
