Rails.application.routes.draw do
  resources :categories
  resources :appointments
  devise_for :doctors
  resources :doctors
  devise_for :users
  resources :users
  root "home#index"
end
