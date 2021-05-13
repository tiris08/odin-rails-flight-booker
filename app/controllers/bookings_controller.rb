class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    params[:tickets].to_i.times { @booking.passengers.build}
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking
    else
      render :new
    end
  end

  private
  def booking_params
     params.require(:booking).permit(:tickets, :flight_id, passengers_attributes:[:name, :email])
  end
end
