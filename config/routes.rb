Rails.application.routes.draw do

  namespace :user do
    resources :skills
    get 'homepage/index'

    root 'homepage#index'
  end

  devise_for :users

  resources :homepage, only: :index

  root 'homepage#index'
end
