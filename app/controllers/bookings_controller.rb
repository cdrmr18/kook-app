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
  end

  def new
  end
end
