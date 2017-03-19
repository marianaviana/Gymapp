json.extract! client, :id, :name, :gender, :birth_date, :rg, :cpf, :adress, :telephone, :email, :disabilities, :blood_type, :allergy, :obs, :subscription_date, :payment_date, :created_at, :updated_at
json.url client_url(client, format: :json)
