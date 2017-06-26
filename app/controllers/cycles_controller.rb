class CyclesController < ApplicationController
  before_filter :load_gymcard, except: [:update_exercises]

  def index
    @cycles = @gymcard.cycles
  end

  def new
    @cycle = @gymcard.cycles.build
  end

  def create
    @cycle = @gymcard.cycles.build(cycle_params)

    if @cycle.save
      redirect_to gymcard_cycles_path(@gymcard),
                  notice: 'Ciclo criado com sucesso.'
    else
      render :new
    end
  end

  def show
    @cycle = @gymcard.cycles.find(params[:id])
  end

  def edit
    @cycle = @gymcard.cycles.find(params[:id])
  end

  def update
    @cycle = @gymcard.cycles.find(params[:id])

    if @cycle.update_attributes(cycle_params)
      redirect_to gymcard_cycles_path(@gymcard),
                  notice: 'Ciclo edit com sucesso.'
    else
      render :edit
    end
  end

  def update_exercises
    @exercises  = Exercise.where("grouptype_id = ?", params[:grouptype_id])
    @element_id = params[:id]
    respond_to do |format|
      format.js
    end
  end

  private

  def load_gymcard
    @gymcard = Gymcard.find(params[:gymcard_id])
  end

  def cycle_params
    params.require(:cycle).permit(:name, :index, :gymcard_id,
                                  workouts_attributes: [:id,
                                                        :name,
                                                        :serie,
                                                        :sequence,
                                                        :load,
                                                        :equipment_id,
                                                        :obs,
                                                        :_destroy,
                                                        :exercise_id,
                                                        :grouptype_id,
                                                        ])
  end
end
