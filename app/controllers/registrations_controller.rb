class RegistrationsController < ApplicationController

  def index
   @registrations = Registration.all
  end

  def edit
   @registration = Registration.find(params[:id])
  end

  def update
    @registration = Registration.find(params[:id])
    @registration.update(registration_params)
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @registration = Registration.new(registration_params)
    if @registration.save
      redirect_to registration_successfull_path
    else
      render :new
    end
  end

  private
  def registration_params
   params.require(:registration).permit(:car_make, :car_model, :chassis_number, :engine_number, :engine_capacity)
  end
end
