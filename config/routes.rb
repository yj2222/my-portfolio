Rails.application.routes.draw do
  resources :study_outputs
  devise_for :users
  root 'portfolios#index'
  resources :portfolios
  namespace :api do
    resources :images, only: :index, defaults: { format: 'json' }
  end
end
