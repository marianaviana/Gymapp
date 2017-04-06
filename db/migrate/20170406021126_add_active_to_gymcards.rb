class AddActiveToGymcards < ActiveRecord::Migration[5.0]
  def change
    add_column :gymcards, :active, :boolean, default: true
  end
end
