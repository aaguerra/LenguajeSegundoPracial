class QuestionnairesController < ApplicationController
  def index
    @response = Response.new
    @quiz = get_quiz_student
    @questions = Question.where("not exists(select * from answers as r inner join "+
    "responses as u on r.id=u.answer_id where u.student_id="+get_student_id.to_s+" and questions.id=r.question_id) "+
    "and questions.quiz_id="+get_quiz_student.to_s)
    begin
        if @questions != nil
          @answers = Answer.where("answers.question_id="+(@questions.first).id.to_s)
          @question=@questions.first
        end
        @student_id_local = get_student_id
    rescue
      redirect_to '/estudiante/terminado'
    end
  end

  def new
  end

  def show
  end
end
