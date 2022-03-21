class LocationsController < ApplicationController
 
  before_action :authenticate_user
  


  def create
    location = Location.new location_params
    #Cloudinary Multi Images
    if params[:location][:images].present?
      params[:location][:images].each do |image|
        if location.images == nil
          location.images =[]
        end
        location.images << image 
      end
    end


  
    location.user_id = current_user.id
    location.save
    
    render json: location

  end

  # index of locations for every user
  def index
    render json: current_user.locations
  end

  # show specific location by id
  def show
    render json: Location.find(params[:id]) 
  end

  def update
    location = Location.find(params[:id])
    if params[:location][:images].present?
      params[:location][:images].each do |image|
        location.images << image
      end
    end
    location.update_attributes(location_params)
    location.save
  end

  # def gallery
  #   location
  # end

  def destroy
    Location.destroy params[:id]
  end

  private

  def location_params
    params.require(:location).permit(:name, :city, :country, :visited, :date_visited, :bucketlist, :images, :note, :lat, :lng)
  end

end
