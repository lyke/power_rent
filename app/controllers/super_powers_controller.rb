class SuperPowersController < ApplicationController
  def index
    @super_powers = SuperPower.all
  end

  def show
    @super_power = SuperPower.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
