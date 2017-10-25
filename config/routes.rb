Rails.application.routes.draw do

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :users
  resources :payments
  resources :reservations
  get 'travelagent/index'

  resources :cruises
  resources :cabins
  resources :ships
  resources :credit_cards
  resources :addresses
  resources :customers

  root 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
