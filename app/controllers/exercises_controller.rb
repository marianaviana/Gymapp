class ExercisesController < ApplicationController
before_action :set_exercise

	def index
    @exercise = Exercise.all
	end

	def show
	end

	private

	def set_exercise
      @exercise = Exercise.find(params[:id])
  end

  def exercise_params
      params.require(:exercise).permit(:name, :grouptype_id)
    end
end
