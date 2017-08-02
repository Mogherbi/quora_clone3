post '/newAccount' do
  # byebug
  @email = params[:userEmail] #params are new hashes within the html file which we created to capture this data
  @password = params[:userPassword] #the params must be the same as the name in the erb file (ducks.erb above)...so you have to use the same name as above. cant deviate from this, otherwise the info wont be caputred.
  @cityname = params[:cityName] #the sequence is important that we place the variables we create above the erb. the name or words after the : colon is called "the key". so the key refers to :userName. Colon is part of the key.

  #Below is when Cinet.new call is made to the controller, the call is received and then relayed to the specific action which is being called on it, then relayed.
  # See below:

  @info = Clinet.new(email: @email, password: @password, visitor_city: @cityname)
  @info.save
  session[:user_id] = @info.id #log in the fella automatically when he/she sign up
  @all_clinets = Clinet.all
  erb :"static/newUserAccounts"
  #i can also save it using the @userName style as below:
  # #@info = Clinet.new(visitor_name:@userName, visitor_pw:@password, visitor_city:@var)
  # @info.save
end

get '/clinets/:id' do #here the 'get' method is called with an argument of '/clinets/:id' and is being invoked with a block which is the code between the 'do' and the 'end'.

  @clinet = Clinet.find(params[:id])
  #look for this clinet from the database based on the id that u see on the path
  erb :'clinets/show', layout: false
end
