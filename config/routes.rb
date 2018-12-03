Rails.application.routes.draw do
  resources :openings
  resources :band_musicians
  resources :musician_instruments
  resources :instruments
  resources :bands
  resources :musicians
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
