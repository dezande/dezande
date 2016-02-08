Rails.application.routes.draw do

  # menu top
  resources :homepage, only: :index
  resources :skills, only: :index
  resources :contact, only: :index

  root 'homepage#index'
end
