Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  resources :conversations, only: [ :index, :show ] do
    resources :messages, only: :create
  end

  resources :pages, only: [:index, :show]
  get "/dashboard", to: 'pages#dashboard'
  resources :runners, only: [:index, :show, :edit, :update] do
    resources :requests, only: [:new, :create]
  end
  resources :requests, only: [:destroy]
  resources :events, only: [:new, :create]
  resources :requests do
    post 'approvals', to: 'requests#approve'
    post 'rejects', to: 'requests#reject'
  end

  resource :profile, only: [:edit, :update, :show]
end
