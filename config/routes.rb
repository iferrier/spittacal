Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :buildings, only: [:index, :new, :create, :show] do
    resources :flats
    resources :users
  end
end
