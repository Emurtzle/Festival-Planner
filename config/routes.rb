Rails.application.routes.draw do
  resources :appointments
  resources :schedules
  resources :festivals
  resources :stages
  resources :bands
  resources :users, only: [:show, :new, :create]
  resources :organizers

  get '/' => 'application#index'

  get '/login' => 'sessions#new'
  post '/user_login' => 'sessions#create_user'
  post '/organizer_login' => 'sessions#create_organizer'
end
