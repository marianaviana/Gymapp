# coding: utf-8
class ApplicationController < ActionController::Base
  include Pundit
  acts_as_token_authentication_handler_for User

  protect_from_forgery with: :exception
  before_action :authenticate_user!

  
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def user_not_authorized
    flash[:alert] = "Você não está autorizado a acessar essa área."
    redirect_to(request.referrer || root_path)
  end


  before_filter :logout_if_requested

  def logout_if_requested
    return if request.format == 'json'

    if current_user && current_user.type == 'Client'
      sign_out current_user
      redirect_to root_path
    end
  end
end
