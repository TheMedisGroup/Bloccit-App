class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @questions = Question.count
    puts @question
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      flash[:notice] = "Question was saved."
      redirect_to @question
    else
      flash[:error] = "There was an error saving the question. Please try again."
      render :new
    end
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update_attributes(question_params)
      flash[:noteice] = "Question was updated."
      redirect_to @question
    else
      flash[:error] = "There was an error saving the question. Please try again."
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])

    if @question.destroy
      flash[:notice] = "\"#{Question.title}\" was deleted successfully."
      redirect_to questions_path
    else
      flash[:error] = "There was an error deleting the question."
      render :show
    end
  end
end

  private

  def question_params
    params.require(:question).permit(:title, :body, :resolved)
  end
