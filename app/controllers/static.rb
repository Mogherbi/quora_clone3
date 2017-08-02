#this is the BRAIN  of the app
require 'byebug'
# this allows us to test for bugs
get '/' do #get tells user to go to 'root' aka '/' (forwardslash between two single quotes)
  # @var = "another representation of variable"
  @variable="aymen1010"
  erb :"static/index" #do "erb" for this path called "static/index " erb is predefined sinatra framework method to render/compile the page / file called "static(folder)/index (name of file )"
end

get '/contactUs' do
  @var = "this is a class variable"
erb :"static/guestcalls"
end

get '/signUp' do
  # redirect '/contactUs' essentially redirects the user to wherever we want them to go, like to index or to home.
  erb :"static/signup"
end

#erb is an embedded method within Sinattra, which compiles/reads the file
#it then redirects it to another file called view/static/index
#read this: https://www.codecademy.com/articles/standard-controller-actions
#user enters this file first, as a case statement.

post '/twist' do #deals automatically with forms
  # byebug
  redirect 'http://google.com'

end


get '/heyducksimhere' do
  erb :"static/ducks"
  # redirect '/signUp'
end
#above: so, when we have another file called ducks, and a user clicks on the file or link linking, essentially we are telling ruby to go to ducks in the statemnt at line 29, get is a method call to do, then go to file ducks, then do erb which is a preddrfined method call in sinatra, to compile the file called ducks under the folder static. erb means EmbeddedRubyFile which is a combination of html and ruby codes.
