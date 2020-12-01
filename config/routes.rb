Rails.application.routes.draw do
  # get 'users/edit'
  # get 'users/update'
  # get 'events/new'
  # get 'events/create'
  # get 'messages/new'
  # get 'messages/create'
  # get 'requests/new'
  # get 'requests/create'
  # get 'requests/update'
  # get 'tracks/index'
  # get 'tracks/show'
  # get 'tracks/new'
  # get 'tracks/create'
  # get 'runners/index'
  # get 'runners/show'
  # get 'runners/edit'
  # get 'runners/update'

  devise_for :users
  root to: 'pages#home'
  resources :pages, only: [:index, :show]
  resources :runners, only: [:index, :show]
  resources :request, only: [:new, :create, :destroy]
  resources :messages, only: [:new, :create]
  resources :events, only: [:new, :create]
  resource :profile, only: [:edit, :update, :show]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

