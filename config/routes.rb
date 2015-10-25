Rails.application.routes.draw do

  resources :topics do
  resources :posts, except: [:index]
  resources :sponsored_post
  end

  get 'about' => 'welcome#about'
  root to: 'welcome#index'
end
