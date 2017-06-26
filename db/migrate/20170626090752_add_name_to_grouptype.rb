class AddNameToGrouptype < ActiveRecord::Migration[5.0]
  def change
    add_column :grouptypes, :name, :string
  end
end
