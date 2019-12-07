Rails.application.routes.draw do
  root 'home#index'

  resources :users, only: [:new, :create]
  resources :movies, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'share', to: 'movies#new', as: 'share'
end
