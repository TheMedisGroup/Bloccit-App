Rails.application.routes.draw do

  get 'ratings/show'

  resources :topics do
    resources :posts, except: [:index]
  end

  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
  end
  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

  resources :advertisements
  resources :questions

  resources :labels, only: [:show]

  post 'users/confirm' => 'users#confirm'
  get 'about' => 'welcome#about'
  root to: 'welcome#index'
end
