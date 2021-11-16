class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def registration_successfull
  end

  def declaration_successfull
  end

  def fine_successfull
  end
end
