Rails.application.routes.draw do
  namespace :api do
    resources :products, only: [:index]
    resources :categories, only: [:index]
  end
end