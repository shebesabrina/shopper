Rails.application.routes.draw do
  get 'products/index'
  # get 'categories/index'
  # get 'categories/show'

  root :to => "categories#index"

  resources :categories do
    resources :products
  end
end
