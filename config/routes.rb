Rails.application.routes.draw do
	#GET
	get 'admin/index', to: 'admin#index'
	get 'admin/new', to: 'admin#new'
	get 'admin/edit'
	get 'admin/update'
	get 'admin/destroy'
	#post
	post 'admin', to: 'admin#create'
end
