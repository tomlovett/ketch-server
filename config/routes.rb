Rails.application.routes.draw do
  scope 'api' do
    resource :games, only: [:create, :index, :show, :update]
    resource :players, only: [:create, :index, :show, :update, :destroy]
    resource :points, only: [:create, :index, :update]
    resource :stats, only: [:create]
    resource :teams, only: [:create, :index, :show, :update]
    resource :users, only: [:create, :show, :update]
  end
end
