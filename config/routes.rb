Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top', as: "top"
  get "homes/about" => "homes#about", as: "about"
  resources :books, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit]
end