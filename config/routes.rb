Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :buildings, only: [:index, :new, :create, :show] do
    resources :flats
    resources :users
  end
end
