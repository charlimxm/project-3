Rails.application.routes.draw do
  get 'restaurant/index'

  # rresources :restaurant, only: [:index,:show]

  get 'restaurant/show'

  root 'restaurant#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
