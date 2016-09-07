class QuestionnairesController < ApplicationController
  def index
    @quiz = get_quiz_student
    @questions = Question.all
    @answers = Answer.all
    @array_preguntas = @@array_questions
    @student_id_local = get_student_id
  end

  def new
  end

  def show
  end
end
