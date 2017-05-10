class Assessment < ApplicationRecord
  belongs_to :employee, foreign_key: 'employee_id'
  belongs_to :client, foreign_key: 'client_id'

  scope :overdue, -> { where('next_assessment_date < ?', Date.today) }
  scope :in_day, -> { where('next_assessment_date >= ?', (Date.today + 30.days)) }
  scope :next_to_expire, -> { where(next_assessment_date: (Date.today..(Date.today + 30.days))) }

  def client_age
    client.try(:age)
  end
end
