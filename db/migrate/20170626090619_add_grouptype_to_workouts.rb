class AddGrouptypeToWorkouts < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts, :grouptype_id, :integer
    add_column :workouts, :exercise_id, :integer
  end
end
