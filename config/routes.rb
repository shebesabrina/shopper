Rails.application.routes.draw do
  get 'categories/index'
  # get 'categories/show'

  resources :categories do
    resources :products
  end
end
