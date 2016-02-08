Rails.application.routes.draw do
  resources :homepage, only: :index

  root 'homepage#index'
end
