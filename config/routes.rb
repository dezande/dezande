Rails.application.routes.draw do

  namespace :user do
    resources :skills
    get "/skills/toggle_view/:id" => "skills#toggle_view",
      :as => :skill_toggle_view
    get "/skills/toggle_priority/:id" => "skills#toggle_priority",
      :as => :skill_toggle_priority
    get 'homepage/index'
    root 'homepage#index'
  end

  devise_for :users

  resources :homepage, only: [:index, :create]

  root 'homepage#index'
end
