Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

namespace :api do
    get 'companies', to:'companies#index'
    get 'companies/:id', to:'companies#show'
    post 'companies', to:'companies#create'
    put 'companies', to:'companies#update'
    delete 'companies', to:'companies#destroy'
  end




end
