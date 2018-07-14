Rails.application.routes.draw do
  resources :tours
  resources :taxis
  resources :cartypes
  resources :locations
  resources :rents
  resources :services
  resources :languages
  resources :facilities
  post 'rents/query' => 'rents#query'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
