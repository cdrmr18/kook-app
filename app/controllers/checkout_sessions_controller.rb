class CheckoutSessionsController < ApplicationController

def create

  recipe = Recipe.find(params[:recipe_id])
  checkout = Checkout


  session = Stripe::Checkout::Session.create({
    payment_method_types: ['card'],
    line_items: [{
      price_data: {
        unit_amount: 2000,
        currency: 'aud',
        product_data: {
          name: 'Stubborn Attachments',
          images: ['https://i.imgur.com/EHyR2nP.png'],
        },
      },
      quantity: 1,
    }],
    mode: 'payment',
    success_url: YOUR_DOMAIN + '/success.html',
    cancel_url: YOUR_DOMAIN + '/cancel.html',
  })
  {
    id: session.id
  }.to_json
end

def new

  @booking = Booking.find(params[:booking_id])
  authorize @booking, policy_class: CheckoutSessionPolicy
end

end
