class Protocol 
	
	def calc
		protocol = (4.95/density) - 4.5 * 100
	end

	if gender == 'Masculino'
		def body_men
			if protocol3
				density = body_density_men = (1.10938 - (0.0008267 * three)) + (0.0000016 * (three**2)) - (0.0002574 * age)
			else
				density = body_density_men = (1.112 - (0.00043499 * seven)) + (0.00000055 * (three**2)) - (0.00012882 * age)
			end
		end
	end

	if gender == 'Feminino'
		def body_woman
			if protocol3
				density = body_density_woman = (1.0994921 - (0.0009929 * three)) + (0.0000023 * (three**2)) - (0.0001393 * age)
			else
				density = body_density_woman = (1.097 - (0.0004697 * seven)) + (0.00000056 * (three**2)) - (0.00012828 * age)
			end
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
