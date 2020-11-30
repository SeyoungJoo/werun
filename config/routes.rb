Rails.application.routes.draw do
  get 'events/new'
  get 'events/create'
  get 'messages/new'
  get 'messages/create'
  get 'requests/new'
  get 'requests/create'
  get 'requests/update'
  get 'tracks/index'
  get 'tracks/show'
  get 'tracks/new'
  get 'tracks/create'
  get 'runners/index'
  get 'runners/show'
  get 'runners/edit'
  get 'runners/update'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
