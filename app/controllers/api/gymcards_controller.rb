class Api::GymcardsController < Api::BaseController
  def index
    @client   = Client.where(authentication_token: params[:user_token]).first
    @gymcards = @client.gymcards
  end
end
