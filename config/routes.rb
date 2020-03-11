Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  get 'profile', to: 'profiles#user_profile'
  get 'a-profile', to: 'profiles#admin_profile'
  get 'hct-profile', to: 'profiles#housecaretaker_profile'
  resources :buildings, only: [:index, :new, :create, :show] do
    resources :flats
    resources :users
  end
end
