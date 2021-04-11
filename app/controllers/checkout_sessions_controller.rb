class CheckoutSessionsController < ApplicationController
 
def new
  @booking = Booking.find(params[:booking_id])
  authorize @booking, policy_class: CheckoutSessionPolicy
end

end
