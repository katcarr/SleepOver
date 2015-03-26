Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :users, :only => [:show]
  resources :spaces do
    resources :photos, :except => [:show, :index, :edit, :update]
    resources :bookings, :except => [:index, :edit, :update]
  end




end
