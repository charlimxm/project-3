class DishesController < ApplicationController
  def index
    @dishes = Dish.all
  end

  def show
    @dish = Dish.find(params[:id])
    @resto = Restaurant.find(@dish.restaurant_id)
    @all_ratings = Rating.all

    @ratingHash = {}

    @all_ratings.each do |rating|
    if @ratingHash[rating.dish_id]
          @ratingHash[rating.dish_id] +=1

    else
      @ratingHash[rating.dish_id] = 1

    end
  end
  @dishRating = @ratingHash[@dish.id]
  end
end
