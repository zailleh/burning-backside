Rails.application.routes.draw do

  root to: 'flights#index'

  post '/flights/search' => 'flights#search'
  get '/flights/:from/:to' => 'flights#search'
  resources :reservations
  resources :users
  resources :flights
  resources :planes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
