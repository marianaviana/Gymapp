class CreateEquipment < ActiveRecord::Migration[5.0]
  def change
    create_table :equipment do |t|
      t.string :name
      t.integer :quantity
      t.date :aquisition_date
      t.float :weight
      t.float :max_weight

      t.timestamps
    end
  end
end
