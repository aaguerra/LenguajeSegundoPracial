class ApplicationController < ActionController::Base
   @@var = 5
  protect_from_forgery with: :exception
  def set_quiz(n_quiz)
    @@var = n_quiz
  end

  def get_quiz
    @@var
  end
end
