class Equipment < ApplicationRecord
	validates :name, presence: true
	validates :name, uniqueness: true
	validates :quantity, presence: true
	validates :aquisition_date, presence: true
	validates :weight, presence: true
	validates :max_weight, presence: true

	before_save :upcase_name

	def upcase_name
		self.name = self.name.upcase
	end
end
