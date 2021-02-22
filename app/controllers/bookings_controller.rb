class BookingsController < ApplicationController
  def index
  end

  def edit
  end

  def show
    # find booking
    @booking = Booking.find(params[:id])
    @chef_review = ChefReview.new
    @recipe_review =RecipeReview.new

    # booking chef name
    @chef_name = "#{@booking.recipe.chef.user.first_name + " " + @booking.recipe.chef.user.last_name}"
    # chef photo
    @chef_photo = @booking.recipe.chef.user.photo.key
  end

  def update
  end

  def destroy
  end

  def create
  end

  def new
  end
end
