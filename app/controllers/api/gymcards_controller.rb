class Api::GymcardsController < Api::BaseController
  def index
    @client   = Client.find(params[:client_id])
    @gymcards = @client.gymcards
  end

  def show
    @client  = Client.find(params[:client_id])
    @gymcard = @client.gymcards.find(params[:id])
  end
end
