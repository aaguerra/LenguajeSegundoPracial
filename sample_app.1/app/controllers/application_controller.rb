class ApplicationController < ActionController::Base
   @@var = 5
   @@error = 0
   @@quiz_student = 0
   @@array_questions = []
   @@student_id = 0
   @@quiz_terminar = 0
  protect_from_forgery with: :exception

  def set_quiz_terminar(n_quiz)
    @@quiz_terminar =n_quiz
  end

  def get_quiz_terminar
    @@quiz_terminar
  end

  def set_student_id(n_quiz)
    @@student_id =n_quiz
  end

  def get_student_id
    @@student_id
  end

  def add_array_questions(n_quiz)
    @@array_questions << n_quiz
  end

  def get_array_questions
    @@array_questions
  end

  def set_quiz(n_quiz)
    @@var = n_quiz
  end

  def get_quiz
    @@var
  end

  def set_quiz_student(n_quiz)
    @@quiz_student = n_quiz
  end

  def get_quiz_student
    @@quiz_student
  end

  def get_error
    @@error
  end

  def set_error(i_error)
    @@error =i_error
  end
end
