class Protocol7Calculation
  attr_accessor :assessment, :client

  METHODS =  [ :tricipital, :subescaputar, :suprailiaca, :abdominal,
               :axilar_media, :peitoral, :coxa ]

  def initialize(assessment)
    @assessment = assessment
    @client     = assessment.client
  end

  #Define a porcentagem de gordura no corpo
  def calculate
    (4.95/density) - 4.5 * 100
  end

  METHODS.each do |attribute|
    define_method(attribute.to_s) do
      assessment.send(attribute.to_s)
    end
  end

  private

  def density
    (1.112 - (0.00043499 * sum_7)) + (0.00000055 * (sum_3**2)) - (0.00012882 * age) if gender == 'Masculino'

    (1.097 - (0.0004697 * sum_7)) + (0.00000056 * (sum_3**2)) - (0.00012828 * age)
  end

  def sum_3
    tricipital + suprailiaca + coxa
  end

  def sum_7
    tricipital + subescapular + suprailiaca + abdominal + axilar_media + peitoral + coxa
  end

  def client_age
    Time.now.year - client.birth_date.year
  end

  def gender
    client.gender
  end

end
