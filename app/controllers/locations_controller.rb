class LocationsController < ApplicationController
  before_action :authenticate_user
  
  def current
    render json: current_user
  end

  def create
    location = Location.new user_params
  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:location).permit(:name,:email,:password,:studio,:studio_url,:location)
  end
end
