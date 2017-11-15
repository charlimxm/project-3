class ReviewsController < ApplicationController
  def create
    @new_review = Review.new
    @new_review.feedback = params[:review][:feedback]
    @new_review.dish_id = params[:review][:dish_id]
    @new_review.user_id = current_user.id
    @new_review.created_on = Time.now.strftime("%Y-%m-%d %H:%M:%S")

    @new_review.save
    flash[:success] = "Review was successfully added!"
    redirect_back(fallback_location: root_path)
  end

  def new
    @new_review = Review.new
  end
end
