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
    begin
      prng1 = rand(100000..999999)
      @quiz =current_user.quizzes.new(description: params[:quiz][:description], pin: prng1,
                                      active: true)
      if @quiz.save
        redirect_to '/quizzes/'+ @quiz.id.to_s
      else
        render :new
      end
    rescue
      @quiz = Quiz.find_by(pin: params[:quiz][:pin])
       logger.debug "Inicado en quiz"
       begin
           logger.debug @quiz.description
           if @quiz.active
             redirect_to '/students/new'
             set_quiz_student(@quiz.id)
           else
             respond_to do |format|
               format.html { redirect_to '/students', notice: 'No existe con ese codigo' }

             end
             #redirect_to '/'
           end
           set_error(0)
           @error = get_error
       rescue
            logger.debug "no existe el quiz"
            set_error(1)
            @error = get_error
            respond_to do |format|
              format.html { redirect_to '/students', notice: 'No existe con ese codigo' }
              format.json { render json: @quiz.errors, status: :unprocessable_entity }
            end
       end
    end
  end

  def edit
    @quiz = Quiz.find(params[:id])
    @var = set_quiz(@quiz.id)
  end

  def update
    @quiz = Quiz.find(params[:id])
    @quiz.update(description: params[:quiz][:description])
  end

  def destroy
    @quiz.destroy
  end

end
