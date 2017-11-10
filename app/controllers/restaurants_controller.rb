class RestaurantsController < ApplicationController
  def index
  end

  def show
    @resto = Restaurant.find(params[:id])
    @menu = Dish.where("restaurant_id=#{@resto.id}")
  end

  def search_results
  end
end
