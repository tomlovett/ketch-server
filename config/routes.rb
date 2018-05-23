Rails.application.routes.draw do
  resources :games, only: [:create, :index, :show, :update]
  resources :players, only: [:create, :index, :show, :update, :destroy]
  resources :points, only: [:create, :index, :update]
  resources :stats, only: [:create]
  resources :teams, only: [:create, :index, :show, :update]
  resources :users, only: [:create, :show, :update]
end
