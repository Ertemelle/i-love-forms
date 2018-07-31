Rails.application.routes.draw do
  get '/', to: 'users#new', as: 'new_user'
  post '/create', to: 'users#create', as: 'user_create'

end
