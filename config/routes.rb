Rails.application.routes.draw do
  devise_for :users
  root 'public_recipes#index'

  resources :recipes, only: [:index, :new, :show, :create, :destroy] do
    resources :recipe_foods, only: [:create, :destroy]
    resources :inventory, only: [:create, :destroy]
  end
  
  resources :foods, only: [:index, :new, :create, :destroy]
  resources :recipe_foods, only: %i[edit update destroy create]
  resources :inventory, only: [:create, :destroy]
  get '/inventories', to: 'inventories#index'
  post '/inventories/create', to: 'inventories#create'
  post '/inventories/destroy', to: 'inventories#destroy'
  post 'inventories/:inventory_id/add', to: 'inventories#add'
  post 'inventories/:inventory_id/remove/:inv_fod_id', to: 'inventories#remove'
  get 'inventories/:inventory_id', to: 'inventories#show'
  get '/inventories/compare/:recipes_id/:inventory_id', to: 'inventories#compare'
  get '/public_recipes', to: 'public_recipes#index'
  get 'general_shopping_list', to: 'general_shopping_lists#index', as: 'general_shopping_list'
  put '/recipes/:id/toggle_public', to: 'recipes#toggle_public', as: 'recipe_toggle_public'
end
