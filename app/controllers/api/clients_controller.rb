class Api::ClientsController < Api::BaseController
  def show
    @client = Client.where(authentication_token: params[:user_token]).first
  end
end
