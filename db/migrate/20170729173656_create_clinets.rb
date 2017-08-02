class CreateClinets < ActiveRecord::Migration[5.1]
	def change
		create_table :clinets do |t|
			t.string :visitor_name
			t.string :visitor_pw
			t.string :visitor_city
			t.timestamps
		end

	end
end
