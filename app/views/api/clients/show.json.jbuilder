json.client do 
  json.(@client, :name, :gender, :birth_date, :rg, :cpf, :address, :telephone, :email,
        :allergy, :obs, :blood_type, :subscription_date, :payment_date, :disabilities)
end
