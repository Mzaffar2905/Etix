class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def registration_successful
    @car_registration = CarRegistration.where(user: current_user).last
  end

  def declaration_successful
    @user = current_user
    @car_registration = CarRegistration.where(user_id: @user).last
    @declaration = @car_registration.declarations.last
  end

  def fine_successful
    @fine = Fine.where(user: current_user).last
  end

  def generalquery_successful
    @general_question = GeneralQuestion.where(user: current_user).last
  end

  def legislation
  end
end
