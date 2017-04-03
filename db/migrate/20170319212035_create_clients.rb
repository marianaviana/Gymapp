class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string   :name
      t.string   :gender
      t.date     :birth_date
      t.string   :rg
      t.string   :cpf
      t.string   :adress
      t.string   :telephone
      t.string   :email
      t.text     :disabilities
      t.string   :blood_type
      t.text     :allergy
      t.text     :obs
      t.date     :subscription_date
      t.date     :payment_date

      t.timestamps
    end
  end
end
