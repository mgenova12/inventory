Rails.application.routes.draw do

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
