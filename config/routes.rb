Rails.application.routes.draw do
  resource :users, only: [:create]
  post "/api/create_user" => "users#signup"
  get "/api/users" => "users#all"

  post "/api/login" => "sessions#create"
  get "/api/auto_login" => "sessions#logged_in"
  get "/logged_in" => "sessions#self_check"
end 

