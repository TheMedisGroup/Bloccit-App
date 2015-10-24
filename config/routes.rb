Rails.application.routes.draw do
  resources :posts
  resources :question

  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
