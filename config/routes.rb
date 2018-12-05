Rails.application.routes.draw do
  
  resources :band_musicians
  resources :musician_instruments
  resources :instruments
  resources :bands
  resources :musicians

  root 'users#home'

  # user management
  get "/signup", to: 'users#new', as: 'signup'
  post "/signup", to: 'users#create'
  get "/users/:id", to: 'users#show', as: 'user'

  # sessions management
  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  post '/logout', to: 'sessions#destroy', as: 'logout'

end
