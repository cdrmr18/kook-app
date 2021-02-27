class BookingsController < ApplicationController
  def index
  end

  def edit
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.recipe = @recipe    
    # raise
    if @booking.save
      redirect_to @recipe 
    else
      render :new
    end
  end

  def new
    @booking = Booking.new
    @recipe = Recipe.find(params[:recipe_id])
  end
  
  private
  def booking_params
    params.require(:booking).permit(:date, :start_time, :end_time)
  end
  end