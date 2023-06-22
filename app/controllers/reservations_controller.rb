class ReservationsController < ApplicationController
  # def show
  #   @reservation = Reservation.find(params[:id])
  # end

  def new
    @reservation = Reservation.new
    @super_power = SuperPower.find(params[:id])
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user_id = current_user.id
    @reservation.super_power_id = params[:super_power_id]
    @reservation.save
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(reservation_params)
    redirect_to reservation_path(@reservation)
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy(reservation_params)
    redirect_to reservation_path, status: :see_other
  end

  private

  def reservation_params
    params.require(:reservation).permit(:name, :date, :time, :user_id, :superpower_id)
  end
end
