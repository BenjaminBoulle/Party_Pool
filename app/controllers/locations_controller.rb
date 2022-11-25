class LocationsController < ApplicationController
  def index
    @locations_user = Location.where(user: current_user)
    if params[:query].present?
      sql_query = "title ILIKE :query OR address ILIKE :query OR category ILIKE :query"
      @locations = Location.where(sql_query, query: "%#{params[:query]}%")
    else
      @locations = Location.where.not(user: current_user)
    end

    @markers = @locations.geocoded.map do |location|
      {
        lat: location.latitude,
        lng: location.longitude,
        info_window: render_to_string(partial: "info_window", locals: { location: location }),
        image_url: helpers.asset_url("balloon.png")
      }
    end
  end

  def show
    @location = Location.find(params[:id])
    @marker = [{ lat: @location.latitude, lng: @location.longitude }]
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    @location.user_id = current_user.id
    @location.category = "kids party, student party, wedding, bal, birthday"
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
    params.require(:location).permit(:title, :address, :category, photos: [])
  end
end
