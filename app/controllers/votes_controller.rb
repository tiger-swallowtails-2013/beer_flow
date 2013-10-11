class VotesController < ApplicationController

  def create
    p params
    vote = Vote.new(user_id: params[:user_id], answer_id: params[:answer_id])
    # user = User.find(params[:user_id])
    answer = Answer.find(params[:answer_id])
    # user << vote
    # answer << vote
    if #validation
      vote.save
    end
    redirect_to question_path(answer.question)
  end

end