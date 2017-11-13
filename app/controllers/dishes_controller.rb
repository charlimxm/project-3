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

  def create
    @user = current_user
    @resto = Restaurant.where("user_id=#{@user.id}").first

    @dish = Dish.new(dish_params.merge({restaurant_id: @resto.id}))
    @dish.save
    flash[:success] = "Dish was successfully added!"
    redirect_to new_dish_path
  end

  def new
    @dish = Dish.new
    @user = current_user
    @resto = Restaurant.where("user_id=#{@user.id}").first
  end

  def update
    @dish = Dish.find(params[:id])
    @dish.update_attributes(dish_params)
    flash[:success] = "Dish was successfully updated!"
    redirect_to users_update_path
  end

  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy
    flash[:success] = "Dish was successfully deleted!"
    redirect_to users_update_path
  end

  private

  def dish_params
    params.require(:dish).permit(:name, :price, :discount, :photourl)
  end

  def dish_params
    params.require(:dish).permit(:name, :price, :discount, :photourl, :restaurant_id)
  end

end
