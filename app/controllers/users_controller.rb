class UsersController < ApplicationController
  def update
    @user = current_user
    @resto = Restaurant.where("user_id=#{@user.id}").first
    @dishes = Dish.where("restaurant_id=#{@resto.id}")
  end

end
