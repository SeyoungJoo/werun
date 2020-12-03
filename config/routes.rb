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
    resources :events, only: [:new, :create]
  end

  resources :requests, only: [:destroy]

  resources :requests do
    post 'approve', to: 'requests#approve'
    post 'reject', to: 'requests#reject'
  end

  resource :profile, only: [:edit, :update, :show]
end
