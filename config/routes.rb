Rails.application.routes.draw do

  get '/inventory' => 'inventories#index'
  get '/inventory/new' => 'inventories#new'
  post '/inventory/new' => 'inventories#create'

  get '/inventory/:id' => 'inventories#show'

  get '/products/new' => 'products#new'
  post '/products' => 'products#create'


end
