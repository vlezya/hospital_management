Rails.application.routes.draw do
  root "home#index"
  
  resources :categories
  
  devise_for :doctors
  resources :doctors do
    resources :appointments
  end
  
  devise_for :users
  resources :users
end
