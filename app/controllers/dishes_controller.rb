class DishesController < ApplicationController

  def index
    @dishes = Dish.all
    @resultsHash ={}
    @dishes.each do |dish|
      @resultsHash[dish] = dish.ratings.count
    end
    @dishesSorted = @resultsHash.sort_by { |name, rating| rating}.reverse

  end

  def show
    @dish = Dish.find(params[:id])
    @resto = Restaurant.find(@dish.restaurant_id)
    @dishRating = @dish.ratings.count
  end

  def create
    @user = current_user
    @resto = Restaurant.where("user_id=#{@user.id}").first

    @dish = Dish.new
    @dish.name = params[:dish][:name]
    @dish.price = params[:dish][:price]
    @dish.restaurant_id = @resto.id
    @dish.discount = params[:dish][:discount]
    if !params[:dish][:photourl].present?
      @dish.photourl = "dishPic.png"
    else
      @dish.photourl = params[:dish][:photourl]
    end
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
    flash[:alert] = "Dish was successfully deleted!"
    redirect_to root_path
  end

  private

  def dish_params
    params.require(:dish).permit(:name, :price, :discount, :photourl)
  end


end
