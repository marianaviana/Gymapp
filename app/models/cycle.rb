class Cycle < ApplicationRecord
  has_many :workouts
  accepts_nested_attributes_for :workouts, reject_if: :all_blank,
                                allow_destroy: true
end
