Rails.application.routes.draw do

  get 'restaurants/index'

  get 'restaurants/show'

  get 'restaurants/search_results'

  get 'ratings/index'

  get 'dishes/index'

  get 'dishes/show'

  # Register

  # Sign in

  # User Profile

  # Owner Profile


  # Results (by dish or restaurant name)
    ## ratings: show
    ## /search_results

  # Add Rating (Picture uploading, and upvote and downvote)
    ## ratings: create
    ## /add_ratings

  # Add Restaurants
    ## restaurants: create
    ## /add_restaurants

  # Restaurant with ranking of its own dishes
    ## restaurants: index, show
    ## /restaurant_name

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
