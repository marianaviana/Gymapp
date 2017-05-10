class AddTypeToAssessment < ActiveRecord::Migration[5.0]
  def change
    add_column :assessments, :type, :string
  end
end
