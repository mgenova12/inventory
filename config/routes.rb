Rails.application.routes.draw do

  root :to => 'stores#index'

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}

  resources :users, except: :create
  post 'create_user' => 'users#create', as: :create_user
  
  namespace :dover do
    get '/inventory' => 'inventories#index'
    get '/inventory/new' => 'inventories#new'
    post '/inventory/new' => 'inventories#create'
    get '/inventory/:id' => 'inventories#show'
    get '/inventory/:id/tuesday' => 'inventories#tuesday'
    get '/inventory/:id/thursday' => 'inventories#thursday'

    get '/products' => 'products#index'
    get '/products/new' => 'products#new'
    post '/products' => 'products#create'
    get '/products/:id/edit' => 'products#edit'
    patch '/products/:id' => 'products#update'
    delete '/products/:id' => 'products#destroy'
  end

  namespace :trappe do 
    get '/inventory' => 'inventories#index'
    get '/inventory/new' => 'inventories#new'
    post '/inventory/new' => 'inventories#create'
    get '/inventory/:id' => 'inventories#show'
    get '/inventory/:id/tuesday' => 'inventories#tuesday'
    get '/inventory/:id/thursday' => 'inventories#thursday'

    get '/products' => 'products#index'
    get '/products/new' => 'products#new'
    post '/products' => 'products#create'
    get '/products/:id/edit' => 'products#edit'
    patch '/products/:id' => 'products#update'
    delete '/products/:id' => 'products#destroy'    
  end


  
end
