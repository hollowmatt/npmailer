Rails.application.routes.draw do
  root 'users#index'

  resources :users
  resources :email, only: [:new, :create]
 
end
