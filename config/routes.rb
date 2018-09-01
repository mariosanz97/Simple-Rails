Rails.application.routes.draw do

  #root 'home#index', as: 'home'
  root 'home#index', as: 'home'

#HOME
  get 'home/index'
  get 'home/show'
  get 'home/create'
  get 'home/edit'
  get 'home/update'
  get 'home/destroy'

#USER
  #Create new user-login (already logged in)
  get 'user/index', to: 'user#index', as: 'user_index'
  get 'user/new', to: 'user#new', as: 'user_create'
  get 'user/:id/edit', to: 'user#edit', as: 'edit_user'
  get 'user/:id/destroy', to: 'user#destroy', as: 'delete_user'
  post 'user/create', to: 'user#create'
  patch 'user/:id', to: 'user#update'

#DEVISE
  #Redirect sign_up to login
  devise_scope :user do
    get "users/sign_up", :to => "devise/sessions#new", :as => :sign_in
  end

  #Devise login, rename paths
  devise_for :users,:path_names => {
    :sign_in  => 'login',
    :sign_up  => 'sign_up' #User.create!({:email => "example@gmail.com", :password => "example" })
  }

#ADMIN
  #get 'admin/index', to: 'admin#index', as: 'admin_index'
  get 'admin/:id/edit', to: 'admin#edit', as: 'edit_admin'
  get 'admin/:id/destroy', to: 'admin#destroy', as: 'delete_admin'
  post 'admin', to: 'admin#create'
  patch 'admin/:id', to: 'admin#update'

#GALLERY
  get 'gallery/index', to: 'gallery#index', as: 'gallery'

end
