class FinesController < ApplicationController
  def index
   @fines = Fine.all
  end

  def update
    @fine = Fine.find(params[:id])
    @fine.update(fine_params)
  end

  def edit
    @fine = Fine.find(params[:id])
  end

  def set_random_number
    random_number = rand(10000..99999)
  end

  def new
    @fine = Fine.new
  end

  def show
    @fine = Fine.find(params[:id])
    @user = current_user
  end

  def validation
    @fine = Fine.find(params[:id])
  end

  def create
     @fine = Fine.new(fine_params)
     @request_number = set_random_number
     @fine.request_number = @request_number
     @fine.user = current_user
    if @fine.save
      redirect_to fine_successful_path
    else
      render :new
    end
  end
  def validate
    @fine = Fine.find(params[:id])
    @fine.fine_approved = "Validate"
    @fine.save!
    redirect_to dashboard_analyst_path
  end

  def reject
    @fine = Fine.find(params[:id])
    @fine.fine_approved = "Rejected"
    @fine.save!
    redirect_to dashboard_analyst_path
  end

private

  def fine_params
    params.require(:fine).permit(:fineticket, :registration_number, :payment_done?)
  end
end
