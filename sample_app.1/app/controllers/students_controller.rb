class StudentsController < ApplicationController
  def index
    @quizzes = Quiz.all
    @quiz = Quiz.new
  end

  def show
    @students = Student.all
    @quiz_id = get_quiz
    @quizzes = Quiz.all
    @questions = Question.all
    @quiz = Quiz.find(@quiz_id)
    @answers = Answer.all
    @responses = Response.all
    @students_quiz = Student.find_by_sql("SELECT * FROM students where quiz_id ="+@quiz_id.to_s)
    @respuestas_quiz = Answer.find_by_sql("SELECT s.id,a.description,a.correct FROM students as s,responses as r, answers as a where s.quiz_id ="+@quiz_id.to_s+" and s.id = r.student_id and r.answer_id = a.id" )
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
          set_student_id = @student.id
          format.html { redirect_to '/estudiante/terminado', notice: 'Estudiante ya registrado' }
        end
      end
    rescue

    end
    if bandera
      @student.save
        set_student_id(@student.id)
        respond_to do |format|
          format.html { redirect_to '/respuestapregutna/'+@quiz_student.to_s+'/'+@student.id.to_s+'/', notice: 'Nuevo estudiante, comienze su cuestionario'}
        end
    end

  end

  def login

  end

  def todos

  end

  private
    def quiz_params
      params.require(:quiz).permit(:pin)
    end
end
