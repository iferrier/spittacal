Rails.application.routes.draw do
  root to: 'pages#home'
  resource :buildings, only: [:new, :create]
end
