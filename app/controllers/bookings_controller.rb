class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :set_recipe, only: [:create, :new]

  def index
    @bookings = policy_scope(Booking)
  end

  def show
  end

  def edit
  end

  def update
    @booking = Booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.recipe = @recipe
    authorize @booking

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def booking_params
    params.require(:booking).permit(:date, :start_time, :end_time)
  end
end
