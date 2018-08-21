Rails.application.routes.draw do
#GET
    get 'admin/index', to: 'admin#index'
    get 'admin/:id/edit', to: 'admin#edit', as: 'edit_admin'
    get 'admin/destroy'
    #create post 
    post 'admin', to: 'admin#create'
    #edit put
    patch 'admin/:id', to: 'admin#update'
end
