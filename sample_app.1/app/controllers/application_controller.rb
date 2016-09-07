class ApplicationController < ActionController::Base
   @@var = 5
   @@error = 0
  protect_from_forgery with: :exception
  def set_quiz(n_quiz)
    @@var = n_quiz
  end

  def get_quiz
    @@var
  end

  def get_error
    @@error
  end

  def set_error(i_error)
    @@error =i_error
  end
end
