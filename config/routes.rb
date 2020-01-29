Rails.application.routes.draw do
  root to: 'pages#home'
  resources :buildings, only: [:index, :new, :create, :show] do
    resources :flats
  end
end
