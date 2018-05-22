Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  root to: 'pages#home'
  resources :projects
end
