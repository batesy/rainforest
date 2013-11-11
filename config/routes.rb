Rainforest::Application.routes.draw do
  get "users/new"
  get "users/create"
  resources :products
  root :to => 'products#index'

  resources :users, :only => [:new, :create]
end
