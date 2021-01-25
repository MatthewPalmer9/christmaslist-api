Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/users', to: 'users#create'
      post '/users/:id/list', to: 'lists#get_list'
      post '/users/:id/list/add', to: 'listitems#create'
      post '/login', to: 'auth#create'
      get '/current_session', to: 'auth#show'
    end
  end 
end 

