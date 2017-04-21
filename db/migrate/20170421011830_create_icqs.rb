class CreateIcqs < ActiveRecord::Migration[5.0]
  def change
    create_table :icqs do |t|
      t.float :min
      t.float :max
      t.string :message
      t.integer :age_min
      t.integer :age_max
      t.string :gender

      t.timestamps
    end
  end
end
