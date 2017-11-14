class RestaurantsController < ApplicationController
  def index
    @restos = Restaurant.all
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
    flash[:success] = "Dish was successfully updated!"
    redirect_to restaurant_path(params[:id])

  end

  def res_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :user_id)
  end
end
