Rails.application.routes.draw do
  root 'search#index'
  get '/search', to: "search#index"
  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]

  namespace :api do 
    namespace :v1 do 
      resources :items, only: [:index, :show, :destroy]
      get "/items/new", to: "items#new"
      post "/items", to: "items#create"
    end
  end
end
