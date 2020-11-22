Rails.application.routes.draw do
  #resources :gatherings, only: [:index, :create]
  resources :informations, only: [:index, :create, :show]
  resources :reactions, only: [:index, :create]
  resources :subscribers, only: [:create]

  root to: "pages#cover"

  get "*path" => redirect("/")
end
