Rainforest::Application.routes.draw do
  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"
  get "users/new"
  get "users/create"
  resources :products
  root :to => 'products#index'

  resources :users, :only => [:new, :create]

  resources :sessions, :only => [:new, :create, :destroy]
end
