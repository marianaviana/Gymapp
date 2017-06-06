class AddDoneToAssessments < ActiveRecord::Migration[5.0]
  def change
    add_column :assessments, :done, :boolean, default: false
  end
end
