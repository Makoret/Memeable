Rails.application.routes.draw do
  # resources :users
  get '/my_profile', to: 'users#show'
  resources :memes
  get '/category', to: 'home#memes_by_category'
  get '/popular', to: 'home#memes_by_popularity'
  devise_for :users
  root to: 'home#index'
end
