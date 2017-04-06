class AddNameToCycles < ActiveRecord::Migration[5.0]
  def change
    add_column :cycles, :name, :string
  end
end
