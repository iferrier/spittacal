Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'users/delete'
  root to: 'pages#home'
  resources :buildings, only: [:index, :new, :create, :show] do
    resources :flats
  end
end
