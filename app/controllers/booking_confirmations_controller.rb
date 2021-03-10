class BookingConfirmationsController < ApplicationController
  def new
    # @booking = Booking.find(params[:booking_id])
    @booking = Booking.find(params[:booking_id])
    authorize @booking, policy_class: BookingConfirmationPolicy
  end
end
