class CarRegistrationsController < ApplicationController

  def index
    @car_registrations = CarRegistration.all
  end

  def edit
    @car_registration = CarRegistration.find(params[:id])
  end

  def update
    @car_registration = CarRegistration.find(params[:id])
    @car_registration.update(car_registration_params)
  end

 def set_random_number
  random_number = rand(10000..99999)
 end


  def validation
    @car_registration = CarRegistration.find(params[:id])
  end

  def new
    @car_registration = CarRegistration.new
    @user = current_user
  end

  def create
    @car_registration = CarRegistration.new(car_registration_params)
    @car_registration.user = current_user
    @request_number = set_random_number
    @car_registration.request_number = @request_number
    if @car_registration.save
      redirect_to registration_successful_path(@car_registration)
    else
      render :new
    end
  end

  def validate
    @car_registration = CarRegistration.find(params[:id])
    @car_registration.registration_approved = "Validate"
    @car_registration.save!
    redirect_to dashboard_analyst_path
  end

  def reject
    @car_registration = CarRegistration.find(params[:id])
    @car_registration.registration_approved = "Rejected"
    @car_registration.save!
    redirect_to dashboard_analyst_path
  end

  private

  def car_registration_params
    params.require(:car_registration).permit(:car_make, :car_model, :chassis_number, :engine_number, :engine_capacity, :numeric_plate, :payment_done?)
  end
end
