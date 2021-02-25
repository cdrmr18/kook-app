class ChefReviewsController < ApplicationController
  def new
    @chef_review = ChefReview.new
    @booking = Booking.find(params[:booking_id])

    # booking chef name
    @chef_name = "#{@booking.recipe.chef.user.first_name + " " + @booking.recipe.chef.user.last_name}"
    # booking chef photo
    @chef_photo = @booking.recipe.chef.user.photo.key
  end

  def create
      @chef_review = ChefReview.new(chef_review_params)
      @booking = Booking.find(params[:booking_id])

      # linking book with chef review
      @chef_review.booking_id = @booking.id
      # linking chef to review
      @chef_review.chef_id = @booking.recipe.chef_id

      if @chef_review.save
        redirect_to booking_path(@booking)
      else
        render :new
      end
  end

  private

  def chef_review_params
    params.require(:chef_review).permit(:ratng, :content)
  end
end
