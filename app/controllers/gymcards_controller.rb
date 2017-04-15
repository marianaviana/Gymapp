class GymcardsController < ApplicationController
  def clients
    @clients = Client.all
  end

  def index
    @client   = Client.find(params[:client_id])
    @gymcards = @client.gymcards
  end

  def new
    @client  = Client.find(params[:client_id])
    @gymcard = Gymcard.new
  end

  def create
    client            = Client.find(gymcards_params[:client_id])
    @gymcard          = Gymcard.create(gymcards_params)
    @gymcard.client   = client
    @gymcard.employee = current_user

    @gymcard.save

    redirect_to gymcards_path(client_id: client.id)
  end

  def show
    @client  = Client.find(params[:client_id])
    @gymcard = @client.gymcards.find(params[:id])
  end

  def edit

  end

  def update
    respond_to do |format|
      if @gymcard.update(gymcard_params)
        format.html { redirect_to gymcard_path(@gymcard, client_id: @client.id), notice: 'Ficha atualizada com sucesso.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @client  = Client.find(params[:client_id])
    @gymcard = Gymcard.find(params[:id])

    if @gymcard.update_attribute(:active, false)
      redirect_to gymcards_path(client_id: @client.id),
      notice: 'Ciclo desativado com sucesso'
    else
      redirect_to gymcards_pathgym(client_id: @client.id),
      alert: 'Algum problema ocorreu tentando desativar o ciclo'
    end
  end

  private

  def gymcards_params
    params.require(:gymcard).permit(:name, :client_id, :employee_id)
  end
end
