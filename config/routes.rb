Rails.application.routes.draw do
  get 'restaurants/search_results'

  root 'ratings#index'

  put "verify", to: "users#admin_check"
  get "verify", to: "users#admin_check"
  get 'admin_console', to: 'users#admin_console'
  get 'search_results', to: 'ratings#search_results'

  get 'users/update', to: 'users#update_details'

  put 'restaurants/search', to: 'restaurants#search'
  put 'ratings/search', to: 'ratings#search'

  get 'topdishes', to: 'ratings#top'
  get 'dishes/scrape', to: 'dishes#scrape'
  post 'mass_delete', to: 'dishes#mass_delete'
  post 'mass_update', to: 'dishes#mass_update'
  post 'mass_price_update', to: 'dishes#mass_price_update'

  resources :ratings
  resources :users
  resources :dishes
  resources :restaurants
  resources :reviews, only: [:new, :create]

  devise_for :users, path: '', path_names: {
    sign_in: 'login', sign_out: 'logout',
    sign_up: 'register'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
