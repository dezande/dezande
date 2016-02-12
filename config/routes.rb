Rails.application.routes.draw do
  namespace :user do
    get 'homepage/index'
    root 'homepage#index'
  end

  devise_for :users
  
  resources :homepage, only: :index

  root 'homepage#index'
end
