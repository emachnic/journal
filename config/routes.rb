Rails.application.routes.draw do
  resources :user_sessions

  get 'login', to: 'user_sessions#new', as: :login
  get 'logout', to: 'user_sessions#destroy', as: :logout
  resources :users

  resources :entries
  root 'entries#index'
end
