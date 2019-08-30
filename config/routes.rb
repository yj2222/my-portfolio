Rails.application.routes.draw do
  resources :study_outputs
  devise_for :users
  root 'portfolios#index'
  resources :portfolios do
  collection do
    get 'produce_school'
  end
end
  namespace :api do
    resources :images, only: :index, defaults: { format: 'json' }
  end
end
