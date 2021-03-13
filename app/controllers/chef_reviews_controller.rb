class ChefReviewsController < ApplicationController
  before_action :set_booking

  def new
    @chef_review = ChefReview.new
    authorize @chef_review

    @chef = @booking.recipe.chef

    # booking chef name
    @chef_name = "#{@booking.recipe.chef.user.first_name + " " + @booking.recipe.chef.user.last_name}"
    # booking chef photo
    @chef_photo = @booking.recipe.chef.user.photo.key
  end

  def create
      @chef_review = ChefReview.new(chef_review_params)

      # linking book with chef review
      @chef_review.booking_id = @booking.id
      # linking chef to review
      @chef_review.chef_id = @booking.recipe.chef_id
      authorize @chef_review

      if @chef_review.save
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

  def chef_review_params
    params.require(:chef_review).permit(:rating, :content)
  end
end
