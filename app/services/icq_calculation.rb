# coding: utf-8
class IcqCalculation
  attr_accessor :assessment, :client, :icqs
  def initialize(assessment)
    @assessment = assessment
    @client     = assessment.client
    @icqs       = Icq.all
  end

  def message
    icqs.find { |a| icq > a.min && icq < a.max && a.gender == gender && age >= a.age_min && age<= a.age_max  }.message
  end

  def icq
    (waist / hip).round(2)
  end

  private

  def age
    value = Time.now.year - client.birth_date.year
    if value = 20 && value < 70
      value
    else
      puts 'Protocolo não indicado para idade do cliente'
    end
  end

  def gender
    client.gender
  end

  def waist
    assessment.waist
  end

  def hip
    assessment.hip
  end
end
