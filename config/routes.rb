Rails.application.routes.draw do
  devise_for :users, controllers:{
    registrations: 'users/registrations'
  }
  root to: 'animals#index'
  resources :users, only: [:new, :show]
end
