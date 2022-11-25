class ReviewsController < ApplicationController
  before_action :set_location, only: %i[new create]

  def new
    @location = Location.find(params[:location_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.location = Location.find(params[:location_id])
    if @review.save
      redirect_to location_path(@location)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to location_path(@review.location), status: :see_other
  end

  private

  def set_location
    @location = Location.find(params[:location_id])
  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
