# coding: utf-8
#Matriz IMC
imc_list = [
  { min: 0.0, max:17.0, message:'Muito abaixo do peso' },
  { min: 17.1, max: 18.49, message:'Abaixo do peso' },
  { min:18.5,  max:24.99, message:'Peso normal' },
  { min: 25.0, max:29.99, message:'Acima do peso'},
  { min: 30.0, max:34.99, message:'Obesidade I' },
  { min: 35.0, max: 39.99, message:'Obesidade II (severa)' },
  { min: 40.0, max: 999999999.49, message:'Obesidade III (mórbida)' },
  { min:0.0, max:14.4, message:'Abaixo do peso', age: '6', gender:'Masculino' },
  { min:14.5, max:16.6, message:'Peso normal', age: '6', gender:'Masculino' },
  { min:16.7, max:17.9, message:'Sobrepeso', age: '6', gender:'Masculino' },
  { min:18.0, max:99999.9, message:'Obesidade', age: '6', gender:'Masculino' },
  { min:0, max:14.9, message:'Abaixo do peso', age: '7', gender:'Masculino' },
  { min:15.0, max:17.2, message:'Peso normal', age: '7', gender:'Masculino' },
  { min:17.3, max:19.0, message:'Sobrepeso', age: '7', gender:'Masculino' },
  { min:19.1, max:99999.9, message:'Obesidade', age: '7', gender:'Masculino' },
  { min:0.0, max:15.5, message:'Abaixo do peso', age: '8', gender:'Masculino' },
  { min:15.6, max:16.6, message:'Peso normal', age: '8', gender:'Masculino' },
  { min:16.7, max:20.2, message:'Sobrepeso', age: '8', gender:'Masculino' },
  { min:20.3, max:99999.9, message:'Obesidade', age: '8', gender:'Masculino' },
  { min:0.0, max:16.0, message:'Abaixo do peso', age: '9', gender:'Masculino' },
  { min:16.1, max:18.7, message:'Peso normal', age: '9', gender:'Masculino' },
  { min:18.8, max:21.3, message:'Sobrepeso', age: '9', gender:'Masculino' },
  { min:21.4, max:99999.9, message:'Obesidade', age: '9', gender:'Masculino' },
  { min:0.0, max:16.6, message:'Abaixo do peso', age: '10', gender:'Masculino' },
  { min:16.7, max:19.5, message:'Peso normal', age: '10', gender:'Masculino' },
  { min:19.6, max:22.4, message:'Sobrepeso', age: '10', gender:'Masculino' },
  { min:22.5, max:99999.9, message:'Obesidade', age: '10', gender:'Masculino' },
  { min:0.0, max:17.1, message:'Abaixo do peso', age: '11', gender:'Masculino' },
  { min:17.2, max:20.2, message:'Peso normal', age: '11', gender:'Masculino' },
  { min:20.3, max:23.6, message:'Sobrepeso', age: '11', gender:'Masculino' },
  { min:23.7, max:99999.9, message:'Obesidade', age: '11', gender:'Masculino' },
  { min:0.0, max:17.7, message:'Abaixo do peso', age: '12', gender:'Masculino' },
  { min:17.8, max:21.0, message:'Peso normal', age: '12', gender:'Masculino' },
  { min:21.1, max:24.7, message:'Sobrepeso', age: '12', gender:'Masculino' },
  { min:24.8, max:99999.9, message:'Obesidade', age: '12', gender:'Masculino' },
  { min:0.0, max:18.4, message:'Abaixo do peso', age: '13', gender:'Masculino' },
  { min:18.5, max:21.8, message:'Peso normal', age: '13', gender:'Masculino' },
  { min:21.9, max:25.8, message:'Sobrepeso', age: '13', gender:'Masculino' },
  { min:25.9, max:99999.9, message:'Obesidade', age: '13', gender:'Masculino' },
  { min:0.0, max:19.1, message:'Abaixo do peso', age: '14', gender:'Masculino' },
  { min:19.2, max:22.6, message:'Peso normal', age: '14', gender:'Masculino' },
  { min:22.7, max:26.8, message:'Sobrepeso', age: '14', gender:'Masculino' },
  { min:26.9, max:99999.9, message:'Obesidade', age: '14', gender:'Masculino' },
  { min:0.0, max:19.8, message:'Abaixo do peso', age: '15', gender:'Masculino' },
  { min:19.9, max:23.5, message:'Peso normal', age: '15', gender:'Masculino' },
  { min:23.6, max:27.6, message:'Sobrepeso', age: '15', gender:'Masculino' },
  { min:27.7, max:99999.9, message:'Obesidade', age: '15', gender:'Masculino' },
  #IMC Meninas até 15 anos
  { min:0, max:14.2, message:'Abaixo do peso', age: '6', gender:'Feminino' },
  { min:14.3, max:16.0, message:'Peso normal', age: '6', gender:'Feminino' },
  { min:16.1, max:17.3, message:'Sobrepeso', age: '6', gender:'Feminino' },
  { min:17.4, max:99999.9, message:'Obesidade', age: '6', gender:'Feminino' },
  { min:0, max:14.8, message:'Abaixo do peso', age: '7', gender:'Feminino' },
  { min:14.9, max:17.0, message:'Peso normal', age: '7', gender:'Feminino' },
  { min:17.1, max:18.8, message:'Sobrepeso', age: '7', gender:'Feminino' },
  { min:18.9, max:99999.9, message:'Obesidade', age: '7', gender:'Feminino' },
  { min:0, max:15.5, message:'Abaixo do peso', age: '8', gender:'Feminino' },
  { min:15.6, max:18.0, message:'Peso normal', age: '8', gender:'Feminino' },
  { min:18.1, max:20.2, message:'Sobrepeso', age: '8', gender:'Feminino' },
  { min:20.3, max:99999.9, message:'Obesidade', age: '8', gender:'Feminino' },
  { min:0, max:16.2, message:'Abaixo do peso', age: '9', gender:'Feminino' },
  { min:16.3, max:19.0, message:'Peso normal', age: '9', gender:'Feminino' },
  { min:19.1, max:21.6, message:'Sobrepeso', age: '9', gender:'Feminino' },
  { min:21.7, max:99999.9, message:'Obesidade', age: '9', gender:'Feminino' },
  { min:0, max:16.9, message:'Abaixo do peso', age: '10', gender:'Feminino' },
  { min:17.0, max:20.0, message:'Peso normal', age: '10', gender:'Feminino' },
  { min:20.1, max:23.1, message:'Sobrepeso', age: '10', gender:'Feminino' },
  { min:23.2, max:99999.9, message:'Obesidade', age: '10', gender:'Feminino' },
  { min:0, max:17.5, message:'Abaixo do peso', age: '11', gender:'Feminino' },
  { min:17.6, max:21.0, message:'Peso normal', age: '11', gender:'Feminino' },
  { min:21.1, max:24.4, message:'Sobrepeso', age: '11', gender:'Feminino' },
  { min:24.5, max:99999.9, message:'Obesidade', age: '11', gender:'Feminino' },
  { min:0, max:18.2, message:'Abaixo do peso', age: '12', gender:'Feminino' },
  { min:18.3, max:22.0, message:'Peso normal', age: '12', gender:'Feminino' },
  { min:22.1, max:25.8, message:'Sobrepeso', age: '12', gender:'Feminino' },
  { min:25.9, max:99999.9, message:'Obesidade', age: '12', gender:'Feminino' },
  { min:0, max:18.8, message:'Abaixo do peso', age: '13', gender:'Feminino' },
  { min:18.9, max:22.9, message:'Peso normal', age: '13', gender:'Feminino' },
  { min:23.0, max:27.6, message:'Sobrepeso', age: '13', gender:'Feminino' },
  { min:27.7, max:99999.9, message:'Obesidade', age: '13', gender:'Feminino' },
  { min:0, max:19.2, message:'Abaixo do peso', age: '14', gender:'Feminino' },
  { min:19.3, max:23.7, message:'Peso normal', age: '14', gender:'Feminino' },
  { min:23.8, max:27.8, message:'Sobrepeso', age: '14', gender:'Feminino' },
  { min:27.9, max:99999.9, message:'Obesidade', age: '14', gender:'Feminino' },
  { min:0, max:19.5, message:'Abaixo do peso', age: '15', gender:'Feminino' },
  { min:19.6, max:24.1, message:'Peso normal', age: '15', gender:'Feminino' },
  { min:24.2, max:28.7, message:'Sobrepeso', age: '15', gender:'Feminino' },
  { min:28.8, max:99999.9, message:'Obesidade', age: '15', gender:'Feminino' }
]

imc_list.each do |imc|
  Imc.create(imc)
end

#Matriz ICQ
icq_list = [
  #ICQ Masculina
  { min: 0.0, max: 0.82, message: 'Risco baixo', age_min: '20', age_max: '29', gender: 'Masculino' },
  { min: 0.83, max: 0.88, message: 'Risco moderado', age_min: '20', age_max: '29', gender: 'Masculino' },
  { min: 0.89, max: 0.94, message: 'Risco alto', age_min: '20', age_max: '29', gender: 'Masculino' },
  { min: 0.95, max: 99.9, message: 'Risco muito alto', age_min: '20', age_max: '29', gender: 'Masculino' },
  { min: 0.0, max: 0.83, message: 'Risco baixo', age_min: '30', age_max: '39', gender: 'Masculino' },
  { min: 0.84, max: 0.91, message: 'Risco moderado', age_min: '30', age_max: '39', gender: 'Masculino' },
  { min: 0.92, max: 0.96, message: 'Risco alto', age_min: '30', age_max: '39', gender: 'Masculino' },
  { min: 0.97, max: 99.9, message: 'Risco muito alto', age_min: '30', age_max: '39', gender: 'Masculino' },
  { min: 0.0, max: 0.87, message: 'Risco baixo', age_min: '40', age_max: '49', gender: 'Masculino' },
  { min: 0.88, max: 0.95, message: 'Risco moderado', age_min: '40', age_max: '49', gender: 'Masculino' },
  { min: 0.96, max: 1.00, message: 'Risco alto', age_min: '40', age_max: '49', gender: 'Masculino' },
  { min: 1.01, max: 99.9, message: 'Risco muito alto', age_min: '40', age_max: '49', gender: 'Masculino' },
  { min: 0.0, max: 0.89, message: 'Risco baixo', age_min: '50', age_max: '59', gender: 'Masculino' },
  { min: 0.90, max: 0.96, message: 'Risco moderado', age_min: '50', age_max: '59', gender: 'Masculino' },
  { min: 0.97, max: 1.02, message: 'Risco alto', age_min: '50', age_max: '59', gender: 'Masculino' },
  { min: 1.03, max: 99.9, message: 'Risco muito alto', age_min: '50', age_max: '59', gender: 'Masculino' },
  { min: 0.0, max: 0.90, message: 'Risco baixo', age_min: '60', age_max: '69', gender: 'Masculino' },
  { min: 0.91, max: 0.98, message: 'Risco moderado', age_min: '60', age_max: '69', gender: 'Masculino' },
  { min: 0.99, max: 1.02, message: 'Risco alto', age_min: '60', age_max: '69', gender: 'Masculino' },
  { min: 1.03, max: 99.9, message: 'Risco muito alto', age_min: '60', age_max: '69', gender: 'Masculino' },
  #ICQ Feminina
  { min: 0.0, max: 0.70, message: 'Risco baixo', age_min: '20', age_max: '29', gender: 'Feminino' },
  { min: 0.71, max: 0.77, message: 'Risco moderado', age_min: '20', age_max: '29', gender: 'Feminino' },
  { min: 0.78, max: 0.82, message: 'Risco alto', age_min: '20', age_max: '29', gender: 'Feminino' },
  { min: 0.83, max: 99.9, message: 'Risco muito alto', age_min: '20', age_max: '29', gender: 'Feminino' },
  { min: 0.0, max: 0.71, message: 'Risco baixo', age_min: '30', age_max: '39', gender: 'Feminino' },
  { min: 0.72, max: 0.78, message: 'Risco moderado', age_min: '30', age_max: '39', gender: 'Feminino' },
  { min: 0.79, max: 0.84, message: 'Risco alto', age_min: '30', age_max: '39', gender: 'Feminino' },
  { min: 0.85, max: 99.9, message: 'Risco muito alto', age_min: '30', age_max: '39', gender: 'Feminino' },
  { min: 0.0, max: 0.72, message: 'Risco baixo', age_min: '40', age_max: '49', gender: 'Feminino' },
  { min: 0.73, max: 0.79, message: 'Risco moderado', age_min: '40', age_max: '49', gender: 'Feminino' },
  { min: 0.80, max: 0.87, message: 'Risco alto', age_min: '40', age_max: '49', gender: 'Feminino' },
  { min: 0.88, max: 99.9, message: 'Risco muito alto', age_min: '40', age_max: '49', gender: 'Feminino' },
  { min: 0.0, max: 0.73, message: 'Risco baixo', age_min: '50', age_max: '59', gender: 'Feminino' },
  { min: 0.74, max: 0.81, message: 'Risco moderado', age_min: '50', age_max: '59', gender: 'Feminino' },
  { min: 0.82, max: 0.88, message: 'Risco alto', age_min: '50', age_max: '59', gender: 'Feminino' },
  { min: 0.89, max: 99.9, message: 'Risco muito alto', age_min: '50', age_max: '59', gender: 'Feminino' },
  { min: 0.0, max: 0.75, message: 'Risco baixo', age_min: '60', age_max: '69', gender: 'Feminino' },
  { min: 0.76, max: 0.83, message: 'Risco moderado', age_min: '60', age_max: '69', gender: 'Feminino' },
  { min: 0.84, max: 0.90, message: 'Risco alto', age_min: '60', age_max: '69', gender: 'Feminino' },
  { min: 0.91, max: 99.9, message: 'Risco muito alto', age_min: '60', age_max: '69', gender: 'Feminino' }
]

icq_list.each do |icq|
  Icq.create(icq)
end


#Cria Equipamentos

Equipment.create(name: 'Apolete', quantity: '2', aquisition_date: Date.today, weight: '82', max_weight: '450')

Equipment.create(name: 'Barra Fixa', quantity: '4', aquisition_date: Date.today, weight: '82', max_weight: '250')

Equipment.create(name: 'Bicicleta horizontal', quantity: '3', aquisition_date: Date.today, weight: '45', max_weight: '300')

Equipment.create(name: 'Bicicleta vertical', quantity: '4', aquisition_date: Date.today, weight: '48,6', max_weight: '250')

(25..30).each do |number|
  Equipment.create(name: "Dumbbell #{number} Kg", quantity: '4', aquisition_date: Date.today, weight: "#{number}", max_weight: '400')
end

Equipment.create(name: 'Elíptico magnético', quantity: '2', aquisition_date: Date.today, weight: '50', max_weight: '308')

Equipment.create(name: 'Esteira Elétrica', quantity: '4', aquisition_date: Date.today, weight: '48,6', max_weight: '250')

Equipment.create(name: 'Flexor', quantity: '1', aquisition_date: Date.today, weight: '60', max_weight: '450')

(1..10).each do |number|
  Equipment.create(name: "Halter #{number} Kg", quantity: '4', aquisition_date: Date.today, weight: "#{number}", max_weight: '400')
end

Equipment.create(name: 'Máquina Scott', quantity: '2', aquisition_date: Date.today, weight: '72', max_weight: '450')

Equipment.create(name: 'Polia inferior', quantity: '2', aquisition_date: Date.today, weight: '132', max_weight: '120')

Equipment.create(name: 'Polia superior', quantity: '2', aquisition_date: Date.today, weight: '132', max_weight: '120')

Equipment.create(name: 'Prancha abdominal', quantity: '3', aquisition_date: Date.today, weight: '55', max_weight: '350')

Equipment.create(name: 'Puxador vertical articulado', quantity: '3', aquisition_date: Date.today, weight: '55', max_weight: '350')

Equipment.create(name: 'Remada cavalinho com banco T', quantity: '2', aquisition_date: Date.today, weight: '72', max_weight: '450')

Equipment.create(name: 'Remada sentado articulado', quantity: '2', aquisition_date: Date.today, weight: '78', max_weight: '350')

Equipment.create(name: 'Supino declinado', quantity: '2', aquisition_date: Date.today, weight: '78', max_weight: '350')

Equipment.create(name: 'Supino inclinado', quantity: '3', aquisition_date: Date.today, weight: '76', max_weight: '350')

Equipment.create(name: 'Supino reto', quantity: '2', aquisition_date: Date.today, weight: '77', max_weight: '350')

Equipment.create(name: 'Supino vertical', quantity: '3', aquisition_date: Date.today, weight: '72', max_weight: '350')

Equipment.create(name: 'Voador dorsal', quantity: '2', aquisition_date: Date.today, weight: '72', max_weight: '450')

#Cria Clientes

(1..5).each do |number|
  Client.create(email: 	"cliente#{number}@gmail.com", name: "Cliente#{number}", position: 'Admin', 
    gender: 'Masculino', birth_date: Date.today-9125, rg: 000000000, cpf: 00000000, 
    address: 'Rua x', telephone: 99999999, blood_type: 'O-', 
    subscription_date: Date.today, payment_date: Date.today+11, admission_date: Date.today+10)
end

(5..10).each do |number|
  Client.create(email:  "cliente#{number}@gmail.com", name: "Cliente#{number}", position: 'Admin', 
    gender: 'Masculino', birth_date: Date.today-7300, rg: 000000000, cpf: 00000000, 
    address: 'Rua x', telephone: 99999999, blood_type: 'O-', 
    subscription_date: Date.today, payment_date: Date.today+11, admission_date: Date.today+10)
end

#Cria Funcionários

(1..10).each do |number|
  Employee.create(email: 	"empregado#{number}@gmail.com", name: "Empregado#{number}", position: 'Personal', 
    gender: 'Masculino', birth_date: Date.today-10220, rg: 000000000, cpf: number, 
    address: 'Rua x', telephone: 99999999, blood_type: 'O-', 
    subscription_date: Date.today, password: '123456', password_confirmation: '123456',
    payment_date: Date.today+11, admission_date: Date.today+10)
end


luiza = Employee.create(name: 'Luiza', position: 'Admin', birth_date: Date.new(1993, 07, 30),
  rg: '12345', cpf: '12345556', telephone: '2294528525', 
  admission_date: Date.today, email: 'meloluiza@live.com', admin: true)

luiza.password =  '123456' 
luiza.password_confirmation =  '123456'

luiza.save

mariana = Employee.create(name: 'Mariana', position: 'Admin', birth_date: Date.new(1994, 11, 19),
  rg: '123456', cpf: '123455567', telephone: '22999999999', 
  admission_date: Date.today, email: 'immarianaviana@gmail.com', admin: true)

mariana.password =  '123456'
mariana.password_confirmation =  '123456'
mariana.save

Client.all.each do |client|
  IcqAssessment.create(client_id: client.id, weight: "85", height: "181", waist: "65", hip: "65", next_assessment_date: "2017-05-20", employee: Employee.last )

  if client.id >= 8
    IcqAssessment.create(client_id: client.id, weight: "85", height: "181", waist: "65", hip: "65", next_assessment_date: "2017-07-20" , employee: Employee.last)
  end

  if client.id <=5
    IcqAssessment.create(client_id: client.id, weight: "85", height: "181", waist: "65", hip: "65", next_assessment_date: "2017-01-20", employee: Employee.last )
  end
end
