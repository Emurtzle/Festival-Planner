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

  get '/logout' => 'sessions#destroy'

  post "/festivals/:festival_id/stages/:stage_id/edit" => 'stages#edit'

  post "/festivals/:festival_id/stages/:stage_id" => 'schedules#add'
  post "/bands/:id" => 'schedules#bands_add'

  patch "festival/:id/stages/:id" => 'stages#update'

  delete "/schedules/:id" => 'schedules#destroy'

  delete "/appointments/:id" => 'appointments#destroy'

  delete "stages/:id" => 'schedules#destroy'
end

 # post "/festivals/1/stages/1?url=%2Fschedules%3Fmethod%3Dadd"
