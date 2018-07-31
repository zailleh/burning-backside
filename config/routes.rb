Rails.application.routes.draw do

  root to: 'flights#index'

  post '/flights/search'   => 'flights#search'
  get '/flights/:from/:to' => 'flights#search'
  
  get   '/users/new'  => 'users#new'
  post  '/users/'     => 'users#create'
  get   '/login'      => 'users#login', as: "login"
  post  '/login'      => 'users#auth'
  get   '/logout'     => 'users#logout', as: "logout"
  
  resources :reservations
  resources :flights
  resources :planes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
