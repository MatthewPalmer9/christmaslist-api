Rails.application.routes.draw do
  resource :users, only: [:create]
  post "/api/create_user" => "users#create"
  get "/api/users" => "users#all"
  get "/api/auto_login", to: "users#auto_login"
end 

