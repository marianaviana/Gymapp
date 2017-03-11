class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :position
      t.date :birth_date
      t.string :rg
      t.string :cpf
      t.string :telephone
      t.date :admission_date

      t.timestamps
    end
  end
end
