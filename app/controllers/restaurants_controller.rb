class RestaurantsController < ApplicationController
  def index
    @resto = Restaurant.all
  end

  def show
    @resto = Restaurant.find(params[:id])
    @menu = Dish.where("restaurant_id=#{@resto.id}")

    @name = URI.encode(@resto.name)
    @address = URI.encode(@resto.address)
  end

  def search
    @resto = Restaurant.search(params[:term])
    respond_to do |format|
      format.js
    end
  end

end
