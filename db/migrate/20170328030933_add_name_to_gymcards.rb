class AddNameToGymcards < ActiveRecord::Migration[5.0]
  def change
    add_column :gymcards, :name, :string
  end
end
