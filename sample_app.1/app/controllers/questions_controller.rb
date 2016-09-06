class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @quiz = get_quiz
  end

  def show
    @quiz = get_quiz
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
    @answer = Answer.new
  end

  def create
    @quiz = get_quiz
    @question = Question.new(description: params[:question][:description], quiz_id: @quiz)
    @answer = Answer.new(description: params[:answer][:description], correct: params[:answer][:correct])
    if @question.save
      redirect_to '/quizzes/' + @quiz.to_s
    else
    end
  end
end
