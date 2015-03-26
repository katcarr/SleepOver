Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :users
  resources :bookings #:only => []
  resources :spaces do
    resources :photos
  end




end
