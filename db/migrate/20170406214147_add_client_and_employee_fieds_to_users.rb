class AddClientAndEmployeeFiedsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :position, :string
    add_column :users, :gender, :string
    add_column :users, :birth_date, :date
    add_column :users, :rg, :string
    add_column :users, :cpf, :string
    add_column :users, :address, :string
    add_column :users, :telephone, :string
    add_column :users, :disabilities, :text
    add_column :users, :blood_type, :string
    add_column :users, :allergy, :text
    add_column :users, :obs, :text
    add_column :users, :subscription_date, :date
    add_column :users, :payment_date, :date
    add_column :users, :admission_date, :date
  end
end
