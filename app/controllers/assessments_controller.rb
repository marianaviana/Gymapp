# coding: utf-8
class AssessmentsController < ApplicationController
  before_action :set_assessment, only: [:show, :edit, :update, :destroy]

  def clients
    @clients = Client.all
  end

  # GET /assessments
  # GET /assessments.json
  def index
    @client      = Client.find(params[:client_id])
    @assessments = @client.assessments
  end

  # GET /assessments/1
  # GET /assessments/1.json
  def show
    @imc = ImcCalculation.new(@assessment)
  end

  # GET /assessments/new
  def new
    @client     = Client.find(params[:client_id])
    @assessment = @client.assessments.build
  end

  # GET /assessments/1/edit
  def edit
  end

  # POST /assessments
  # POST /assessments.json
  def create
    client               = Client.find(assessment_params[:client_id])
    @assessment          = Assessment.new(assessment_params)
    @assessment.client   = client
    @assessment.employee = current_user

    if @assessment.save
      redirect_to assessments_path(client_id: client.id), notice: 'Avaliação criada com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /assessments/1
  # PATCH/PUT /assessments/1.json
  def update
    respond_to do |format|
      if @assessment.update(assessment_params)
        format.html { redirect_to assessment_path(@assessment, client_id: @client.id), notice: 'Avaliação atualizada com sucesso.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /assessments/1
  # DELETE /assessments/1.json
  def destroy
    @assessment.destroy
    respond_to do |format|
      format.html { redirect_to assessments_url, notice: 'Avaliação foi excluida com sucesso' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assessment
      @client     = Client.find(params[:client_id])
      @assessment = @client.assessments.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assessment_params
      params.require(:assessment).permit(:client_id, :employee_id, :bodyfat, :ideal_max, :ideal_min, :weight, :height, :ideal_min_weight, :ideal_max_weight, :fat_weight, :lean_body_mass, :fat_body_mass, :tricipital, :peitoral, :subescapular, :axilar_media, :suprailiaca, :abdominal, :coxa, :neck, :shoulder, :chest, :waits, :abdomen, :hip, :right_arm, :left_arm, :right_forearm, :left_forearm, :right_thigh, :left_thigh, :right_calf, :left_calf, :result)
    end
  end
