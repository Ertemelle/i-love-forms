Rails.application.routes.draw do
  get '/', to: 'users#new', as: 'new_user'
  post '/create', to: 'users#create', as: 'user_create'
  get '/users/:id', to: 'users#show', as: 'show'
end
