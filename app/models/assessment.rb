class Assessment < ApplicationRecord
  belongs_to :employee, foreign_key: 'employee_id'
  belongs_to :client, foreign_key: 'client_id'

  scope :undone, -> { where(done: false) }
  scope :overdue, -> { undone.where('next_assessment_date < ?', Date.today) }
  scope :in_day, -> { undone.where('next_assessment_date >= ?', (Date.today + 30.days)) }
  scope :next_to_expire, -> { undone.where(next_assessment_date: (Date.today..(Date.today + 30.days))) }

  def client_age
    client.try(:age)
  end

  def mark_as_done
    last_assessment = Assessment.where(client_id: client.id).where.not(id: self.id).last
    last_assessment.update_attribute(:done, true) if last_assessment
  end
  after_save :mark_as_done

  self.per_page = 5
end
