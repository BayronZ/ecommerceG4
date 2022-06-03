Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  get 'home/index'
  root to: "home#index"
  authenticate :admin do
    resources :products
    resources :categories
  end
  resources :products
  resources :categories

  resource :cart, only: [:show, :update]

  
end
