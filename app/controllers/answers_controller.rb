post '/answers' do

  if logged_in?

  @answer = current_user.answers.all(params[:answer])
  if @answer.save
    # redirect to the question show page
    redirect "/answers/#{@answer.id}"
  else
    redirect "/clinets/#{current_user.id}"
  end

else
  redirect "/"
end
end

# READ-show
get "/answers/:answer_id" do

  @answer = Answer.find(params[:answer_id])
  erb :"answers/show", layout: false
end

get "/answers" do
  erb :"answers/index"
end
