class StudentsController < ApplicationController
  def index
    @quizzes = Quiz.all
    @quiz = Quiz.new
  end

  def show

  end

  def new
    @student = Student.new
    @quizzes = Quiz.all
    @quiz = Quiz.new
    @quiz_student = get_quiz_student
    quiz_student = get_quiz_student
    @quiz_u = Quiz.find(quiz_student)
  end

  def nuevo
      @student = Student.new
      quiz_student = get_quiz_student
      @quiz  = Quiz.find(quiz_student)
  end

  def create
    @quiz_student = get_quiz_student

    @student = Student.new(name: params[:student][:name], quiz_id: @quiz_student)

    if @student.save
        redirect_to '/estudiante/cuestionario'
        @st = Student.find(@student.id)
    else
        respond_to do |format|
          format.html { redirect_to '/students/new', notice: 'Ingrese el nombre' }
        end
    end
  end

  def login

  end

  private
    def quiz_params
      params.require(:quiz).permit(:pin)
    end
end
