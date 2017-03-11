class Equipment < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  before_save :upcase_name

  def upcase_name
    self.name = self.name.upcase
  end
end
