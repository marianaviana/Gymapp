class Workout < ApplicationRecord
  belongs_to :equipment, optional: true
  belongs_to :cycle, optional: true
end
