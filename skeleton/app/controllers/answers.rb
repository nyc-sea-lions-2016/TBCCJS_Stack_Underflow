post '/answers' do
  @answer = Answer.new(params[:answer])
  if @answer.save
    if request.xhr?
    else
      
      
    else
      @answer_errors = "Invalid Answer"
      erb :'/questions/show'
    end
  else
    if @answer.save
      redirect "/questions/#{@answer.question_id}"
    else
      @answer_errors = "Invalid Answer"
      erb :'/questions/show'
    end
  end
end
