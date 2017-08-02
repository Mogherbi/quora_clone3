post '/login' do
  # apply an authentication method to check if a user has entered a valid email and password
  # if a user has successfully been authenticated, you can assign the current user id to a se. ssion
  @clinet = Clinet.find_by(email: params[:clinet][:email])
  if @clinet && @clinet.authenticate(params[:clinet][:password])
    #this user is found in your database using the email you fill in, and the password that u filled in is authenticated too (means correct password)
    session[:user_id] = @clinet.id
    # redirect to the profile page of mine
    redirect "/clinets/#{@clinet.id}"
  else
    redirect '/'
  end

end

post '/logout' do
  # deletes the session then redirect the user to a new page.
  session[:user_id] = nil
  redirect '/'
  # kill a session when a user chooses to logout, for example, assign nil to a session
  # redirect to the appropriate page
end
