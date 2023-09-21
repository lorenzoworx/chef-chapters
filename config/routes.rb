Rails.application.routes.draw do
  devise_for :users

  get 'home/index'
  root 'home#index'

  get '/my_recipes', to: 'recipes#index', as: 'my_recipes'
  get '/foods', to: 'foods#index'
  post '/foods/destroy', to: 'foods#destroy'
  get '/inventories', to: 'inventories#index'
  get '/public_recipes', to: 'public_recipes#index'

  resources :recipes
  resources :foods, only: [:create, :destroy, :new]
  resources :users, only: [:show]
end
