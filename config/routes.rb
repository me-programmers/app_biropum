AppBiropum::Application.routes.draw do
  resources :importtodbs do
    get 'import_todb'
  end


  resources :db_jmlh_pddks

  resources :posts do
    member do
      get :download
    end
  end

  get "home/kontakkami"

  authenticated :user do
    root :to => 'home#index'
  end
  
  root :to => "home#index"
  devise_for :users
  resources :users
end