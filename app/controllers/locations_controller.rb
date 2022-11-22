class LocationsController < ApplicationController
  def index
    locations = Location.all
    @locations = []
    locations.each do |element|
      unless element.user == current_user
        @locations << element
      end
    end
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    @location.user_id = current_user.id
    @location.category = "'kids party', 'student party', 'wedding', 'bal', 'birthday'"
    if @location.save
      redirect_to location_path(@location)
    else
      render 'new'
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    @location.update(location_params)
    redirect_to locartions_path()
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_path, status: :see_other
  end

  private

  def location_params
    params.require(:location).permit(:title, :address, :category)
  end
end
