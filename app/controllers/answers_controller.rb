class AnswersController < ApplicationController

  def create
    @answer = Answer.new(params[:answer])
    if @answer.save
      render :json => render_to_string(:partial => 'answer', :locals => {:answer => @answer}).to_json
     else
      redirect_to root_path
    end
  end

end