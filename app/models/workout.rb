class Workout < ApplicationRecord
	has_one :equipment
	belongs_to :cycle
end
