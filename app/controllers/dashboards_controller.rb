class DashboardsController < ApplicationController
  def show
    @user = current_user
    if @user.is_analyst?
    # @fines = Fine.where.not payment_done: true
    # @declarations = Declaration.where.not declaration_approved: true
    # @declarations_approved = Declaration.where.not payment_done: true
    # @car_registrations = CarRegistration.where.not payment_done: true
    # @general_questions = GeneralQuestion.all


    @car_registrations = CarRegistration.where.not registration_approved: true
    @declarations = Declaration.where.not declaration_approved: true
    @fines = Fine.all
    @general_questions = GeneralQuestion.all
    else render :index
    end
  end

  def index
    @user = current_user
    @car_registrations = CarRegistration.where(user_id == current_user)
  end
end
