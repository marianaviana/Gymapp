class Api::GymcardsController < Api::BaseController
  def index
    @client   = User.where(authentication_token: params[:user_token]).first
    @gymcards = @client.gymcards
  end
end
