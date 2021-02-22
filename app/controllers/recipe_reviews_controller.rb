class RecipeReviewsController < ApplicationController
  def create
      @booking = Booking.find(params[:booking_id])
      @recipe = @booking.recipe
      @recipe_review = RecipeReview.new(review_params)
      @recipe_review.recipe_id = @recipe
      if @recipe_review.save
        redirect_to order_path(@booking)
      else
        render 'bookings/show'
      end
  end

  private

  def review_params
    params.require(:recipe_review).permit(:ratng, :content)
  end
end
