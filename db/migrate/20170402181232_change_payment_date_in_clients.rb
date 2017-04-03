class ChangePaymentDateInClients < ActiveRecord::Migration[5.0]
	def change
		change_column(:clients, :payment_date, :integer)
	end
end
