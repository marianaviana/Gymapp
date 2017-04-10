class CreateAssessments < ActiveRecord::Migration[5.0]
  def change
    create_table :assessments do |t|
      t.integer :client_id
      t.integer :employee_id
      t.float :bodyfat
      t.float :ideal_max
      t.float :ideal_min
      t.float :weight
      t.float :height
      t.float :ideal_min_weight
      t.float :ideal_max_weight
      t.float :fat_weight
      t.float :lean_body_mass
      t.float :fat_body_mass
      t.integer :tricipital
      t.integer :peitoral
      t.integer :subescapular
      t.integer :axilar_media
      t.integer :suprailiaca
      t.integer :abdominal
      t.integer :coxa
      t.float :neck
      t.float :shoulder
      t.float :chest
      t.float :waits
      t.float :abdomen
      t.float :hip
      t.string :right_arm
      t.string :left_arm
      t.string :right_forearm
      t.string :left_forearm
      t.float :right_thigh
      t.float :left_thigh
      t.float :right_calf
      t.float :left_calf
      t.string :result

      t.timestamps
    end
  end
end
