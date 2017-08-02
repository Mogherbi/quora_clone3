#this is my seeds.rb file. Do i need to use this along with rake "db :eed" command to :
# A-populate this seeds file or,
# B- to set in the instructions on how to populate?"
# When you run the seed task provided by Sinatra and Rake, rake db:seed, the code in the seed file will be executed, inserting some sample data into your database.
# Go ahead and open up the seed file in this app, db/seeds.rb. You should see the following:

 # Add seed data here. Seed your database with `rake db:seed`
sophie = Owner.create(name: "Sophie")
Pet.create(name: "Maddy", owner: sophie)
Pet.create(name: "Nona", owner: sophie)
