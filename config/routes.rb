Rails.application.routes.draw do
  root 'items#index'

  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]

  namespace :api do 
    namespace :v1 do 
      get "/items", to: "items#index"
      get "/items/:id", to: "items#show"
      get "/items/new", to: "items#new"
      post "/items", to: "items#create"
      delete "/items/:id", to: "items#delete"
    end
  end
end
