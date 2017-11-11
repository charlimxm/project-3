class UsersController < ApplicationController
  def update
    @user = current_user

    @restos = Restaurant.where("user_id=#{@user.id}")
    @resto = Restaurant.find(@user.id)

    @dishes = Dish.where("restaurant_id=#{@resto.id}")
    @dish = Dish.find(@resto.id)

    respond_to do |f|
      if (@dish.save)
        f.html {redirect_to "", :notice => "Post has been saved successfully."}
      else
        f.html { redirect_to users_update_path(current_user), notice: "Error: Dish not updated!!"}
      end
    end
  end

  def update_dish_params
    params.require(:dish).permit(:name, :price, :photourl)
  end
end
