# coding: utf-8
class ApplicationController < ActionController::Base
  include Pundit

  protect_from_forgery with: :exception
  before_action :authenticate_user!

  
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def user_not_authorized
    flash[:alert] = "Você não está autorizado a acessar essa área."
    redirect_to(request.referrer || root_path)
  end
end
