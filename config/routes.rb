Rails.application.routes.draw do
  devise_for :users

  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'home#index'
  get '/recipes/my_recipes', to: 'recipes#my_recipes'
  get '/foods', to: 'foods#index'
  get '/inventories', to: 'inventories#index'
  get '/inventories', to: 'inventories#index'
  post '/inventories/create', to: 'inventories#create'
  post '/inventories/destroy', to: 'inventories#destroy'
  post 'inventories/:inventory_id/add', to: 'inventories#add'
  post 'inventories/:inventory_id/remove/:inv_fod_id', to: 'inventories#remove'
  get 'inventories/:inventory_id', to: 'inventories#show'
  get '/inventories/compare/:recipes_id/:inventory_id', to: 'inventories#compare'
  # Defines the root path route ("/")
  # root "articles#index"
end
