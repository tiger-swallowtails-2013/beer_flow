class QuestionsController < ApplicationController
  def create
    @question = Question.new(params[:question])
    @question.save
    redirect_to new_question_path
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end

  def new
    @question = Question.new
  end

  def index
    @questions = Question.all
  end
end
