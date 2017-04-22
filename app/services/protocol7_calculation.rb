class Calc7
	attr_accessor :assessment, :client
	def initialize(assessment)
		@assessment = assessment
		@client     = assessment.client
	end

	#Define a porcentagem de gordura no corpo
	def calc
		protocol7 = (4.95/density) - 4.5 * 100
	end

	private

	def density
		if gender == 'Masculino'
			density = (1.112 - (0.00043499 * seven)) + (0.00000055 * (three**2)) - (0.00012882 * age)
		else
			density = (1.097 - (0.0004697 * seven)) + (0.00000056 * (three**2)) - (0.00012828 * age)
		end
	end

	def sum_3
		three = tricipital + suprailiaca + coxa
	end

	def sum_7
		seven = tricipital + subescapular + suprailiaca + abdominal + axilar_media + peitoral + coxa
	end

	def medidas
		tricipital 		= assessment.tricipital
		subescapular 	= assessment.subescapular
		suprailiaca 	= assessment.suprailiaca
		abdominal 		= assessment.abdominal
		axilar_media 	= assessment.axilar_media
		peitoral 		= assessment.peitoral
		coxa 			= assessment.coxa
	end

	def client_age
		age = Time.now.year - client.birth_date.year
	end

	def gender
		client.gender
	end

end