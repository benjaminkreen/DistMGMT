DistMGMT::Application.routes.draw do
  get "app/index"

  root :to => 'static#index'
  devise_for :users
  namespace :api do
    resources :distributors
    resources :accounts
    resources :sales
  end
end
