  class User < ApplicationRecord
  acts_as_token_authenticatable
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  has_many :gymcards, foreign_key: 'employee_id'
  has_many :assessments, foreign_key: 'employee_id'

  before_save :set_role

  def role_admin?
    has_role? "admin"
  end

  def employee?
    has_role? "employee"
  end

  def student?
    has_role? "Student"
  end

  def set_role
    case self.type
    when self.admin? then
      add_role "admin"
    when "Employee" then
      add_role "employee"
    when "Client" then
      add_role "student"
    end
  end
end
