class Equipment < ApplicationRecord
	validates :name, presence: true
	validates :name, uniqueness:{
		case_sensitive: false,
		message:'Equipamento já cadastrado'
	}
	validates :quantity, presence: true, numericality:{
		greater_than: 0,
		message:'Precisa ser maior que 0'
	}
	validates :aquisition_date, presence: true
	validates :weight, presence: true, numericality:{
		greater_than: 0,
		message:'Precisa ser maior que 0'
	}
	validates :max_weight, presence: true, numericality:
	{	greater_than: 0,
		message:'Precisa ser maior que 0'
	}

	before_save :upcase_name

	def upcase_name
		self.name = self.name.upcase
	end
end
