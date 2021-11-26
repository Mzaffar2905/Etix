class DashboardsController < ApplicationController
  def dashboard_analyst
    @user = current_user
    if @user.is_analyst?
    # @fines = Fine.where.not payment_done: true
    # @declarations = Declaration.where.not declaration_approved: true
    # @declarations_approved = Declaration.where.not payment_done: true
    # @car_registrations = CarRegistration.where.not payment_done: true
    # @general_questions = GeneralQuestion.all

    @car_registrations = CarRegistration.where(registration_approved: "pending").order(created_at: :desc)
    @declarations = Declaration.where(declaration_approved: "pending").order(created_at: :desc)
    @fines = Fine.where(fine_approved: "pending").order(created_at: :desc)
    @general_questions =GeneralQuestion.where(question_approved: "pending").order(created_at: :desc)
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
      @car_registrations_validate = CarRegistration.where(registration_approved: "Validate", user: current_user)
      @declarations_validate = Declaration.joins(:car_registration).where("declarations.declaration_approved = ? AND car_registrations.user_id = ?", "Validate", current_user.id)
      @fines_validate = Fine.where(fine_approved: "Validate", user: current_user)
      @general_questions_validate = GeneralQuestion.where(question_approved: "Validate", user: current_user)


      @car_registrations_pending = CarRegistration.where(registration_approved: "pending", user: current_user)
      @declarations_pending = Declaration.joins(:car_registration).where("declarations.declaration_approved = ? AND car_registrations.user_id = ?", "pending", current_user.id)
      @fines_pending = Fine.where(fine_approved: "pending", user: current_user)
      @general_questions_pending = GeneralQuestion.where(question_approved: "pending", user: current_user)

      @car_registrations_reject = CarRegistration.where(registration_approved: "Rejected", user: current_user)
      @declarations_reject = Declaration.joins(:car_registration).where("declarations.declaration_approved = ? AND car_registrations.user_id = ?", "Rejected", current_user.id)
      @fines_reject = Fine.where(fine_approved: "Rejected", user: current_user)
      @general_questions_reject = GeneralQuestion.where(question_approved: "Rejected", user: current_user)
    else
      redirect_to root_path
    end
  end
end
