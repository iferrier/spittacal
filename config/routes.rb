Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  get 'profile', to: 'profiles#user_profile'
  resources :buildings, only: [:index, :new, :create, :show] do
    resources :flats
    resources :users
  end
end
