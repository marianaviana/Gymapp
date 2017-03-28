class Gymcard < ApplicationRecord
	belongs_to :employee
	belongs_to :client
	has_many :cycles
end
