class QuizzesController < ApplicationController
# Metodos para ver
  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find(params[:id])
    #ApplicationController.set_quiz(5)
    @var = set_quiz(@quiz.id)
  end
#

#Creacion de articulos
  def new  # solo crea el articulo pero no es persistente
    @quiz = Quiz.new
  end

  def create
    prng1 = rand(100000..999999)
    @quiz =current_user.quizzes.new(description: params[:quiz][:description], pin: prng1)
    if @quiz.save
      redirect_to '/quizzes/'+ @quiz.id.to_s
    else
      render :new
    end
  end


end
