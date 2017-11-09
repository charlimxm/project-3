class RestaurantsController < ApplicationController
  def index
    # date
    # time
    @allCuisines = Restaurant.distinct.pluck(:cuisine).sort
    @allAreas = Restaurant.distinct.pluck(:area).sort
    @allRestaurants1 = Restaurant.search(params[:cuisine], params[:area])#.all.sort { |a,b| a.date <=> b.date }

    @resto = Restaurant.all
  end

  def show
     @resto = Restaurant.all
  end

  def searchResults
     @resto = Restaurant.find(params[:id])
  end
end
