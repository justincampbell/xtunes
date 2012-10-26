Xtunes::Application.routes.draw do

  resources :posts
  resources :artists
  resources :albums
  resources :genres
  resources :purchases
  resources :users


  resources :songs do
    resources :purchases
  end


  resources :home do
    get 'song'
  end

  root :to => 'home#index'

  resources :sessions
  get 'login' => 'sessions#new'


  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'


end
