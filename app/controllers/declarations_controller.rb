class DeclarationsController < ApplicationController

  def index
    @declarations = Declaration.all
  end

  def edit
    @declaration = Declaration.find(params[:id])
  end

  def update
    @declaration = Declaration.find(params[:id])
    @declaration.update(declaration_params)
  end

  def new
    @user = current_user
    @declaration = Declaration.new
    @car_registration = CarRegistration.find_by(user_id: @user)
    @declaration.car_registration = @car_registration
  end

  def show
    @declaration = Declaration.find(params[:id])
  end

  def set_random_number
    random_number = rand(10000..99999)
  end


  def create
    @declaration = Declaration.new(declaration_params)
    @request_number = set_random_number
    @declaration.request_number = @request_number
    if @declaration.save
      redirect_to declaration_successful_path
    else
      render :new
    end
  end

  private

  def declaration_params
    params.require(:declaration).permit(:cof_number, :car_registration, :car_registration_id, :policy_insurance_number, :expiry_date, :declaration_approved, :payment_done?)
  end
end
