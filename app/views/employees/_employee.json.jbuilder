json.extract! employee, :id, :name, :position, :birth_date, :rg, :cpf, :telephone, :admission_date, :created_at, :updated_at
json.url employee_url(employee, format: :json)
