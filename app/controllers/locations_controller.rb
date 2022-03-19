class LocationsController < ApplicationController
 
  before_action :authenticate_user
  
  # index of locations of a specific user(user_id)
  # def user_locations
  #   user = User.find params[:id]
  #   locations = user.locations
  #   render json: locations
  # end
  

  def create
    location = Location.new location_params

    # if params[:location][:images].present?
    #   params[:location][:images].each do |image|
    #     req = Cloudinary::Uploader.upload(image)
    #     location.images << req["public_id"]
    #   end
    # end
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
    params.require(:location).permit(:name, :city, :country, :visited, :date_visited, :bucketlist, :images, :note, :lat, :lng)
  end

end
