class CreateGrouptypes < ActiveRecord::Migration[5.0]
  def change
    create_table :grouptypes do |t|
      t.string :type

      t.timestamps
    end
  end
end
