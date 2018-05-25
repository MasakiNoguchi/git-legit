Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  root to: 'pages#home'

  resources :users, only: [:show, :update] do
    resources :projects, only: [:index]
  end

  resources :projects do
    resources :contributions, only: [:new, :create]
  end

  resources :knowledges, only: [:new, :create, :destroy]

  get 'contributions/:id/remove_user', to: "contributions#remove_user", as: "remove_contribution_user"

  resources :contributions, only: [:edit, :update, :destroy, :show] do
    resources :requirements, only: [:new, :create]
    resources :interests, only: [:create]
  end

  resources :interests, only: [:destroy]

  resources :requirements, only: [:destroy]
end
