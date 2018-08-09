Rails.application.routes.draw do
  get 'admin/index', to: 'admin#index'
  get 'admin/show'
  get 'admin/create'
  get 'admin/edit'
  get 'admin/update'
  get 'admin/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
