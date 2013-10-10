class AnswersController < ApplicationController

  def create
    @answer = Answer.new(params[:answer])
    @answer.save
    redirect_to question_path(@answer.question)
  end

end