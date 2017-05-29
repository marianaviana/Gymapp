class Gymcard < ApplicationRecord
	belongs_to :employee, foreign_key: 'employee_id'
	belongs_to :client, foreign_key: 'client_id'
	has_many :cycles

	accepts_nested_attributes_for :cycles

	scope :active, -> { where(active: true) }
	self.per_page = 5
end
