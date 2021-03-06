Rails.application.routes.draw do
	get 'admin' => 'admin#index'
	controller :sessions do
		get 'login' => :new
		post 'login' => :create
		delete 'logout' => :destroy
	end


	# get 'login' => 'sessions#new'
	# post 'login' => 'sessions#create'
	# delete 'logout' => 'sessions#destroy'

	get 'sessions/create'
	get 'sessions/destroy'
	resources :users
	resources :orders
	resources :line_items
	resources :carts
	root 'store#index', as: 'store_index'
	resources :products

	resources :products do
		get :who_bought, on: :member
	end
    
	resources :support_requests, only: [ :index, :update ]
  
	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
