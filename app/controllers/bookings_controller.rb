class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save!
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

    private

  def booking_params
    params.require(:booking).permit(:name, :date, :beginning_date, :ending_date)
  end
end
