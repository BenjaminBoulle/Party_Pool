class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @location = Location.find(params[:location_id])
  end

  def create
    @booking = Booking.new(bookings_params)
    # booking user is the current_user
    @booking.user = current_user
    # booking location is the location from the params[:location_id]
    @location = Location.find(params[:location_id])
    @booking.location = @location
    if @booking.save
      redirect_to location_bookings_path(@booking.location)
    else
      render 'new'
    end
  end

  def index
    @bookings = Booking.where(user: current_user)
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date, :remark, :category)
  end
end
