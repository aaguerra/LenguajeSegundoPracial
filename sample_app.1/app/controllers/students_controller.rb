class StudentsController < ApplicationController
  def index
    @quizzes = Quiz.all
  end

  def show

  end

  def new
    @quizzes = Quiz.all
    @quiz = Quiz.new
  end

  def create
  end

  def login

  end

  private
    def quiz_params
      params.require(:quiz).permit(:pin)
    end
end
