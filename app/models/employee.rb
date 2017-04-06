class Employee < ApplicationRecord
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  validates :name, presence: true
  validates :position, presence: true
  validates :birth_date, presence: true
  validates :rg, presence: true
  validates :cpf, presence: true
  validates :cpf, uniqueness: true
  validates :telephone, presence: true
  validates :admission_date, presence: true

  before_save :upcase_name

  def upcase_name
    self.name = self.name.upcase
  end
end
