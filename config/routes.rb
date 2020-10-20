Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#home"
  # resources :recipes
  resources :recipes
  get '/signup', to: 'chefs#new'
  resources :chefs, except: [:new]

  get '/login', to: 'sessions#new'
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"

  resources :ingredients, except: [:destroy]

  resources :recipes do
    resources :comments, only: [:create]
  end

  resources :recipes do
    resources :comments, only: [:create]
    member do 
      post 'like'
    end
  end  
  mount ActionCable.server => '/cable'

  get '/chat', to: 'chatrooms#show'
  resources :messages, only: [:create]
end
