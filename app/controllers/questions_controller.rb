post '/questions' do
  @question = current_user.questions.new(params[:question])
  if @question.save
    # redirect to the question show page
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
