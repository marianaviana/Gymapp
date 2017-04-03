class GymcardsController < ApplicationController
	def clients
		@clients 	= Client.all
	end

	def index
		@client 	= Client.find(params[:client_id])
		@gymcards = @client.gymcards 	
	end

	def new
		@client 	= Client.find(params[:client_id])
		@gymcard = Gymcard.new 
	end

	def create
		byebug
		@gymcard = Gymcard.create(gymcards_params)
		@cycles = @gymcard.cycles.build
		@gymcard.save
	end

	def show

	end

	def edit

	end

	def update

	end

	def destroy

	end

	private

	def gymcards_params
		params.require(:gymcard).permit(:name, :client_id, :employee_id, 
			cycles_attributes: [:index, :_destroy, 
				workouts_attributes: [:id, :name, :serie, :sequence, :load, :obs, :_destroy]])
	end

end 

