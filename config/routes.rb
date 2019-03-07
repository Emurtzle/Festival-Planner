Rails.application.routes.draw do
  resources :appointments
  resources :schedules

  resources :festivals do
    resources :stages
  end

  resources :bands
  resources :users, only: [:show, :new, :create, :destroy]
  resources :organizers, only: [:show, :new, :create, :destroy]

  get '/' => 'application#index'

  get '/login' => 'sessions#new'
  post '/user_login' => 'sessions#create_user'
  post '/organizer_login' => 'sessions#create_organizer'

  post '/logout' => 'sessions#destroy'

  post "/festivals/:festival_id/stages/:stage_id" => 'schedules#add'
end

 # post "/festivals/1/stages/1?url=%2Fschedules%3Fmethod%3Dadd"
