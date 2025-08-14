class QuestionsController < ApplicationController
  before_action :move_to_index, except: [:index]

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = current_user.questions.build(question_params)
    if @question.save
      redirect_to root_path
    else
      logger.debug "Question save failed. Errors: #{@question.errors.full_messages.inspect}"
      render :new, status: :unprocessable_entity
    end
  end

  private
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def question_params
    params.require(:question).permit(:title, :text, :category_id, :deadline)
  end

end