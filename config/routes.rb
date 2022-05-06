Rails.application.routes.draw do
  
  resources :orders, only: [:index, :create, :destroy]
  resources :drinks, only: [:index, :create, :destroy]
  resources :menus, only: [:index, :create, :show]
  resources :drinks, only: [:index, :create, :destroy]
  resources :users, only: [:index, :create]
  resources :sms_messages, only: [:create]
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
