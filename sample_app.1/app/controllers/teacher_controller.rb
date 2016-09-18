class TeacherController < ApplicationController
  def index
    @student = get_student_id
    @quiz = get_quiz_terminar
    @total = Question.find_by_sql("select * from questions where quiz_id = " + @quiz)
    @respuestas_quiz = Answer.find_by_sql("SELECT s.id,a.description,a.correct,r.answer_id,a.puntuation,s.id as st FROM students as s,responses as r, answers as a where s.quiz_id ="+@quiz+" and s.id = r.student_id and r.answer_id = a.id" )
  end

  def new
  end

  def show
  end
end
