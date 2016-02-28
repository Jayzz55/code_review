Rails.application.routes.draw do
  resources :submissions, only: [:show]
  namespace :admin do
    resources :submissions
    resources :users
    resources :code_tests
    resources :criteria
    root to: "submissions#index"
  end
  devise_for :users
end
