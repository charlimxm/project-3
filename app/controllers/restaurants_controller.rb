class RestaurantsController < ApplicationController
  def index
     @resto = Restaurant.all
 end

 def show

 end


 def searchResults
   @resto = Restaurant.find(params[:id])
 end
end
