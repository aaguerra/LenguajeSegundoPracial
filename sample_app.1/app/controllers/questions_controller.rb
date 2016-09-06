class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    #@answer = Answer.new(description: params[:answer][:question])
    @question = Question.new(description: params[:question][:description])
  #  @answer.save
    #@question.save
  end
end
