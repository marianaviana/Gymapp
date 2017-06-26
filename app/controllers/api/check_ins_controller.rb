# coding: utf-8
class Api::CheckInsController < Api::BaseController
  def create
    @checkin = CheckIn.new(checkin_params)

    unless CheckIn.where(created_at: Time.now.beginning_of_day..Time.now.end_of_day,
                     client_id: @checkin.client_id).any?
    @checkin.save
      render json:  { success: true, checkin: @checkin.created_at }
    else
      render json:  { success: false }, status: 422
    end
  end

  private
  def checkin_params
    params.require(:check_in).permit(:name, :client_id)
  end
end
