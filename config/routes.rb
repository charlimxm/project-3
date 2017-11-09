Rails.application.routes.draw do


  devise_for :users
  # root 'restaurants#index'

  # rresources :restaurant, only: [:index,:show]

  # get 'restaurants/:id', to: 'restaurants#searchResults'


  # resources :restaurants

  # resources :customers do

      # resources :bookings
  # end
  # resources :bookings, only: [:index,:show]
  #
  # devise_for :customers, path: "", path_names: {
  #     sign_in: 'login', sign_out: 'logout',
  #     sign_up: 'register'
  #   }


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
