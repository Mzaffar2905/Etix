class DashboardsController < ApplicationController
  def dashboard_analyst
    @user = current_user
    if @user.is_analyst?
    # @fines = Fine.where.not payment_done: true
    # @declarations = Declaration.where.not declaration_approved: true
    # @declarations_approved = Declaration.where.not payment_done: true
    # @car_registrations = CarRegistration.where.not payment_done: true
    # @general_questions = GeneralQuestion.all

    @car_registrations = CarRegistration.where registration_approved: "pending"
    @declarations = Declaration.where declaration_approved: "pending"
    @fines = Fine.where fine_approved: "pending"
    @general_questions = GeneralQuestion.where question_approved: "pending"
    else
    render :dashboard_analyst
    end
  end

  def dashboard_user
    @user = current_user
    # @car_registrations = CarRegistration.where(user_id == current_user)
  end
end
