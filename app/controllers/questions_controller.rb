# include WillPaginate::Sinatra::Helpers

post '/questions' do
  # byebug
  @question = current_user.questions.new(params[:question])
  if @question.save
    # redirect to the question show page

    # byebug
    redirect "/questions/#{@question.id}"
  else
    redirect "/clinet/#{current_user.id}"
  end


end

# READ-show
get "/questions/:question_id" do

  @question = Question.find(params[:question_id])
  erb :"questions/show", layout: false
end

get "/questions" do
  # byebug
  @questions = Question.all
  erb :"questions/index"
end
