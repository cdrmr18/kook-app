class ChefReviewsController < ApplicationController
  def create
      @restaurant = Restaurant.find(params[:restaurant_id])
      @review = Review.new(review_params)
      @review.restaurant = @restaurant
      if @review.save
        redirect_to restaurant_path(@restaurant)
      else
        render 'orders/show'
      end
  end

  def new
  end
end
