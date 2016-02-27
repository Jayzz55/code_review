Rails.application.routes.draw do
  resources :code_tests
  resources :submissions
  namespace :admin do
    resources :users
    root to: "users#index"
  end
  devise_for :users
end
