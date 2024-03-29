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
    if params[:reject_general_question]
      @general_question.question_approved = "Rejected"
    else
      @general_question.question_approved = "Validate"
    end
    @general_question.save!
    redirect_to dashboard_analyst_path
  end

  def validation
    @general_question = GeneralQuestion.find(params[:id])
  end

  def set_random_number
    random_number = rand(10000..99999)
  end

  def new
    @general_question = GeneralQuestion.new
  end

  def show
    @general_question = GeneralQuestion.find(params[:id])
    @user = current_user
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

  # def validate
  # end

  private

  def generalquestion_params
    params.require(:general_question).permit(:issue, :answer)
  end
end
