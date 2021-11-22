
class GeneralQuestionsController < ApplicationController

  def index
    @general_questions = GeneralQuestion.all
  end

  def edit
    @general_question = GeneralQuestion.find(params[:id])
  end

  def update
    @general_question = GeneralQuestion.find(params[:id])
    @general_question.update(generalquestion_params)
  end

  def show
    @general_question = GeneralQuestion.find(params[:id])
  end

  def set_random_number
    random_number = rand(10000..99999)
  end

  def new
    @general_question = GeneralQuestion.new
  end

  def create
      @general_question = GeneralQuestion.new(generalquestion_params)
      @request_number = set_random_number
      @general_question.request_number = @request_number
      @general_question.user = current_user
    if @general_question.save
      redirect_to generalquery_successful_path
    else
      render :new
    end
  end

  def validate
    @general_question = GeneralQuestion.find(params[:id])
    @general_question.question_approved = "Validate"
    @general_question.save!
    redirect_to dashboard_analyst_path
  end

  def reject
    @general_question = GeneralQuestion.find(params[:id])
    @general_question.question_approved = "Rejected"
    @general_question.save!
    redirect_to dashboard_analyst_path
  end

   private

  def generalquestion_params
    params.require(:general_question).permit(:issue)
  end
end
