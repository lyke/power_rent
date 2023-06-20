class SuperPowersController < ApplicationController
  def index
    @super_powers = SuperPower.all
  end

  def show
    @super_power = SuperPower.find(params[:id])
  end

  def new
    @super_power = SuperPower.new
  end

  def create
    @super_power = SuperPower.new(super_power_params)
    @super_power.save!
    redirect_to super_power_path
  end

  def edit
    @super_power = SuperPower.find(params[:id])
  end

  def update
    @super_power = SuperPower.find(params[:id])
    @super_power.update(super_power_params)
  end

  def destroy
  end

  private

  def super_power_params
    params.require(:super_power).permit(:name, :description, :price, :poster_url)
  end
end
