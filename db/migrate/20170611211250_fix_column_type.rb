class FixColumnType < ActiveRecord::Migration[5.0]
  def change		 
    change_column :users, :payment_date, :integer		
  end
end
