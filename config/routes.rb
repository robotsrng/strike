Rails.application.routes.draw do
  resources :chits
  resources :stocks
  devise_for :users
  resources :customer_portals
  resources :supplier_parts
  resources :suppliers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
