class Calc3
	attr_accessor :assessment, :client
	def initialize(assessment)
		@assessment = assessment
		@client     = assessment.client
	end

	#Define a porcentagem de gordura no corpo
	def calc
		protocol3 = (4.95/density) - 4.5 * 100
	end

	private

	def density
		if gender == 'Masculino'
			density =  (1.10938 - (0.0008267 * three)) + (0.0000016 * (three**2)) - (0.0002574 * age)
		else
			density = (1.0994921 - (0.0009929 * three)) + (0.0000023 * (three**2)) - (0.0001393 * age)
		end
	end

	def sum_3
		three = tricipital + suprailiaca + coxa
	end

	def medidas
		tricipital 		= assessment.tricipital
		suprailiaca 	= assessment.suprailiaca
		coxa 			= assessment.coxa
	end

	def client_age
		age = Time.now.year - client.birth_date.year
	end

	def gender
		client.gender
	end
end