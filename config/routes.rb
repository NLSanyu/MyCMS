Rails.application.routes.draw do

  get 'public/index'
  get 'public/show'
  get 'admin_users/index'
  get 'admin_users/new'
  get 'admin_users/edit'
  get 'admin_users/delete'
  root 'subjects#index'

  get 'admin', :to => 'auth#menu'
  get 'auth/menu'
  get 'auth/login'
  post 'auth/attempt_login'
  get 'auth/logout'

  resources :admin_users, :except => [:show] do
    member do
      get :delete
    end
  end
  
  resources :subjects do
    member do
      get :delete
    end
  end

  resources :pages do
    member do
      get :delete
    end
  end

  resources :sections do
    member do
      get :delete
    end
  end
end
