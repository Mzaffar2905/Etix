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

  def dashboard_list_form
    @user = current_user
    if !@user.is_analyst?
      @car_registrations_validate = CarRegistration.where(registration_approved: "Validate")
      @declarations_validate = Declaration.where declaration_approved: "Validate"
      @fines_validate = Fine.where fine_approved: "Validate"
      @general_questions_validate = GeneralQuestion.where question_approved: "Validate"

      @car_registrations_pending = CarRegistration.where registration_approved: "pending"
      @declarations_pending = Declaration.where declaration_approved: "pending"
      @fines_pending = Fine.where fine_approved: "pending"
      @general_questions_pending = GeneralQuestion.where question_approved: "pending"

      @car_registrations_reject = CarRegistration.where registration_approved: "Rejected"
      @declarations_reject = Declaration.where declaration_approved: "Rejected"
      @fines_reject = Fine.where fine_approved: "Rejected"
      @general_questions_reject = GeneralQuestion.where question_approved: "Rejected"
    end
  end
end
