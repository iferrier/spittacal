Rails.application.routes.draw do
  default_url_options :host => "localhost"
  root to: 'pages#home'
  devise_for :users, controllers: { invitations: 'users/invitations' }
  get 'profile', to: 'profiles#user_profile'
  get 'a-profile', to: 'profiles#admin_profile'
  get 'hct-profile', to: 'profiles#housecaretaker_profile'
  resources :buildings, only: [:index, :new, :create, :show, :destroy] do
    resources :flats
    resources :users
  end
end
