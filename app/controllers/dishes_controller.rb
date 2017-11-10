class DishesController < ApplicationController
  def index
  end

  def show
    @dish = Dish.find(params[:id])
    @resto = Restaurant.find(@dish.restaurant_id)
  end
end
