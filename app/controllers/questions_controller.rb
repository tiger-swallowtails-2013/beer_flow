class QuestionsController < ApplicationController
  def create
    @question = Question.new(params[:question])
    @question.save
    redirect_to new_question_path
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end
end
