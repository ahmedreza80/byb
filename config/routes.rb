Rails.application.routes.draw do
  resources :products
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :requests
  get 'welcome/index'
  root 'welcome#index'

  resources :gbooks
  resources :cbooks
  resources :sbooks
  resources :abooks


  get '/cart', to: 'order_items#index'
  resources :order_items, path: '/cart/items'
  get '/cart/checkout', to: 'orders#new', as: :checkout
  patch '/cart/checkout', to: 'orders#create'
   get '/cart/tracking', to: 'orders#show', as: :tracking


  get "welcome/academics"
  get "welcome/school"
  get "welcome/general"
  get "welcome/competetive"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
