class RecipeReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @recipe_review =RecipeReview.new

    # recipe photo
    @recipe = @booking.recipe
    @recipe_photo = @recipe.photo.key
  end

  def create
      @booking = Booking.find(params[:booking_id])
      @recipe_review = RecipeReview.new(review_params)

      # link booking to recipe review
      @recipe_review.booking_id = @booking.id
      # link recipe to recipe review
      @recipe_review.recipe_id = @booking.recipe.id

      if @recipe_review.save
        redirect_to booking_path(@booking)
      else
        render :new
      end
  end


  private

  def review_params
    params.require(:recipe_review).permit(:ratng, :content)
  end






end
