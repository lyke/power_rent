class SuperPowersController < ApplicationController
  def index
    if params['query'].present?
      @super_powers = SuperPower.global_search(params['query'])
    else
      @super_powers = SuperPower.all
    end
  end

  def show
    @super_power = SuperPower.find(params[:id])
    @reservation = Reservation.new
  end

  def new
    @super_power = SuperPower.new
  end

  def create
    @super_power = SuperPower.new(super_power_params)
    # Si une session est en cours
    @super_power.user = current_user
    # current_user
    # Sinon
    # Redirection vers la page de connexion
    # end
    @super_power.save!
    redirect_to super_powers_path
  end

  def edit
    @super_power = SuperPower.find(params[:id])
  end

  def update
    @super_power = SuperPower.find(params[:id])
    @super_power.update(super_power_params)
    redirect_to super_power_path(@super_power)
  end

  def destroy
    @super_power = SuperPower.find(params[:id])
    @super_power.destroy
    redirect_to super_power_path(@super_power), status: :see_other
  end

  private

  def super_power_params
    params.require(:super_power).permit(:name, :description, :price, :poster_url)
  end
end
