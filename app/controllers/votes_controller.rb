class VotesController < ApplicationController

  def create
    p params
    vote = Vote.new(user_id: params[:user_id], answer_id: params[:answer_id])
    answer = Answer.find(params[:answer_id])
    vote.save
    redirect_to question_path(answer.question)
  end

end