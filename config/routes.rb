Rails.application.routes.draw do

  root 'admin#index', as: 'admin_index'
  devise_for :users,
  :path_names => {
    :sign_in  => 'login'
  }

  devise_scope :user do
    get "/sign_in" => "devise/sessions#new", as: "login"
  end

#GET
    #admin
    #get 'admin/index', to: 'admin#index', as: 'admin'
    get 'admin/:id/edit', to: 'admin#edit', as: 'edit_admin'
    get 'admin/:id/destroy', to: 'admin#destroy', as: 'delete_admin'
    #create post 
    post 'admin', to: 'admin#create'
    #edit patch
    patch 'admin/:id', to: 'admin#update'
    #gallery
    get 'gallery/index', to: 'gallery#index', as: 'gallery'
  end
