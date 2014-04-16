CloudBnb::Application.routes.draw do
  root :to => "main#index", via: :get

  devise_for :users
  resources :users, only: [:show]
  resources :properties
end
