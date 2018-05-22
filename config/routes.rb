Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  root to: 'pages#home'

  resources :projects do
    resources :contributions, only: [:new, :create]
  end
  resources :contributions, only: [:edit, :update, :destroy, :show]
end
