class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @quiz = get_quiz
  end

  def show
    @quiz = get_quiz
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
    @answer = Answer.new
    @answer2 = Answer.new
  end

  def create
    @quiz = get_quiz
    @question = Question.new(description: params[:question][:description],
                              answer_one: params[:question][:answer_one],
                              answer_two: params[:question][:answer_two],
                              answer_three: params[:question][:answer_three],
                              answer_four: params[:question][:answer_four],
                              correct: params[:question][:correct],
                              quiz_id: @quiz)
    if @question.save
      @answer = Answer.new(description: params[:question][:answer_one],
                          question_id: @question.id,
                          correct: ((params[:question][:correct]).to_i == 1 ? true : false))
      @answer.save
      @answer = Answer.new(description: params[:question][:answer_two],
                          question_id: @question.id,
                          correct: ((params[:question][:correct]).to_i == 2 ? true : false))
      @answer.save                          
      @answer = Answer.new(description: params[:question][:answer_three],
                          question_id: @question.id,
                          correct: ((params[:question][:correct]).to_i == 3 ? true : false))
      @answer.save                          
      @answer = Answer.new(description: params[:question][:answer_four],
                          question_id: @question.id,
                          correct: ((params[:question][:correct]).to_i == 4 ? true : false))     
      @answer.save                          
      redirect_to '/quizzes/' + @quiz.to_s
    else
    end
  end
end
