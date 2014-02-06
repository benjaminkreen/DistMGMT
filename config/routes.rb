DistMGMT::Application.routes.draw do
  root :to => 'static#index'
  devise_for :users
  resource :manager, :only => [:show]
  namespace :api do
    resources :distributors
    resources :accounts
    resources :sales
  end
end
