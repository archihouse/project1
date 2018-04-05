Rails.application.routes.draw do

  root :to => 'pages#home'

  resources :cities # set up standard CRUD route for cities
  resources :houses # set up standard CRUD route for houses
  resources :regions # set up standard CRUD route for regions

  resources :users, :only => [:new, :create]
  get '/login' => 'session#new'        # Sign in form
  post '/login' => 'session#create'    # Sign in action - Create a new session
  delete '/login' => 'session#destroy' # Sign out
  # See rails guide for routing, in particular nested routes
end
