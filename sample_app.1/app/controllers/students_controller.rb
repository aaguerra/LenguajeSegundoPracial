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
    bandera = true
    @student = Student.new(name: params[:student][:name], quiz_id: @quiz_student)
    begin
      student_quiz_id = Student.find_by(quiz_id: @student.quiz_id, name: @student.name)
      if @student.name.empty?
        bandera = false
        respond_to do |format|
          format.html { redirect_to '/students/new', notice: 'No hay nombre'+@student.name }
        end
      elsif student_quiz_id.name.eql? @student.name and student_quiz_id.quiz_id.eql? @quiz_student
        bandera = false
        respond_to do |format|
          format.html { redirect_to '/students/new', notice: 'Mismo nombre' }
        end
      end
    rescue

    end
    if bandera
      @student.save
        respond_to do |format|
          format.html { redirect_to '/questionnaires', notice: 'Haga su cuestionario'}
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
