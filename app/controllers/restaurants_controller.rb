class RestaurantsController < ApplicationController
  def index
    @resto = Restaurant.all
  end

  def show
    @resto = Restaurant.find(params[:id])
    @menu = Dish.where("restaurant_id=#{@resto.id}")
  end

  def search_results
  end
end
