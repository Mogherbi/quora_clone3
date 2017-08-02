class Clinet < ActiveRecord::Base #the version should be stated in the migration files but it should not be stated in the models files.
	# This is Sinatra! Remember to create a migration!
  has_secure_password
  has_many :questions
end
