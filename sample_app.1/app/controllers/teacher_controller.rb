class TeacherController < ApplicationController
  def index
    @quiz = get_quiz_terminar
    @total = Question.find_by_sql("select * from questions where quiz_id = " + get_quiz_terminar.to_s)
    @respuestas_quiz = Answer.find_by_sql("SELECT s.id,a.description,a.correct,r.answer_id FROM students as s,responses as r, answers as a where s.quiz_id ="+@quiz_id.to_s+" and s.id = r.student_id and r.answer_id = a.id" )
  end

  def new
  end

  def show
  end
end
