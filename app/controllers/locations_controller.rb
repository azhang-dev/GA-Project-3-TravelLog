class LocationsController < ApplicationController
  before_action :authenticate_user
  

  def create
    location = Location.new location_params

    if params[:location][:images].present?
      params[:location][:images].each do |image|
        req = Cloudinary::Uploader.upload(image)
        location.images << req["public_id"]
      end
    end
    location.save

  end

  def show
    location = Location.find(params[:id])
  end

  def edit

  end

  def update
    location = Location.find(params[:id])
    if params[:location][:images].present?
      params[:location][:images].each do |image|
        req = Cloudinary::Uploader.upload(image)
        location.images << req["public_id"]
      end
    end
    location.update_attributes(location_params)
    location.save
  end

  def destroy
    Location.destroy params[:id]
  end

  private

  def location_params
    params.require(:location).permit(:name,:email,:password,:studio,:studio_url,:location)
  end

end
