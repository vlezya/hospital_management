Rails.application.routes.draw do
  devise_for :doctors
  resources :doctors
  devise_for :users
  resources :users
  root "home#index"
end
