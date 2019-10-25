Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers:{
    registrations: 'users/registrations'
  }
  root to: 'animals#index'
  resources :users, only: [:new, :show]
  resources :animals, only: [:index, :show]
  resources :types, only:[:index]
  resources :groups, only:[:index, :show]
end
