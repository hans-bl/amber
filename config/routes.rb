Rails.application.routes.draw do
  devise_for :users
  # Defines the root path route ("/")
  root to: "cycles#index"
  # Defines custom routes
  resources :cycles
  resources :models, only: [
    :show,
    :new,
    :create,
    :edit,
    :update,
    :destroy
  ]
  resources :brands, only: [
    :show,
    :new,
    :create,
    :edit,
    :update,
    :destroy
  ]
  resources :licenses, only: [
    :show,
    :new,
    :create,
    :edit,
    :update,
    :destroy
  ]
end
