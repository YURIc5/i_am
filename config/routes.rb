Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers:{
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  root to: 'animals#index'
  resources :users, only: [:new, :show]
  resources :animals, only: [:index, :show] do
    resources :favorites, only: [:create, :destroy]
  end
  resources :types, only:[:index]
  resources :groups, only:[:index, :show]
end
