AppBiropum::Application.routes.draw do
  resources :db_jmlh_pddks
  resources :posts
  get "home/kontakkami"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end