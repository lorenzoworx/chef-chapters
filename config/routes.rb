Rails.application.routes.draw do
  devise_for :users

  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'home#index'
  get '/recipes/my_recipes', to: 'recipes#my_recipes'
  get '/foods', to: 'foods#index'
  get '/inventories', to: 'inventories#index'

  # Defines the root path route ("/")
  # root "articles#index"
end
