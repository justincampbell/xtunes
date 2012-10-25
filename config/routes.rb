Xtunes::Application.routes.draw do

  get "purchases/index"

  get "purchases/new"

  get "purchases/create"

  get "purchases/show"

  get "purchases/edit"

  get "purchases/update"

  get "purchases/destroy"

  get "users/index"

  get "users/new"

  get "users/create"

  get "users/show"

  get "users/edit"

  get "users/update"

  get "users/destroy"

  resources :posts
  resources :songs
  resources :artists
  resources :albums
  resources :genres


  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'


end
