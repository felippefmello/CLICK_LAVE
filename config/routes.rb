Rails.application.routes.draw do
  # namespace :laundry do
  #   get 'orders/index'
  # end
  devise_for :users
  root to: 'pages#home'
  resources :laundries do
    resources :orders, only: [:new, :create]
  end
  resources :orders, only: [:index, :show]

  namespace :laundry do
    resources :orders, only: [:index], as: "laundry_orders"
  end
end
