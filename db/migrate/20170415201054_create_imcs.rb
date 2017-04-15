class CreateImcs < ActiveRecord::Migration[5.0]
  def change
    create_table :imcs do |t|
      t.float :min
      t.float :max
      t.string :message
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
end
