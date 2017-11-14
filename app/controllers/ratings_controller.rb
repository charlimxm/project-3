class RatingsController < ApplicationController
  def create
if !current_user
    flash[:notice] = "Please login to vote"
    redirect_to new_user_session_path
else
    @check_user_voted = Rating.where("dish_id=#{params[:dish_id]}")
    @hasUserVoted =  @check_user_voted.find{ |dish| dish["user_id"] == current_user.id}
    if @hasUserVoted
      @invalid = true
        respond_to do |format|
          format.js
        end
  else
        @invalid = false
        @dish_id = params[:dish_id]
        @rating = params[:rating]
        @new_rating = Rating.new
        @new_rating.dish_id = params[:dish_id]
        @new_rating.user_id = current_user.id
        @new_rating.save
        respond_to do |format|
          format.js
        end
  end
  end
end

  def top
  @all_dishes = Dish.all
  @resultsHash ={}
  @all_dishes.each do |dish|
    @resultsHash[dish] = dish.ratings.count
  end
  @dishesSortedByAsc = @resultsHash.sort_by { |name, age| age}.reverse
  end

  def search
    @dishes = Dish.search(params[:term])
    respond_to do |format|
      format.js
    end
  end
end
