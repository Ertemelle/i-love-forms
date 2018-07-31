Rails.application.routes.draw do
  get '/', to: 'users#new', as: 'new_user'
  post '/', to: 'users#create', as: 'user_create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
