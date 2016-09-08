class ResponsesController < ApplicationController
  def index
  end

  def new

  end

  def create
    studiante = get_student_id
    @response = Response.new(answer_id: params[:response][:answer_id],student_id: studiante)
    @response.save
    redirect_to 'questionnaires/'
  end

  def show
  end
end
