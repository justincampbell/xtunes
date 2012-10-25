Xtunes::Application.routes.draw do

  resources :posts
  resources :songs
  resources :artists
  resources :albums
  resources :genres
  resources :purchases
  resources :users


  resources :home do
    get 'song'
  end



  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'


end
