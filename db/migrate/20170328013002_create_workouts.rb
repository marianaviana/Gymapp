class CreateWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.integer :serie
      t.integer :sequence
      t.integer :load
      t.text :obs
      t.integer :equipment_id
      t.integer :cycle_id

      t.timestamps
    end
  end
end
