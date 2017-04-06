class Gymcard < ApplicationRecord
  belongs_to :employee
  belongs_to :client
  has_many :cycles

  accepts_nested_attributes_for :cycles

  scope :active, -> { where(active: true) }
end
