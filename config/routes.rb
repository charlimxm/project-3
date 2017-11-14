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

  put "verify", to: "users#admin_check"
  get "verify", to: "users#admin_check"
  get 'admin_console', to: 'users#admin_console'
  get 'search_results', to: 'ratings#search_results'

  get 'users/update', to: 'users#update_details'

  put 'restaurants/search', to: 'restaurants#search'
  put 'ratings/search', to: 'ratings#search'

  get 'topdishes', to: 'ratings#top'

  resources :ratings
  resources :users
  resources :dishes
  resources :restaurants

  devise_for :users, path: "", path_names: {
    sign_in: 'login', sign_out: 'logout',
    sign_up: 'register'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
