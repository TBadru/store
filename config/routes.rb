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
  resource :password, only: [ :show, :update ]
end

end
