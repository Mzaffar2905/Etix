class GeneralQueriesController < ApplicationController

  def index
    @general_queries = GeneralQuery.all
  end

  def edit
    @general_querie = GeneralQuery.find(params[:id])
  end

  def update
    @general_querie = GeneralQuery.find(params[:id])
    @general_querie.update(generalquery_params)
  end

  def show
    @general_querie = GeneralQuery.find(params[:id])
  end

  def new
    @general_querie = GeneralQuery.new
  end

  def create
    @general_querie = GeneralQuery.new(generalquery_params)
    if @general_querie.save
      redirect_to generalquerie_successfull_path
    else
      render :new
    end
  end

   private

  def generalquery_params
    params.require(:general_query).permit(:issue)
  end
end
