class CreateCheckIns < ActiveRecord::Migration[5.0]
  def change
    create_table :check_ins do |t|
      t.string :name
      t.integer :client_id

      t.timestamps
    end
  end
end
