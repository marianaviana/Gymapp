class Protocol 
	
	def protocol_7
	#Protocolo de Pollock: Sete Dobras Cutâneas
	#Tríceps + Subescapular + Suprailíaca + Abdominal + Axilar Medial + Peito + Coxa
	body_density_woman =  (1,097-(0,0004697*(:tricipital+:subescapular+:suprailiaca+
		:abdominal+:axilar_media+:peitoral+:coxa))+(0,00000056*((:tricipital+:suprailiaca+:coxa)**2)-
	(0,00012828*:age)

	body_density_men = (1,112-(0,00043499*(:tricipital+:subescapular+:suprailiaca+
		:abdominal+:axilar_media+:peitoral+:coxa))+	(0,00000055*((:tricipital+:suprailiaca+:coxa)**2)-
	(0,00012882*:age)

	protocol7 = (4,95/Densidade Corporal)- 4,5)*100
	end

	def protocol_3
		#Protocolo de Pollock: Três Dobras Cutâneas
		#Tríceps + Suprailíaca + Coxa)
		body_density_woman = 	(1,0994921-(0,0009929*(:tricipital+:suprailiaca+:coxa))+
			(0,0000023*((:tricipital+:suprailiaca+:coxa)**2)-(0,0001393*:age)

				body_density_men =	(1,10938-(0,0008267*(:tricipital+:suprailiaca+:coxa))+
					(0,0000016*((:tricipital+:suprailiaca+:coxa)**2)-(0,0002574*:age)

						protocol3 = (4,95/Densidade Corporal)-4,5)*100

				end

				def imc_adult 
		#Peso em kg e altura em cm
		@imc = :weight*(:height**2)
		case :imc
		when :imc<17.0
			puts 'Muito abaixo do peso'
		when :imc>17.0 && :imc<18.49
			puts	'Abaixo do peso'
		when :imc>18,5 && :imc<24.99
			puts	'Peso normal'
		when :imc>25.0 && :imc<29.99
			puts	'Acima do peso'
		when :imc>30.0 && :imc<34.99
			puts	'Obesidade I'
		when :imc>35.0 && :imc<39.99
			puts	'Obesidade II (severa)'
		when :imc>40.0
			puts 'Obesidade III (mórbida)'
		end
	end

	def imc_child_boy
		#Peso em kg e altura em cm
		@imc = :weight*(:height**2)
		case :age
		when :age==6
			if :imc>14.5 && imc<16.6
				puts 'Peso Normal'
			elsif :imc>16.6 && :imc<17.9
				puts 'Acima do Peso'
			elsif :imc> 18.0
				puts 'Obesidade'
			end
		when :age==7
			if :imc>15.0 && imc<17.2
				puts 'Peso Normal'
			elsif :imc>17.3 && :imc<19.1
				puts 'Acima do Peso'
			elsif :imc> 19.1
				puts 'Obesidade'
			end
		when :age==8
			if :imc>15.6 && imc<16.7
				puts 'Peso Normal'
			elsif :imc>16.7 && :imc<20.3
				puts 'Acima do Peso'
			elsif :im.c> 20.3
				puts 'Obesidade'
			end
		when :age==9
			if :imc>16.1 && imc<18.8
				puts 'Peso Normal'
			elsif :imc>18.8 && :imc<21.4
				puts 'Acima do Peso'
			elsif :imc> 21.4
				puts 'Obesidade'
			end
		when :age==10
			if :imc>16.7 && imc<19.6
				puts 'Peso Normal'
			elsif :imc>19.6 && :imc<22.5
				puts 'Acima do Peso'
			elsif :imc> 22.5
				puts 'Obesidade'
			end
		when :age==11
			if :imc>17.2 && imc<20.3
				puts 'Peso Normal'
			elsif :imc>20.3 && :imc<23.7
				puts 'Acima do Peso'
			elsif :imc> 23.7
				puts 'Obesidade'
			end
		when :age==12
			if :imc>17.8 && imc<21.1
				puts 'Peso Normal'
			elsif :imc>21.1 && :imc<24.8
				puts 'Acima do Peso'
			elsif :imc> 24.8
				puts 'Obesidade'
			end
		when :age==13
			if :imc>18.5 && imc<21.9
				puts 'Peso Normal'
			elsif :imc>21.9 && :imc<25.9
				puts 'Acima do Peso'
			elsif :imc> 25.9
				puts 'Obesidade'
			end
		when :age==14
			if :imc>19.2 && imc<22.7
				puts 'Peso Normal'
			elsif :imc>22.7 && :imc<26.9
				puts 'Acima do Peso'
			elsif :imc> 26.9
				puts 'Obesidade'
			end
		when :age==15
			if :imc>19.9 && imc<23.6
				puts 'Peso Normal'
			elsif :imc>23.6 && :imc<27.7
				puts 'Acima do Peso'
			elsif :imc> 27.7
				puts 'Obesidade'
			end
		end
	end

	def imc_child_girl
		#Peso em kg e altura em cm
		@imc = :weight*(:height**2)
		case :age
		when :age==6
			if :imc>14.3 && imc<16.1
				puts 'Peso Normal'
			elsif :imc>16.1 && :imc<17.4
				puts 'Acima do Peso'
			elsif :imc> 17.4
				puts 'Obesidade'
			end
		when :age==7
			if :imc>14.9 && imc<17.1
				puts 'Peso Normal'
			elsif :imc>17.1 && :imc<18.9
				puts 'Acima do Peso'
			elsif :imc> 18.9
				puts 'Obesidade'
			end
		when :age==8
			if :imc>15.6 && imc<18.1
				puts 'Peso Normal'
			elsif :imc>18.1 && :imc<20.3
				puts 'Acima do Peso'
			elsif :imc> 20.3
				puts 'Obesidade'
			end
		when :age==9
			if :imc>16.3 && imc<19.1
				puts 'Peso Normal'
			elsif :imc>19.1 && :imc<21.7
				puts 'Acima do Peso'
			elsif :imc> 21.7
				puts 'Obesidade'
			end
		when :age==10
			if :imc>17.0 && imc<20.1
				puts 'Peso Normal'
			elsif :imc>20.1 && :imc<23.2
				puts 'Acima do Peso'
			elsif :imc> 23.2
				puts 'Obesidade'
			end
		when :age==11
			if :imc>17.6 && imc<21.1
				puts 'Peso Normal'
			elsif :imc>21.1 && :imc<24.5
				puts 'Acima do Peso'
			elsif :imc> 24.5
				puts 'Obesidade'
			end
		when :age==12
			if :imc>18.3 && imc<22.1
				puts 'Peso Normal'
			elsif :imc>22.1 && :imc<25.9
				puts 'Acima do Peso'
			elsif :imc> 25.9
				puts 'Obesidade'
			end
		when :age==13
			if :imc>18.9 && imc<23.0
				puts 'Peso Normal'
			elsif :imc>23.0 && :imc<27.7
				puts 'Acima do Peso'
			elsif :imc> 27.7
				puts 'Obesidade'
			end
		when :age==14
			if :imc>19.3 && imc<23.8
				puts 'Peso Normal'
			elsif :imc>23.8 && :imc<27.9
				puts 'Acima do Peso'
			elsif :imc> 27.9
				puts 'Obesidade'
			end
		when :age==15
			if :imc>19.6 && imc<24.2
				puts 'Peso Normal'
			elsif :imc>24.2 && :imc<28.8
				puts 'Acima do Peso'
			elsif :imc> 28.8
				puts 'Obesidade'
			end
		end
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
