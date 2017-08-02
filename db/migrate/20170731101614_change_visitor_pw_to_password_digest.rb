class ChangeVisitorPwToPasswordDigest < ActiveRecord::Migration[5.1]
	def change
		rename_column :clinets, :visitor_pw, :password_digest
	end
end
