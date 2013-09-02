Crossfit::Application.routes.draw do

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get "master/index"

  resources :users do
    resources :wods
  end
  resources :sessions

  root 'master#index'
end
