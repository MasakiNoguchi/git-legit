Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  root to: 'pages#home'

  resources :users, only: [:show] do
    resources :projects, only: [:index]
  end

  resources :projects do
    resources :contributions, only: [:new, :create]
  end

  resources :knowledges, only: [:new, :create, :destroy]

  resources :contributions, only: [:edit, :update, :destroy, :show] do
    resources :requirements, only: [:new, :create]
    resources :interests, only: [:create]
  end

  resources :interests, only: [:destroy]

  resources :requirements, only: [:destroy]
end
