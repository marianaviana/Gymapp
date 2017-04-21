imc_list = [
	{ min: 0.0, max:17.0, message:'Muito abaixo do peso' },
	{ min: 17.1, max: 18.49, message:'Abaixo do peso' },
	{ min:18.5,  max:24.99, message:'Peso normal' },
	{ min: 25.0, max:29.99, message:'Acima do peso'},
	{ min: 30.0, max:34.99, message:'Obesidade I' },
	{ min: 35.0, max: 39.99, message:'Obesidade II (severa)' },
	{ min: 40.0, max: 999999999.49, message:'Obesidade III (mórbida)' }
]

imc_list.each do |imc|
	Imc.create(imc)
end

(1..10).each do |number|
	Client.create(email: 	"cliente#{number}@gmail.com", name: "Cliente#{number}", position: 'Admin', 
		gender: 'Masculino', birth_date: Date.today, rg: 000000000, cpf: 00000000, 
		address: 'Rua x', telephone: 99999999, blood_type: 'O-', 
		subscription_date: Date.today, payment_date: Date.today+11, admission_date: Date.today+10)
end

(1..10).each do |number|
	Employee.create(email: 	"empregado#{number}@gmail.com", name: "Empregado#{number}", position: 'Admin', 
		gender: 'Masculino', birth_date: Date.today, rg: 000000000, cpf: number, 
		address: 'Rua x', telephone: 99999999, blood_type: 'O-', 
		subscription_date: Date.today, payment_date: Date.today+11, admission_date: Date.today+10)
end




=begin
Imc.create(min:0.0, max:17.0, message:'Muito abaixo do peso')
Imc.create(min:17.1, max:18.49, message:'Abaixo do peso')
Imc.create(min:18.5, max:24.99, message:'Peso normal')
Imc.create(min:25.0, max:29.99, message:'Acima do peso')
Imc.create(min:30.0, max:34.99, message:'Obesidade I')
Imc.create(min:35.0, max:39.99, message:'Obesidade II (severa)')
Imc.create(min:40.0, max:999999999.49, message:'Obesidade III (mórbida)')

Imc.create(min:0, max:14.4, message:'Abaixo do peso', age: '6', gender:'Masculino')
Imc.create(min:14.5, max:16.6, message:'Peso normal', age: '6', gender:'Masculino')
Imc.create(min:16.7, max:17.9, message:'Sobrepeso', age: '6', gender:'Masculino')
Imc.create(min:18.0, max:99999.9, message:'Obesidade', age: '6', gender:'Masculino')
Imc.create(min:0, max:14.9, message:'Abaixo do peso', age: '7', gender:'Masculino')
Imc.create(min:15.0, max:17.2, message:'Peso normal', age: '7', gender:'Masculino')
Imc.create(min:17.3, max:19.0, message:'Sobrepeso', age: '7', gender:'Masculino')
Imc.create(min:19.1, max:99999.9, message:'Obesidade', age: '7', gender:'Masculino')
Imc.create(min:0, max:15.5, message:'Abaixo do peso', age: '8', gender:'Masculino')
Imc.create(min:15.6, max:16.6, message:'Peso normal', age: '8', gender:'Masculino')
Imc.create(min:16.7, max:20.2, message:'Sobrepeso', age: '8', gender:'Masculino')
Imc.create(min:20.3, max:99999.9, message:'Obesidade', age: '8', gender:'Masculino')
Imc.create(min:0, max:16.0, message:'Abaixo do peso', age: '9', gender:'Masculino')
Imc.create(min:16.1, max:18.7, message:'Peso normal', age: '9', gender:'Masculino')
Imc.create(min:18.8, max:21.3, message:'Sobrepeso', age: '9', gender:'Masculino')
Imc.create(min:21.4, max:99999.9, message:'Obesidade', age: '9', gender:'Masculino')
Imc.create(min:0, max:16.6, message:'Abaixo do peso', age: '10', gender:'Masculino')
Imc.create(min:16.7, max:19.5, message:'Peso normal', age: '10', gender:'Masculino')
Imc.create(min:19.6, max:22.4, message:'Sobrepeso', age: '10', gender:'Masculino')
Imc.create(min:22.5, max:99999.9, message:'Obesidade', age: '10', gender:'Masculino')
Imc.create(min:0, max:17.1, message:'Abaixo do peso', age: '11', gender:'Masculino')
Imc.create(min:17.2, max:20.2, message:'Peso normal', age: '11', gender:'Masculino')
Imc.create(min:20.3, max:23.6, message:'Sobrepeso', age: '11', gender:'Masculino')
Imc.create(min:23.7, max:99999.9, message:'Obesidade', age: '11', gender:'Masculino')
Imc.create(min:0, max:17.7, message:'Abaixo do peso', age: '12', gender:'Masculino')
Imc.create(min:17.8, max:21.0, message:'Peso normal', age: '12', gender:'Masculino')
Imc.create(min:21.1, max:24.7, message:'Sobrepeso', age: '12', gender:'Masculino')
Imc.create(min:24.8, max:99999.9, message:'Obesidade', age: '12', gender:'Masculino')
Imc.create(min:0, max:18.4, message:'Abaixo do peso', age: '13', gender:'Masculino')
Imc.create(min:18.5, max:21.8, message:'Peso normal', age: '13', gender:'Masculino')
Imc.create(min:21.9, max:25.8, message:'Sobrepeso', age: '13', gender:'Masculino')
Imc.create(min:25.9, max:99999.9, message:'Obesidade', age: '13', gender:'Masculino')
Imc.create(min:0, max:19.1, message:'Abaixo do peso', age: '14', gender:'Masculino')
Imc.create(min:19.2, max:22.6, message:'Peso normal', age: '14', gender:'Masculino')
Imc.create(min:22.7, max:26.8, message:'Sobrepeso', age: '14', gender:'Masculino')
Imc.create(min:26.9, max:99999.9, message:'Obesidade', age: '14', gender:'Masculino')
Imc.create(min:0, max:19.8, message:'Abaixo do peso', age: '15', gender:'Masculino')
Imc.create(min:19.9, max:23.5, message:'Peso normal', age: '15', gender:'Masculino')
Imc.create(min:23.6, max:27.6, message:'Sobrepeso', age: '15', gender:'Masculino')
Imc.create(min:27.7, max:99999.9, message:'Obesidade', age: '15', gender:'Masculino')

Imc.create(min:0, max:14.2, message:'Abaixo do peso', age: '6', gender:'Feminino')
Imc.create(min:14.3, max:16.0, message:'Peso normal', age: '6', gender:'Feminino')
Imc.create(min:16.1, max:17.3, message:'Sobrepeso', age: '6', gender:'Feminino')
Imc.create(min:17.4, max:99999.9, message:'Obesidade', age: '6', gender:'Feminino')
Imc.create(min:0, max:14.8, message:'Abaixo do peso', age: '7', gender:'Feminino')
Imc.create(min:14.9, max:17.0, message:'Peso normal', age: '7', gender:'Feminino')
Imc.create(min:17.1, max:18.8, message:'Sobrepeso', age: '7', gender:'Feminino')
Imc.create(min:18.9, max:99999.9, message:'Obesidade', age: '7', gender:'Feminino')
Imc.create(min:0, max:15.5, message:'Abaixo do peso', age: '8', gender:'Feminino')
Imc.create(min:15.6, max:18.0, message:'Peso normal', age: '8', gender:'Feminino')
Imc.create(min:18.1, max:20.2, message:'Sobrepeso', age: '8', gender:'Feminino')
Imc.create(min:20.3, max:99999.9, message:'Obesidade', age: '8', gender:'Feminino')
Imc.create(min:0, max:16.2, message:'Abaixo do peso', age: '9', gender:'Feminino')
Imc.create(min:16.3, max:19.0, message:'Peso normal', age: '9', gender:'Feminino')
Imc.create(min:19.1, max:21.6, message:'Sobrepeso', age: '9', gender:'Feminino')
Imc.create(min:21.7, max:99999.9, message:'Obesidade', age: '9', gender:'Feminino')
Imc.create(min:0, max:16.9, message:'Abaixo do peso', age: '10', gender:'Feminino')
Imc.create(min:17.0, max:20.0, message:'Peso normal', age: '10', gender:'Feminino')
Imc.create(min:20.1, max:23.1, message:'Sobrepeso', age: '10', gender:'Feminino')
Imc.create(min:23.2, max:99999.9, message:'Obesidade', age: '10', gender:'Feminino')
Imc.create(min:0, max:17.5, message:'Abaixo do peso', age: '11', gender:'Feminino')
Imc.create(min:17.6, max:21.0, message:'Peso normal', age: '11', gender:'Feminino')
Imc.create(min:21.1, max:24.4, message:'Sobrepeso', age: '11', gender:'Feminino')
Imc.create(min:24.5, max:99999.9, message:'Obesidade', age: '11', gender:'Feminino')
Imc.create(min:0, max:18.2, message:'Abaixo do peso', age: '12', gender:'Feminino')
Imc.create(min:18.3, max:22.0, message:'Peso normal', age: '12', gender:'Feminino')
Imc.create(min:22.1, max:25.8, message:'Sobrepeso', age: '12', gender:'Feminino')
Imc.create(min:25.9, max:99999.9, message:'Obesidade', age: '12', gender:'Feminino')
Imc.create(min:0, max:18.8, message:'Abaixo do peso', age: '13', gender:'Feminino')
Imc.create(min:18.9, max:22.9, message:'Peso normal', age: '13', gender:'Feminino')
Imc.create(min:23.0, max:27.6, message:'Sobrepeso', age: '13', gender:'Feminino')
Imc.create(min:27.7, max:99999.9, message:'Obesidade', age: '13', gender:'Feminino')
Imc.create(min:0, max:19.2, message:'Abaixo do peso', age: '14', gender:'Feminino')
Imc.create(min:19.3, max:23.7, message:'Peso normal', age: '14', gender:'Feminino')
Imc.create(min:23.8, max:27.8, message:'Sobrepeso', age: '14', gender:'Feminino')
Imc.create(min:27.9, max:99999.9, message:'Obesidade', age: '14', gender:'Feminino')
Imc.create(min:0, max:19.5, message:'Abaixo do peso', age: '15', gender:'Feminino')
Imc.create(min:19.6, max:24.1, message:'Peso normal', age: '15', gender:'Feminino')
Imc.create(min:24.2, max:28.7, message:'Sobrepeso', age: '15', gender:'Feminino')
Imc.create(min:28.8, max:99999.9, message:'Obesidade', age: '15', gender:'Feminino')
=end