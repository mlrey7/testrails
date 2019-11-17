Rails.application.routes.draw do
  get 'welcome/index'
  get 'home/index'
  resources :users
  devise_for :users
  root to: 'welcome#index'
  namespace :user do
    root :to => "home#index"
  end
  resources :microposts, only: [:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
