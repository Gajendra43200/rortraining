Rails.application.routes.draw do
  # get 'users/index'
  # get 'clients/new'
  # post 'clients/createe'
  # get '/clients/show'
  get '/login', to: 'sessions#new1', as: 'login'
  get '/login_user', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  post '/login_in', to: 'sessions#login_in'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  resources :clients
  # post '/createe' ,to: "users#createe"
  # resources: clients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
