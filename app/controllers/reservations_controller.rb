class ReservationsController < ApplicationController

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @super_power = SuperPower.find(params[:super_power_id])
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @super_power = SuperPower.find(params[:super_power_id])
    @reservation.user_id = current_user.id
    # @super_power = SuperPower.find(params[:id])
    @reservation.super_power_id = params[:super_power_id]
    @reservation.price = @super_power.price
    @reservation.status = true
    @reservation.beginning_date = params[:reservation][:beginning_date]
    @reservation.ending_date = params[:reservation][:ending_date]

    if @reservation.save
      redirect_to super_power_reservation_path(@super_power, @reservation)
    else
      render :new, status: :unprocessable_entity
    end
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
    params.require(:reservation).permit(:beginning_date, :ending_date)
  end
end
