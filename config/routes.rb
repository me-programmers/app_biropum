AppBiropum::Application.routes.draw do
  resources :paintings


  resources :galleries


  resources :foto_galeris


  resources :importtodbs do
    get 'import_todb'
    get 'import_agama'
    get 'import_pekerjaan'
    get 'import_pendidikan'
    get 'import_statuskawin'
    get 'import_umur'
    get 'import_usiasekolah'
  end

  resources :db_jmlh_pddks
  resources :db_agamas
  resources :db_pekerjaans
  resources :db_pendidikans
  resources :db_statuskawins
  resources :db_umurs
  resources :db_usiasekolahs

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