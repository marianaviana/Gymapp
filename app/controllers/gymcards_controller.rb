class GymcardsController < ApplicationController
	def clients
		@clients = Client.all
	end

	def index
		@client = Client.find(params[:client_id])
		@gymcards = @client.gymcards 	
	end

	def new

	end

	def create

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
		params.require(:employee).permit(:name, :position, :birth_date, :rg, :cpf, :telephone, :admission_date, :avatar)
	end

end 

