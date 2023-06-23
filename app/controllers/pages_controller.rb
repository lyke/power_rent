class PagesController < ApplicationController
  def home
  end

  def dashboard
    @super_powers = SuperPower.all
  end
end
