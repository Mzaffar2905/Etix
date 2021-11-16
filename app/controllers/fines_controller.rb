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

  def new
    @fine = Fine.new
  end

  def show
    @fine = Fine.find(params[:id])
  end

  def create
     @fine = Fine.new(fine_params)
    if @fine.save
      redirect_to fine_successfull_path
    else
      render :new
  end
end

private

  def fine_params
    params.require(:fine).permit(:fineticket, :payment_done?)
  end
end
