Rails.application.routes.draw do

  get 'restaurants/search_results'



  # Owner Profile


  # Add Rating (Picture uploading, and upvote and downvote)
    ## ratings: create
    ## /add_ratings

  # Add Restaurants
    ## restaurants: create
    ## /add_restaurants
  root 'ratings#index'

  get 'search_results', to: 'ratings#search_results'


  resources :ratings
  resources :dishes
  resources :restaurants

  devise_for :users, path: "", path_names: {
    sign_in: 'login', sign_out: 'logout',
    sign_up: 'register'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
