Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "homes/about" => "homes#about", as: 'about'
  
  resources :users

  resources :posts do
    resources :comments, only: [:create, :edit, :update, :destroy]
    resources :likes, only: [:create, :destroy]
  end

  #仮
  resources :follows, only: [:create, :destroy]
  resources :notifications, only: [:index, :show]
  resources :reminders, except: [:index]
  
  resources :happy_memories, only: [:new, :create]
  #ネガティブという文言はのちに変更
  resources :negative_memories, only: [:new, :create]
end