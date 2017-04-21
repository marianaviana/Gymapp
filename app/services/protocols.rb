class Protocol 
	
	def protocol_7
	#Protocolo de Pollock: Sete Dobras Cutâneas
	#Tríceps + Subescapular + Suprailíaca + Abdominal + Axilar Medial + Peito + Coxa
	body_density_woman =  (1,097-(0,0004697*(:tricipital+:subescapular+:suprailiaca+
		:abdominal+:axilar_media+:peitoral+:coxa)))+(0,00000056*((:tricipital+:suprailiaca+:coxa)**2))-
	(0,00012828*:age)

	body_density_men = (1,112-(0,00043499*(:tricipital+:subescapular+:suprailiaca+
		:abdominal+:axilar_media+:peitoral+:coxa)))+(0,00000055*((:tricipital+:suprailiaca+:coxa)**2))-
	(0,00012882*:age)

	protocol7 = (4,95/Densidade Corporal)- 4,5*100
end


def protocol_3
		#Protocolo de Pollock: Três Dobras Cutâneas
		#Tríceps + Suprailíaca + Coxa)
		body_density_woman = (1.0994921-(0,0009929*(:tricipital+:suprailiaca+:coxa)))+
		(0.0000023*((:tricipital+:suprailiaca+:coxa)**2))-(0.0001393*:age)

		body_density_men =	(1.10938-(0.0008267*(:tricipital+:suprailiaca+:coxa)))+
		(0.0000016*((:tricipital+:suprailiaca+:coxa)**2))-(0.0002574*:age)

		protocol3 = (4.95/Densidade Corporal)-4.5)*100
end

def icq_woman
		#medidas em centímetros
		@icq = :waist/:hip
	end

	def icq_men
		#medidas em centímetros
		@icq = :waist/:hip
	end

end
