class ResponsesController < ApplicationController
  def index
  end

  def new

  end

  def create
    @response = Response.new(answer_id: params[:response][:answer_id],student_id: params[:response][:estudiante_id])
    @response.save
    redirect_to '/respuestapregutna/'+(params[:response][:quiz_id]).to_s+'/'+(params[:response][:estudiante_id]).to_s+'/'
  end

  def show
  end
end
