class RecipeReviewsController < ApplicationController
  before_action :set_booking
  
  def new
    @recipe_review =RecipeReview.new
    authorize @recipe_review

    # recipe photo
    @recipe = @booking.recipe
    @recipe_photo = @recipe.photo.key
  end

  def create
      @recipe_review = RecipeReview.new(review_params)

      # link booking to recipe review
      @recipe_review.booking_id = @booking.id
      # link recipe to recipe review
      @recipe_review.recipe_id = @booking.recipe.id
      authorize @recipe_review

      if @recipe_review.save
        redirect_to booking_path(@booking)
      else
        flash[:alert] = "Something went wrong."
        render :new
      end
  end

  private

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def review_params
    params.require(:recipe_review).permit(:rating, :content)
  end
end
