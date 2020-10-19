Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  resources :users
  resources :payments
  resources :reservations
  resources :credit_cards
  resources :addresses
  resources :customers
  resources :cruises
  resources :cabins
  resources :harbours
  resources :ships
  get 'travelagent/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#root 'travelagent#index'
  root 'sessions#new'
end
