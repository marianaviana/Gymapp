class Protocol3Calculation
  attr_accessor :assessment, :client

  def initialize(assessment)
    @assessment = assessment
    @client     = assessment.client
  end

  #Define a porcentagem de gordura no corpo
  def calculate
    ((4.95/density) - 4.5) * 100
  end

  def fat_weight
    (calculate * assessment.weight).round(2)
  end

  def lean_body_mass
    (assessment.weight - fat_weight).round(2)
  end

  private

  def density
    return (1.1093800 - (0.0008267 * sum_3)) + (0.0000016 * (sum_3**2)) - (0.0002574 * age) if gender == 'Masculino'

    (1.0994921 - (0.0009929 * sum_3)) + (0.0000023 * (sum_3**2)) - (0.0001393 * age)
  end

  def sum_3
    tricipital + suprailiaca + coxa
  end

  def tricipital
    assessment.tricipital
  end

  def suprailiaca
    assessment.suprailiaca
  end

  def coxa
    assessment.coxa
  end

  def age
    Time.now.year - client.birth_date.year
  end

  def gender
    client.gender
  end
end
