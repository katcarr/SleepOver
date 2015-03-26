Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :users
  resources :spaces do
    resources :photos
  end

end
