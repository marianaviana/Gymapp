class CreateGymcards < ActiveRecord::Migration[5.0]
  def change
    create_table :gymcards do |t|
      t.references :employee, foreign_key: true
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
