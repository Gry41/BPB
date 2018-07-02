Rails.application.routes.draw do
  resources :facilities_rents_relationships
  resources :locations
  resources :rents
  resources :services
  resources :languages
  resources :facilities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
