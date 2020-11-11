Rails.application.routes.draw do
  get 'restaurants', to: 'restaurants#index'
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants/new', to: 'restaurants#new'
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
end
