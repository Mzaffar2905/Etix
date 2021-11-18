class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def registration_successful
    @car_registration = CarRegistration.where(user: current_user).last
  end

  def declaration_successful
  end

  def fine_successful
  end

  def generalquerie_successful
  end

  def legislation
  end
end
