class CheckInsController < ApplicationController
  def index
    if params[:checkin] && params[:checkin].key?(:initial) && params[:checkin].key?(:final)
      initial = Date.parse(params[:checkin][:initial])
      final   = Date.parse(params[:checkin][:final])

      @check_ins = CheckIn.where(created_at: initial..final).paginate(:page => params[:page])
    else
      @check_ins = CheckIn.all.paginate(:page => params[:page])
    end
  end
end
