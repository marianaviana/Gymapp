# coding: utf-8
class AssessmentsController < ApplicationController
  before_action :set_assessment, only: [:show, :edit, :destroy]

  def clients
    if params[:filter]
      @clients = Client.where(id: filter_by_ids)
    elsif params[:search] && params[:search].key?(:q)
      q = params[:search][:q]
      @clients = Client.where('name LIKE ?', "%#{q}%").order('name ASC').paginate(:page => params[:page])
    else
      @clients = Client.all.order('name ASC').paginate(:page => params[:page])
    end
  end

  # GET /assessments
  # GET /assessments.json
  def index
    @client      = Client.find(params[:client_id])
    @assessments = @client.assessments
  end

  def new
    @client     = Client.find(params[:client_id])
    @assessment = @client.assessments.build
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_assessment
    @client     = Client.find(params[:client_id])
    @assessment = @client.assessments.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def assessment_params
    params.require(:assessment).permit(:client_id, :employee_id, :bodyfat, :ideal_max, :ideal_min, :weight, :height, :ideal_min_weight, :ideal_max_weight, :fat_weight, :lean_body_mass, :fat_body_mass, :tricipital, :peitoral, :subescapular, :axilar_media, :suprailiaca, :abdominal, :coxa, :neck, :shoulder, :chest, :waist, :abdomen, :hip, :right_arm, :left_arm, :right_forearm, :left_forearm, :right_thigh, :left_thigh, :right_calf, :left_calf, :result)
  end


  def filter_by_ids
    q =  params[:filter]
    case q
    when "in_day"
      return Assessment.in_day.map(&:client_id)
    when "next_to_expire"
      return Assessment.next_to_expire.map(&:client_id)
    when "overdue"
      return Assessment.overdue.map(&:client_id)
    end
  end
end
