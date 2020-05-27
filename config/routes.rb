Rails.application.routes.draw do
  get 'likes/create'
  get 'likes/destroy'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
  post 'posts/create'

  resources :users
  resources :relationships, only: [:create, :destroy]
  resources :likes, only: [:create, :destroy]
end
