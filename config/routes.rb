Rails.application.routes.draw do
  resources :categories
  root to: 'pages#home'

  devise_for :users

  resources :users, only: [:show]
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :events, except: [:destroy] do
    resources :registrations, only: [:create]
  end
  resources :photos, only: [:destroy]

  namespace :api do
   resources :events do
      resources :registrations, only: [:create]
   end
  end
end
