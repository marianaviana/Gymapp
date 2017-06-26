class Api::AssessmentsController < Api::BaseController
  def index
    @client      = Client.where(authentication_token: params[:user_token]).first
    @assessments = @client.assessments.undone
  end
end
