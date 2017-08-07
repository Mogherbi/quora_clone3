class CreateAnswers < ActiveRecord::Migration[5.1]
	def change
		create_table :answers do |t|
			t.string :reply
			t.integer :question_id
			t.integer :clinet_id
			t.timestamps
		end
	end
end
