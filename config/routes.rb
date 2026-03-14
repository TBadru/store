Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resource :sign_up

  # Products routes
  resources :products do
    resources :subscribers, only: [ :create ]
    resource :unsubscribe, only: [ :new, :show ]
  end

  resources :wishlists do
    resources :wishlist_products, only: [ :update, :destroy ], module: :wishlists
  end

  # Root route for main app
  root "products#index"

  # Settings namespace
  namespace :settings do
    resource :email, only: [ :show, :update ]
    resource :password, only: [ :show, :update ]
    resource :profile, only: [ :show, :update ]
    resource :user, only: [ :show, :destroy ]

    root to: redirect("/settings/profile")
  end

  # Email confirmation namespace
  namespace :email do
    resources :confirmations, param: :token, only: [ :show ]
  end

  # Admin / Store namespace
  namespace :store do
    resources :products
    resources :users
    resources :wishlists
    resources :subscribers

    root to: redirect("/store/products")
  end
end
