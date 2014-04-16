CloudBnb::Application.routes.draw do
  devise_for :users
  root :to => "main#index", via: :get
end
