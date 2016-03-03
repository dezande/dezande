Rails.application.routes.draw do

  namespace :templates do
    get 'pages/index'
    get 'pages/skills'
    get 'pages/skills_new'
  end

  namespace :user do
    resources :skills
    get "/skills/toggle_view/:id" => "skills#toggle_view", :as => :skill_toggle_view
    get "/skills/toggle_priority/:id" => "skills#toggle_priority", :as => :skill_toggle_priority
    # get 'homepage/index'
    root 'homepage#index'
  end

  devise_for :users

  resources :homepage, only: [:create]

  root 'homepage#index'
end
