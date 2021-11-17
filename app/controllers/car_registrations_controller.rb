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

  def show
    @car_registration = CarRegistration.find(params[:id])
  end

  def new
    @car_registration = CarRegistration.new
  end

  def create
    @car_registration = CarRegistration.new(car_registration_params)
    @car_registration.user = current_user
    if @car_registration.save
      redirect_to registration_successfull_path
    else
      render :new
    end
  end

  private

  def car_registration_params
    params.require(:car_registration).permit(:car_make, :car_model, :chassis_number, :engine_number, :engine_capacity, :numeric_plate, :payment_done?)
  end
end
