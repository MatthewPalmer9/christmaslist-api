Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/users', to: 'users#create'
      post '/users/public/list', to: 'users#get_user_list'
      post '/users/:id/list', to: 'lists#get_list'
      post '/users/list/add', to: 'listitems#create'
      post '/users/list/:id/show', to: 'listitems#show'
      post '/listitem/:id/update', to: 'listitems#update'
      delete '/listitem/:id/delete', to: 'listitems#destroy'
      post '/login', to: 'auth#create'
      get '/current_session', to: 'auth#show'
    end
  end 
end 

