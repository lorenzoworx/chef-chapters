Rails.application.routes.draw do
  devise_for :users, controllers: { confirmations: 'confirmations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: 'recipes#index'
  
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
    get 'general_shopping_list', to: 'general_shopping_lists#index', as: 'general_shopping_list'
    get '/my_recipes', to: 'recipes#index', as: 'my_recipes'
    get '/foods', to: 'foods#index'
    post '/foods/create', to: 'foods#create'
    post '/foods/destroy', to: 'foods#destroy'
    get '/inventories', to: 'inventories#index'
    get '/public_recipes', to: 'public_recipes#index'
  end


