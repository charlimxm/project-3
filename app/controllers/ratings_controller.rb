class RatingsController < ApplicationController
  def index
    @all_ratings = Rating.all

    @ratingHash = {}

    @all_ratings.each do |rating|
    if @ratingHash[rating.dish_id]
          @ratingHash[rating.dish_id] +=1

    else
      @ratingHash[rating.dish_id] = 1

    end
  end

  @dishesSortedByAsc = @ratingHash.sort_by { |name, age| age}.reverse

  @resultHash = {}
  @dishesSortedByAsc.each do |name,user|
    @resultHash[Dish.find(name)] = user
  end


  @dishes = if params[:term]
      Dish.where('name LIKE ?', "%#{params[:term]}%")
    else
      Dish.all
    end
  end

end
