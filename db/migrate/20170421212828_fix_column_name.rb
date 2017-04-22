class FixColumnName < ActiveRecord::Migration[5.0]
	def change
		rename_column :assessments, :waits, :waist
	end
end
