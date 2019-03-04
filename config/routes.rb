Rails.application.routes.draw do
  resources :appointments
  resources :schedules
  resources :festivals
  resources :stages
  resources :bands
  resources :users
  resources :organizers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
