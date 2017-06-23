class Api::GymcardsController < Api::BaseController
  def index
    @client   = User.where(authentication_token: params[:user_token]).first
    @gymcards = @client.gymcards
  end

  def show
    @client  = Client.find(params[:client_id])
    @gymcard = @client.gymcards.find(params[:id])
  end
end
