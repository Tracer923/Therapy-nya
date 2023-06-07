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

  get 'happy_memories/new', to: 'happy_memories#new', as: 'new_happy_memory'
  post 'happy_memories', to: 'happy_memories#create', as: 'create_happy_memory'
  
  get 'negative_memories/new', to: 'negative_memories#new', as: 'new_negative_memory'
  post 'negative_memories', to: 'negative_memories#create', as: 'create_negative_memory'


end
