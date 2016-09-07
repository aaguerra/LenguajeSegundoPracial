class QuestionnairesController < ApplicationController
  def index
    @quiz = get_quiz_student
    @questions = Question.all
    @answers = Answer.all
  end

  def new
  end

  def show
  end
end
