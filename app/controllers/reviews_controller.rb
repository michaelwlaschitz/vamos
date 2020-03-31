class ReviewsController < ApplicationController

def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    @review.save
      if @review.save
      redirect_to bookings_path
    else
      render 'projects/show'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
