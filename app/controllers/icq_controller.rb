# coding: utf-8
class IcqController < ApplicationController
  before_action :set_assessment, only: [:show, :edit, :destroy]

  def new
    @client     = Client.find(params[:client_id])
    @assessment = @client.icq_assessments.build
  end

  def create
    client               = Client.find(assessment_params[:client_id])
    @assessment          = IcqAssessment.new(assessment_params)
    @assessment.client   = client
    @assessment.employee = current_user

    if @assessment.save
      redirect_to assessments_path(client_id: client.id), notice: 'Avaliação criada com sucesso.'
    else
      render :new
    end
  end

  def show
    @icq = IcqCalculation.new(@assessment)
    @imc = ImcCalculation.new(@assessment)

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: 'icq',
               template: 'icq/show.pdf.erb'
      end
    end
  end

  def edit
  end

  def update
    @client     = Client.find(assessment_params[:client_id])
    @assessment = @client.assessments.find(params[:id])
    respond_to do |format|
      if @assessment.update(assessment_params)
        format.html { redirect_to icq_path(@assessment, client_id: @client.id), notice: 'Avaliação atualizada com sucesso.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    #Avaliações não podem ser excluídas
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_assessment
    @client     = Client.find(params[:client_id])
    @assessment = @client.assessments.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def assessment_params
    params.require(:icq_assessment).permit(:client_id, :employee_id, :height, :weight,
     :waist, :hip, :next_assessment_date)

  end
end
