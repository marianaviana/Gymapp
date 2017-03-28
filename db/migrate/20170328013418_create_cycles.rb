class CreateCycles < ActiveRecord::Migration[5.0]
  def change
    create_table :cycles do |t|
      t.integer :index
      t.integer :gymcard_id

      t.timestamps
    end
  end
end
