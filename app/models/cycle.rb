class Cycle < ApplicationRecord
	has_many :workouts

	accepts_nested_attributes_for :workouts
end
