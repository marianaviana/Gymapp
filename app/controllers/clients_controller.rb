class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  # GET /clients
  # GET /clients.json
  def index
    if params[:search] && params[:search].key?(:q)
      q = params[:search][:q]
      @clients = Client.where('name LIKE ?', "%#{q}%").order('name ASC').paginate(:page => params[:page])
    else
      @clients = Client.all.order('name ASC').paginate(:page => params[:page])
    end
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
  end

  # GET /clients/new
  def new
    @client = Client.new
  end

  # GET /clients/1/edit
  def edit
  end

  # POST /clients
  # POST /clients.json
  def create
    @client = Client.new(client_params)

    respond_to do |format|
      if @client.save
        format.html { redirect_to @client, notice: 'Cliente foi criado com sucesso.' }
        format.json { render :show, status: :created, location: @client }
      else
        format.html { render :new }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients/1
  # PATCH/PUT /clients/1.json
  def update
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to @client, notice: 'Cliente foi atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @client }
      else
        format.html { render :edit }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @client = Client.find(params[:id])
    if @client.active
      @client.update_attribute(:active, false)
      redirect_to clients_path(client_id: @client.id),
      notice: 'Cliente desativado com sucesso'
    elsif !@client.active
      @client.update_attribute(:active, true)
      redirect_to clients_path(client_id: @client.id),
      notice: 'Cliente reativado com sucesso'
    else
      redirect_to clients_path(client_id: @client.id),
      alert: 'Algum problema ocorreu tentando desativar o ciente'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_params
      params.require(:client).permit(:name, :gender, :birth_date, :rg, :cpf,
       :address, :telephone, :email,
       :disabilities, :blood_type, :allergy,
       :obs, :subscription_date,
       :payment_date, :avatar,
       :password, :password_confirmation)
    end
  end
