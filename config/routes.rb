Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  namespace :v1 do
    resources :books, only: [:index, :show]
    resources :rents, only: [:index, :create]
  end
end
