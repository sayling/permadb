Permadb::Application.routes.draw do

  resources :animals

  root to: "home#index"

  resources :plants

  devise_for :users
  resources :users

end
