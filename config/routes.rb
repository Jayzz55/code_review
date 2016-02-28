Rails.application.routes.draw do
  resources :submissions
  namespace :admin do
    resources :users
    resources :code_tests
    resources :criteria
    root to: "code_tests#index"
  end
  devise_for :users
end
