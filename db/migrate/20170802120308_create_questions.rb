class CreateQuestions < ActiveRecord::Migration[5.1]
	def change

		create_table :questions do |t|
			t.string :subject
			t.string :description
			t.integer :clinet_id
			t.timestamps


		end
	end
end
