class ChefReviewsController < ApplicationController
  def create
      @booking = Booking.find(params[:booking_id])
      @chef = @booking.recipe.chef
      @chef_review = ChefReview.new(review_params)
      @chef_review.chef_id = @chef
      if @chef_review.save
        redirect_to order_path(@booking)
      else
        render 'bookings/:id/show'
      end
  end

  private

  def review_params
    params.require(:chef_review).permit(:ratng, :content)
  end
end
