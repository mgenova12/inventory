Rails.application.routes.draw do
  root :to => 'stores#index'

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}

  resources :users, except: :create
  post 'create_user' => 'users#create', as: :create_user
  
  namespace :dover do
    get '/inventory' => 'inventories#index'
    get '/inventory/new' => 'inventories#new'
    post '/inventory/new' => 'inventories#create'
    get '/inventory/:id/:order_day' => 'inventories#order_day'
    get '/inventory/:id/:order_day/all' => 'inventories#order_day_all'

    get '/products' => 'products#index'
    get '/products/new' => 'products#new'
    post '/products' => 'products#create'
    get '/products/:id/edit' => 'products#edit'
    patch '/products/:id' => 'products#update'
    delete '/products/:id' => 'products#destroy'
  end

  namespace :trappe do 
    get '/stores' => 'stores#index'

    get '/inventory' => 'inventories#index'
    get '/inventory/new' => 'inventories#new'
    post '/inventory/new' => 'inventories#create'
    get '/inventory/:id' => 'inventories#show'
    get '/inventory/:id/all' => 'inventories#show_all'

    get '/inventory/:id/:supplier' => 'inventories#supplier'

    get '/products' => 'products#index'
    get '/products/new' => 'products#new'
    post '/products' => 'products#create'
    get '/products/:id/edit' => 'products#edit'
    patch '/products/:id' => 'products#update'
    delete '/products/:id' => 'products#destroy'


    namespace :dover do 
      get '/sales' => 'sales#index'
      
      get '/sales/:id/:order_day/stock/new' => 'sales#stock'
      post '/sales/stock/new' => 'sales#create_stock'

      get '/sales/:id/:order_day/stock/review/new' => 'sales#new'
      post '/sales/stock/review/new' => 'sales#create'

      get '/sales/:id/:order_day' => 'sales#show'

    end

  end

  namespace :cambridge do 
    get '/inventory' => 'inventories#index'
    get '/inventory/new' => 'inventories#new'
    post '/inventory/new' => 'inventories#create'
    get '/inventory/:id' => 'inventories#show'
    get '/inventory/:id/all' => 'inventories#show_all'

    get '/inventory/:id/:supplier' => 'inventories#supplier'

    get '/products' => 'products#index'
    get '/products/new' => 'products#new'
    post '/products' => 'products#create'
    get '/products/:id/edit' => 'products#edit'
    patch '/products/:id' => 'products#update'
    delete '/products/:id' => 'products#destroy'    
  end

  namespace :bypass do 
    get '/inventory' => 'inventories#index'
    get '/inventory/new' => 'inventories#new'
    post '/inventory/new' => 'inventories#create'
    get '/inventory/:id' => 'inventories#show'
    get '/inventory/:id/all' => 'inventories#show_all'

    get '/inventory/:id/:supplier' => 'inventories#supplier'

    get '/products' => 'products#index'
    get '/products/new' => 'products#new'
    post '/products' => 'products#create'
    get '/products/:id/edit' => 'products#edit'
    patch '/products/:id' => 'products#update'
    delete '/products/:id' => 'products#destroy'    
  end


end
