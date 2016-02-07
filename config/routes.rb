Rails.application.routes.draw do
  resources :homepage, only: :index
  resources :contact, only: :index

  root 'homepage#index'
end
