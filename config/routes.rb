Rails.application.routes.draw do
  get 'products/index'
  get 'products/action'
  get 'products/view'
  resources :products, only: [:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
