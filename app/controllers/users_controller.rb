class UsersController < ApplicationController
  def update_details
    @dish = Dish.new
    @user = current_user
    @resto = Restaurant.where("user_id=#{@user.id}").first
    @dishes = Dish.where("restaurant_id=#{@resto.id}")

    @resultsHash = {}
    @dishes.each do |dish|
      @resultsHash[dish] = dish.ratings.count
    end
    @resto_total_ratings = 0
    @resultsHash.each do |key, value|
       @resto_total_ratings += value
    end

    @reviewsHash = {}
    @dishes.each do |dish|
      @reviewsHash[dish] = dish.reviews.count
    end
    @resto_total_reviews = 0
    @reviewsHash.each do |key, value|
       @resto_total_reviews += value
    end

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
