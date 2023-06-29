Rails.application.routes.draw do
  # get 'clients/new'
  # post 'clients/createe'
  # get '/clients/show'
  resources :clients

  # resources: client
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
