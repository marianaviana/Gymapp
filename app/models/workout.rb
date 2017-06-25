class Workout < ApplicationRecord
  belongs_to :equipment, optional: true
  belongs_to :cycle, optional: true
  belongs_to :grouptype, optional: true
  belongs_to :exercise, optional: true
 end
