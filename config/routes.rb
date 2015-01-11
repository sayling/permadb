Permadb::Application.routes.draw do

  resources :animals

  root to: 'home#index'
  get '/home', to: 'home#splash_page'

  resources :plants

  devise_for :users
  resources :users

end
