Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
    resources :conversations, only: [ :index, :show ] do
     resources :messages, only: :create
    end
  resources :pages, only: [:index, :show]
  resources :runners, only: [:index, :show]
  resources :request, only: [:new, :create, :destroy]
  resources :events, only: [:new, :create]
  resource :profile, only: [:edit, :update, :show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

