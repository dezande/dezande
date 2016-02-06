Rails.application.routes.draw do
  resources :homepage

    root 'homepage#index'
end
