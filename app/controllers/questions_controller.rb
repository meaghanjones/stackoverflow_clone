class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(params[:id])
    if @question.save
      redirect_to :root
    else
      render :new
    end
  end

  private
  def question_params
    params.require(:question).permit(:text)
  end
end
