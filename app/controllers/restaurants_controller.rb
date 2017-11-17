class RestaurantsController < ApplicationController
  def index
    @resto = Restaurant.all.sort
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

  def update
    @resto = Restaurant.find(params[:id])
    @resto.update_attributes(res_params)
    if params[:restaurant][:user_id] == ""
    flash[:alert] = "Restaurant was successfully updated!"
    redirect_to restaurant_path(params[:id])
  else
    @resto.update_attribute(:user_id, params[:restaurant][:user_id])
    @user = User.find(params[:restaurant][:user_id])
    @user.update_attribute(:owner, true)
    flash[:alert] = "Restaurant was successfully updated!"
    redirect_to restaurant_path(params[:id])
  end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.user_id != false
      @user = User.find(@restaurant.user_id)
      @user.update_attribute(:owner, false)
    end
    @restaurant.destroy
    flash[:alert] = "Restaurant was successfully deleted!"
    redirect_to root_path
  end

  def res_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :user_id)
  end
end
