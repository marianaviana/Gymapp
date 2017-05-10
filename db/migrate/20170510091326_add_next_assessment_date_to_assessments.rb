class AddNextAssessmentDateToAssessments < ActiveRecord::Migration[5.0]
  def change
    add_column :assessments, :next_assessment_date, :date
  end
end
