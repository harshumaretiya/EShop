Rails.application.routes.draw do
 
  resources :purchases
  devise_for :users

  resources :products

  resources :shops, only: [:index, :show]
  resources :carts
  resources :order_items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root to: "shops#index"
end
