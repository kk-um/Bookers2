Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users
  resources :users, only: [:create, :show, :edit, :update, :index]
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  get 'home/top'
  get "home/about" => "homes#about"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
