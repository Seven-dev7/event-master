Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :products
  devise_for :users
  root to: "static_pages#landing_page"
  get "/user_information", to: "static_pages#user_information"
end
