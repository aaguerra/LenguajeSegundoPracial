class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end

  def new
  end

  def show
  end

  def create
    @answer = Answer.new(description: params[:answer][:description],
                        question_id: params[:answer][:question_id]
                        correct: params[:answer][:correct])
    if @answer.save
    end
  end

end
