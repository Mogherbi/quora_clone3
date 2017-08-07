post '/questions/:question_id/answers' do

  if logged_in?
    @question = Question.find(params[:question_id])
    @answer = current_user.answers.new(params[:answer])
    @answer.question_id = @question.id
    if @answer.save
      # redirect to the question show page
      redirect "/questions/#{@question.id}"
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
