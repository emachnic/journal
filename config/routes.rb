Rails.application.routes.draw do
  get :login, to: 'sessions#new'
  get :logout, to: 'sessions#destroy'

  resources :sessions
  resources :users
  resources :entries
  resources :activations, only: [:edit]
  root 'entries#index'
end
