Rails.application.routes.draw do
  root 'restaurant#show'
  get 'restaurant/index'

  # rresources :restaurant, only: [:index,:show]

  get 'restaurant/show'
  get 'restaurant/:id', to: 'restaurant#searchResults'


  resources :restaurant

  devise_for :customers, path: "", path_names: {
      sign_in: 'login', sign_out: 'logout',
      sign_up: 'register'
    }


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
