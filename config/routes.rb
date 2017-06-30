Rails.application.routes.draw do

  #product routes
  get '/' => 'products#index'
  get '/products' => 'products#index'

  get '/products/new'=> 'products#new'
  post '/products' => 'products#create'

  get '/products/:id' => 'products#show'

  get '/products/:id/edit' => 'products#edit'
  patch '/products/:id' => 'products#update'

  delete '/products/:id' => 'products#destroy'

  get '/random' => 'products#random'


  #image routes
  get '/products/:product_id/images/new' => 'images#new'
  post '/products/:product_id/images' => 'images#create'
  delete '/images/:id' => 'images#destroy'


  # user routes
  get '/signup' => 'users#new'
  post '/users' => 'users#create'


  #session routes
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  #order routes
  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'

  
  #carted product routes
  get '/carted_products' => 'carted_products#index'

  post '/carted_products' => 'carted_products#create'
  delete '/carted_products/:id' => 'carted_products#destroy'
  
end
