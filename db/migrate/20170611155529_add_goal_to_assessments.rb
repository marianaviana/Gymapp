class AddGoalToAssessments < ActiveRecord::Migration[5.0]
	def change
		add_column :assessments, :goal, :string
	end
end
