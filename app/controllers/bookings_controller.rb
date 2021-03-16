class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :set_recipe, only: [:create, :new]

  def index
    @bookings = policy_scope(Booking)
    @next_booking = current_user.bookings[0]
    @past_bookings = current_user.bookings[1..-1]
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


    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: @recipe.name,
        images: [@recipe.photo.key],
        amount: @recipe.price_cents,
        currency: 'aud',
        quantity: 1
      }],
      success_url: bookings_url,
      cancel_url: bookings_url
    )


    if @booking.save
      @booking.update(checkout_session_id: session.id)
      redirect_to new_booking_checkout_session_path(@booking)
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
