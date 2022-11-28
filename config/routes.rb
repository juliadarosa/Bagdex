Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  devise_for :views
  resources :bagmons
  resources :logins
  resources :categories
  resources :battle
  root to: "bagmonsls#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
