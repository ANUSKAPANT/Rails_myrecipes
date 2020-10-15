Rails.application.routes.draw do
  get 'recipes/show'
  get 'recipes/index'
  get 'recipes/edit'
  get 'recipes/show'
  get 'recipes/index'
  get 'recipe/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#home"
  resources :recipes
end
