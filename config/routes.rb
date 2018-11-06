Rails.application.routes.draw do
  get 'orders/new'
  get 'laundries/new'
  get 'laundries/edit'
  get 'laundries/index'
  get 'laundries/show'
  devise_for :users
  root to: 'pages#home'
  resources :laundries do
    resources :orders, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
