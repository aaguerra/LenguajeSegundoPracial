class QuestionnairesController < ApplicationController
  def index
    @response = Response.new
    @quiz = params[:quiz]
    @student_id_local = params[:user_id]
    @questions = Question.where("not exists(select * from answers as r inner join "+
    "responses as u on r.id=u.answer_id where u.student_id="+@student_id_local.to_s+" and questions.id=r.question_id) "+
    "and questions.quiz_id="+@quiz.to_s)
    if @questions != nil
      @answers = Answer.where("answers.question_id="+(@questions.first).id.to_s)
      @question=@questions.first
    end
    
  end

  def new
  end

  def show
  end
end
