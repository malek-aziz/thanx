Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :users,       only: [:show]
  resources :rewards,     only: [:index]
  resources :redemptions, only: [:index, :create]
end
