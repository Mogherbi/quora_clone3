class AddEmailToClinets < ActiveRecord::Migration[5.1]
	def change
		add_column :clinets, :email, :string
	end
end
