Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resource :sign_up

  resources :products do
    resources :subscribers, only: [ :create ]
    resource :unsubscribe, only: [ :new, :show ]  # ✅ Fixed line
  end

  # Defines the root path route ("/")
  root "products#index"

  namespace :settings do
  resource :email, only: [ :show, :update ]
  resource :password, only: [ :show, :update ]
  resource :profile, only: [ :show, :update ]
  resource :user, only: [ :show, :destroy ]

  root to: redirect("/settings/profile")
end

namespace :email do
  resources :confirmations, param: :token, only: [ :show ]
end

# Admins Only
namespace :store do
    resources :products
    resources :users

    root to: redirect("/store/products")
end
end
