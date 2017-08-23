Rails.application.routes.draw do
  resources :cruises
  resources :cabins
  resources :ships
  resources :credit_cards
  resources :addresses
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
