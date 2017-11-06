class RestaurantController < ApplicationController
  def index
      @resto = Restaurant.all
  end

  def show

  end
end
