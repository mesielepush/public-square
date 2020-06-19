# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  resources :posts
  post '/post_new', to: 'posts#create'
  get '/post_show', to: 'posts#show'
  get '/likes_update', to: 'likes#update'
  get '/user_show', to: 'users#show'
  get '/post_index', to: 'posts#index'
  get '/new_listening', to: 'listenings#new'
  get '/show_followers', to: 'listenings#show_followers'
  get '/show_following', to: 'listenings#show'
  get '/follower_destroy', to: 'listenings#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
