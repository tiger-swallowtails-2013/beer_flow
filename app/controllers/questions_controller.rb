class QuestionsController < ApplicationController
  def create
    @question = Question.new(params[:question])
    @question.save
    redirect_to question_path(@question)
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
