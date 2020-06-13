Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :users, only: [:index, :show]
  resources :posts, only: [:index,:new,:show,:create,:destroy] do
    resources :likes, only: [:create, :destroy]
  end
  
  end