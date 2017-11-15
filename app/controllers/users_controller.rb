class UsersController < ApplicationController
  def update_details
    @user = current_user
    @resto = Restaurant.where("user_id=#{@user.id}").first
    @dishes = Dish.where("restaurant_id=#{@resto.id}")
  end

  def admin_console
    if !user_signed_in?
      redirect_to new_user_session_path
    elsif !current_user.admin
      redirect_to verify_path
    else
      @dishes = Dish.all
      @restaurants = Restaurant.all
      @users = User.all.sort_by(&:id)
    end
  end

  def admin_check
    @user = User.find(current_user.id)
    if params[:adminCode] == 'adminTest'
      @user.update_attribute(:admin, true)
      redirect_to admin_console_path
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    redirect_to admin_console_path
  end

  def user_params
    params.require(:user).permit(:name, :photourl, :email, :owner)
  end
end
