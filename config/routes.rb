Rails.application.routes.draw do
  get 'admin/users'
  get 'dashboard/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'inscriptions/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "football#index"

  get '/dashboard', to: 'dashboard#index'

  get '/admin/users', to: 'admin#users'

  get '/inscription', to: 'inscription#new'
  post '/inscription', to: 'inscription#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
