Rails.application.routes.draw do
  devise_for :users
  resources :stock_parts
  resources :chits
  resources :customer_portals
  resources :supplier_parts
  resources :suppliers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
