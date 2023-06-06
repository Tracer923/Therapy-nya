Rails.application.routes.draw do

  devise_for :users

  root to: "homes#top"
  get "homes/about"=>"homes#about", as: 'about'

  resources :users, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :posts, except: [:index]
  resources :comments, only: [:create, :edit, :update, :destroy]
  resources :likes, only: [:create, :destroy]
  resources :follows, only: [:create, :destroy]
  resources :notifications, only: [:index, :show]
  resources :reminders, except: [:index]


end
