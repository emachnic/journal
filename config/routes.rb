Rails.application.routes.draw do
  resources :entries
  resources :users, controller: 'users', only: 'create'
  root 'entries#index'
end
