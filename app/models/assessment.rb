class Assessment < ApplicationRecord
	belongs_to :employee, foreign_key: 'employee_id'
	belongs_to :client, foreign_key: 'client_id'
end
