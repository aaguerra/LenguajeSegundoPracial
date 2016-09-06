class QuizzesController < ApplicationController
# Metodos para ver
  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find(params[:id])
  end
#

#Creacion de articulos
  def new  # solo crea el articulo pero no es persistente
    @quiz = Quiz.new
  end

  def create
=begin    @quiz =current_user.Quiz.new(quiz_params)
    if @quiz.save
      redirect_to @quiz
    else
      render :new
    end
=end
    @quiz = Quiz.new(description: params[:quiz][:description], pin: params[:quiz][:pin])
    if @quiz.save
      redirect_to @quiz
    else
      render :new
    end
  end


end
