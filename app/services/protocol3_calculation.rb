class Calc3
  attr_accessor :assessment, :client

  def initialize(assessment)
    @assessment = assessment
    @client     = assessment.client
  end

  #Define a porcentagem de gordura no corpo
  def calc
    (4.95/density) - 4.5 * 100
  end

  private

  def density
    return (1.10938 - (0.0008267 * sum_3)) + (0.0000016 * (sum_3**2)) - (0.0002574 * age) if gender == 'Masculino'

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

  def client_age
    Time.now.year - client.birth_date.year
  end

  def gender
    client.gender
  end
end
