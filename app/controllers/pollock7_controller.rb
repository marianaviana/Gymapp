# coding: utf-8
class Pollock7Controller < ApplicationController
  before_action :set_assessment, only: [:show, :edit, :destroy]

  def new
    @client     = Client.find(params[:client_id])
    @assessment = @client.pollock7.build
  end

  def create
    client               = Client.find(assessment_params[:client_id])
    @assessment          = Pollock7.new(assessment_params)
    @assessment.client   = client
    @assessment.employee = current_user

    if @assessment.save
      redirect_to assessments_path(client_id: client.id), notice: 'Avaliação criada com sucesso.'
    else
      render :new
    end
  end

  def show
    @protocol7 = Protocol7Calculation.new(@assessment)
    @imc       = ImcCalculation.new(@assessment)

    @chart = LazyHighCharts::HighChart.new('bar') do |f|
      f.options[:colors] = ['#000080', '#ff0000', '#722f37', '#CCCC00', 'green']

      f.options[:plotOptions] = { series: { animation: false, 
                                            enableMouseTracking: false, 
                                            shadow: false },
                                  column: { colorByPoint: true }
                                }

      f.xAxis(categories: ["Atual", "P. Min", "P. Max", "Gordo", "Magro"])
      f.series(yAxis: 0, data: [@assessment.weight, @imc.ideal_min_weight,
                                @imc.ideal_max_weight, @protocol7.fat_weight, @protocol7.lean_body_mass], 
               dataLabels: { enabled: true },
               showInLegend: false)


      f.chart({defaultSeriesType: "column"})
    end

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: 'pollock7',
               template: 'pollock7/show.pdf.erb'
             
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
        format.html { redirect_to pollock7_path(@assessment, client_id: @client.id), notice: 'Avaliação atualizada com sucesso.' }
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
    params.require(:pollock7).permit(:client_id, :employee_id, :height, :weight, :neck, :shoulder, :chest,
     :waist, :abdomen, :hip, :right_arm, :left_arm, :right_forearm, :left_forearm,
     :right_thigh, :left_thigh, :right_calf, :left_calf, :tricipital, :suprailiaca,
     :coxa, :abdominal, :subescapular, :axilar_media, :peitoral, :next_assessment_date)

  end
end
