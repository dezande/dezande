Rails.application.routes.draw do
  devise_for :users
  resources :homepage, only: :index

  root 'homepage#index'
end
