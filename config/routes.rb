Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "homes/about" => "homes#about", as: 'about'

  resources :users

  resources :posts do
    resources :comments, only: [:create, :destroy]
    resources :likes, only: [:create, :destroy]
    collection do
      get 'confirm' # POST CONFIRMページのルートを追加
    end
  end

  # 仮
  resources :follows, only: [:create, :destroy]
  resources :notifications, only: [:index, :show]
  resources :reminders, except: [:index]
  
  resources :happy_memories, only: [:new, :create, :index, :show]
  # ネガティブという文言はのちに変更
  resources :negative_memories, only: [:new, :create, :index, :show]
end
